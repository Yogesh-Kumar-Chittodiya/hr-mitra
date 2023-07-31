# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# employee = Employee.create()

# employee = Employee.new
# employee.save

# Employee.all


employee = Employee.create(
    first_name: 'Rahul',
    middle_name: 'Kumar',
    last_name: 'Singh',
    personal_email: 'rahul@coforge.com',
    city: 'Lucknow',
    state: 'Uttar Pradesh',
    country: 'India',
    address_line_1: 'MyAddress Greater Noida',
    pincode: '210010'
)

employee = Employee.new(
    first_name: 'Rohit',
    middle_name: 'Kumar',
    last_name: 'Singh',
    personal_email: 'rohit@hr-mitra.com',
    city: 'Delhi',
    state: 'Delhi',
    country: 'India',
    address_line_1: 'MyAddress Greater Noida',
    pincode: '201010'
)

require 'faker'
puts "seeding data to the database ...."

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

CLient.destroy_all

10.times do
    @client = Client.create!(
        name: Faker::Name.unique.name_with_middle,
        address: Faker::Address.unique.street_address,
        company: Faker::Company.unique.name,
        phone_number: Faker::PhoneNumber.unique.cell_phone_with_country_code,
    )
end

puts "Seeding operation Complere !"