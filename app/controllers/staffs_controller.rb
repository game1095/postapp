class StaffsController < ApplicationController
  def index
    @staffs = Staff.all.order('id ASC')
  end

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.create(staff_params)
    if @staff.save
      redirect_to staffs_path , flash: {notice: "เพิ่มพนักงานสำเร็จเรียบร้อยแล้ว"}
    else
      render 'new'
    end
  end

  def edit
    @staff = Staff.find(params[:id])
  end

  def update
    @staff = Staff.find(params[:id])
    if @staff.update(staff_params)
      redirect_to staffs_path , flash: {notice: 'แก้ไขพนักงานสำเร็จเรียบร้อยแล้ว'}
    else
      render 'edit'
    end
  end

  def show
    @staff = Staff.find(params[:id])
    @paper_staff = @staff.paper
  end

  def destroy
    @staff = Staff.find(params[:id])
    if @staff.destroy
      redirect_to staffs_path , flash: {notice: 'ลบพนักงานสำเร็จเรียบร้อยแล้ว'}
    end
  end

  private
    def staff_params
      params.require(:staff).permit(:name , :gender_id , :department_id)
    end
end
