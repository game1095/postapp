class Paper < ApplicationRecord
  belongs_to :mistake_type
  belongs_to :operation
  belongs_to :source
  belongs_to :department
  has_and_belongs_to_many :staff
  default_scope { order(operation_id: :ASC) }
  self.per_page = 14

  def operationCheck
    if self.operation.id == 2
      return "badge badge-primary"
    elsif self.operation.id == 1
      return "badge badge-warning"
    end
  end

  def daystrf
    if self.day != nil
      return self.day.strftime("%d %B %Y")
    else
      return ""
    end
  end

  def datedstrf
    if self.dated != nil
      return self.day.strftime("%d %B %Y")
    else
      return ""
    end
  end
end
