class Paper < ApplicationRecord
  belongs_to :mistake_type
  belongs_to :operation
  belongs_to :source
  belongs_to :department

  has_and_belongs_to_many :staff

  def operationCheck
    if self.operation.id == 2
      return "badge badge-warning"
    elsif self.operation.id == 1
      return "badge badge-success"
    end
  end


end
