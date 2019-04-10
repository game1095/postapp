class Staff < ApplicationRecord
  belongs_to :gender
  belongs_to :department
  belongs_to :position
  has_and_belongs_to_many :paper

  def sum_paper
    paper.count do |paper|
      paper
    end
  end

end
