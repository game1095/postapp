class LeaderboardsController < ApplicationController
  def index
    @staffs = Staff.all.order("name ASC")
    @staffs.each do |staff|
      a = Paper.joins(:staff).where("papers_staffs.staff_id": staff.id).count
    end
  end
end
