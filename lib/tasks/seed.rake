namespace :seed do

  desc 'Generate test model records'
  task test_data: :environment do
    progressbar = ProgressBar.create(title: "Adding test records", format: "%a %e %P% |%B| %c of %C", total: 10000)

    10000.times do
      Test.create!(
        name: Faker::Name.name,
        position: Faker::Company.profession.downcase.titleize,
        office: Faker::Address.city,
        age: rand(18..75),
        start_date: Faker::Date.between(from: 25.years.ago, to: Date.today),
        salary: rand(50..250) * 1000
      )
      progressbar.increment
    end

  end # task seed:test_data

  #############################################################################

  desc 'Clear test model records'
  task clear_test_data: :environment do
    STDOUT.puts "Clearing test records at #{Time.now}"
    Test.destroy_all
    STDOUT.puts "Done at #{Time.now}"
  end

end # namespace seed
