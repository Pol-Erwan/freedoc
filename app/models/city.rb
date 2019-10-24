class City < ApplicationRecord
  has_many :doctor
  has_many :patient
  has_many :appointement
end
