class Patient < ApplicationRecord
  has_many :cities
  has_many :appointments
  has_many :doctors, through: :appointments
end
