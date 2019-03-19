class Paper < ApplicationRecord
  belongs_to :mistake_type
  belongs_to :operation
  belongs_to :source
end
