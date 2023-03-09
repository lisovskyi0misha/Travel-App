User.create(email: 'test@test', password: '123123', first_name: 'User', last_name: 'First', confirmed_at: Date.today)

%w[England Italy Ukraine France Germany Sweden Switzerland Norway].each do |name|
  Country.create(name:)
end
