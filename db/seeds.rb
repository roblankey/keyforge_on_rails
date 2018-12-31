# This file creates the houses from the Call of the Archons set and adds an initial Archon

House.create([{ name: 'Brobnar' }, { name: 'Dis' }, { name: 'Logos' },
              { name: 'Mars' }, { name: 'Sanctum' }, { name: 'Shadows' },
              { name: 'Untamed' }])

Archon.create(name: 'V. Zent, the Harbor Inventor',
              set: 'Call of the Archons',
              house_one_id: House.find_by_name('Logos').id,
              house_two_id: House.find_by_name('Shadows').id,
              house_three_id: House.find_by_name('Untamed').id)
