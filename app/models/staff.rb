class Staff < ApplicationRecord
  belongs_to :gender
  belongs_to :department

  has_and_belongs_to_many :paper
end
