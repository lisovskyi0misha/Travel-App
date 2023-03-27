User.create(email: 'test@test', password: '123123', first_name: 'User', last_name: 'First', confirmed_at: Date.today)

{
  'England' => { ['London', :ceremonial_county] => ['London', :city] },
  'Italy' => { ['Lazio', :region] => ['Rome', :city] },
  'Ukraine' => { ['Odessa region', :region] => ['Odessa', :city] },
  'Germany' => { ['Berlin', :state] => ['Berlin', :city] },
  'Sweden' => { ['Skåne', :county] => [' Malmö', :city] },
  'Switzerland' => { ['Canton of Bern', :canton] => ['Bern', :city] },
  'Norway' => { ['Rogaland', :county] => [' Bryne', :city] }
}.each do |name, administrative_division|
  country = Country.create(name:)
  administrative_division.each do |division, settlement|
    d = country.administrative_divisions.create(name: division.first, type: division.last)
    d.settlements.create(name: settlement.first, type: settlement.last)
  end
end
