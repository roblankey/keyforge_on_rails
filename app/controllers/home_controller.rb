class HomeController < ActionController::Base
  def index
    render json: index_data.to_json
  end

  def index_data
    {
      data: {
        description: 'API for Fantasy Flight\'s Keyforge game'
      },
      links: {
        related: {
          archons: archons_url,
          houses: houses_url
        }
      },
      jsonapi: {
        version: '1.1'
      },
      meta: {
        copyright: "Copyright #{Date.today.year}",
        authors: [
          'roblankey',
          'nwise'
        ]
      }
    }
  end
end
