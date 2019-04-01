class Staff < ApplicationRecord
  belongs_to :gender
  belongs_to :department
  belongs_to :position

  has_and_belongs_to_many :paper
end
