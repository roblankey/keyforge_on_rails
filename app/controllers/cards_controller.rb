class CardsController < ApplicationController
  jsonapi resource: CardResource
  strong_resource :card
  before_action :apply_strong_params, only: [:create, :update]

  def index
    @cards = Card.all

    render_jsonapi(@cards)
  end

  def show
    @card = jsonapi_scope(Card.where(id: params[:id]))
    raise JsonapiCompliable::Errors::RecordNotFound unless @card

    render_jsonapi(@card, scope: false)
  end

  def create
    @create, success = jsonapi_create.to_a

    if success
      render_jsonapi(@create, scope: false)
    else
      render_errors_for(@create)
    end
  end

  def update
    @card, success = jsonapi_update.to_a

    if success
      render_jsonapi(@card, scope: false)
    else
      render_errors_for(@card)
    end
  end

  def destroy
    @card, success = jsonapi_destroy.to_a

    if success
      render json: { meta: {} }
    else
      render_errors_for(@card)
    end
  end
end
