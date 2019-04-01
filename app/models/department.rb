class Department < ApplicationRecord
  has_many :staff
  has_many :paper
  has_many :gender , :through => :staff
end
