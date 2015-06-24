10.times do
  company = Company.create(name: Faker::Company.name)

  5.times do
    location = company.locations.create(city: Faker::Address.city)

    10.times do
      company.employees.create(name: Faker::Name.name,
                          hire_date: Faker::Date.between(2.years.ago, 1.day.ago),
                              title: Faker::Name.title)
    end

    5.times do
      location.courses.create(name: Faker::Company.bs,
                         max_count: Faker::Number.number(2))
    end

  end

end
