# This file creates the houses from the Call of the Archons set and adds an initial Archon

House.create([{ name: 'Brobnar' }, { name: 'Dis' }, { name: 'Logos' },
              { name: 'Mars' }, { name: 'Sanctum' }, { name: 'Shadows' },
              { name: 'Untamed' }])

Archon.create(name: 'V. Zent, the Harbor Inventor',
              set: 'Call of the Archons',
              house_one_id: House.find_by_name('Logos').id,
              house_two_id: House.find_by_name('Shadows').id,
              house_three_id: House.find_by_name('Untamed').id)

Card.create(name: 'Staunch Knight',
            body: 'Staunch Knight gains +2 power while it is on a flank.',
            image_url: '',
            card_type: 'Creature',
            house_id: House.find_by_name('Dis').id,
            archon_id: Archon.first.id,
            subtype_1: 'Human',
            subtype_2: 'Knight',
            maverick: true,
            flavor_text: '',
            bonus_aember: 0)
