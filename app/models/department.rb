class Department < ApplicationRecord
  has_many :staff
  has_many :gender , :through => :staff
end
