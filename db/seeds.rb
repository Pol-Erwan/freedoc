# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'table_print'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

doctor_array = []
patient_array = []

6.times do |index|

 doctor_array << Doctor.create(id:index, first_name: Faker::Name.first_name, last_name: Faker::Name.middle_name, speciality:["Docteur de la tête","Docteur des pieds","Docteur du ventre","Docteur du dos"].sample, zip_code: Faker::Address.zip_code)

 patient_array << Patient.create(id:index, first_name: Faker::Name.first_name, last_name: Faker::Name.middle_name)
end

6.times do |patient|

 Appointment.create(date: Faker::Time.forward(days: 28),doctor: doctor_array.sample, patient: patient_array.sample)
end
