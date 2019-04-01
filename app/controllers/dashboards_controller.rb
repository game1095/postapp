class DashboardsController < ApplicationController
  def index
    @staff_count = Staff.all.count
    @staff_ems_count = Staff.where(department_id: 1).count
    @staff_reg_count = Staff.where(department_id: 2).count
    @staff_lc_count = Staff.where(department_id: 3).count
    @staff_p_count = Staff.where(department_id: 4).count
    @staff_tran_count = Staff.where(department_id: 5).count
    @staff_l_count = Staff.where(department_id: 6).count

    @paper = Paper.count
  end
end
