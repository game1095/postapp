class Paper < ApplicationRecord
  belongs_to :mistake_type
  belongs_to :operation
  belongs_to :source

  has_and_belongs_to_many :staff
end
