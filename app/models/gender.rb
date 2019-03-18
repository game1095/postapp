class Gender < ApplicationRecord
  has_many :staff
  has_many :department , through: :staff
end
