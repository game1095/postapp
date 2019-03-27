class PapersController < ApplicationController
  def index
    @papers = Paper.all
  end

  def new
    @paper = Paper.new
  end

  def create
    @paper = Paper.create(paper_params)
    if @paper.save
      redirect_to papers_path , flash: {notice: 'เพิ่ม ป.143 สำเร็จเรียบร้อยแล้ว'}
    else
      render 'new'
    end
  end

  def edit
    @paper = Paper.find(params[:id])
  end

  def update
    @paper = Paper.find(params[:id])
    if @paper.update(paper_params)
      redirect_to papers_path , flash: {notice: 'แก้ไข ป.143 สำเร็จเรียบร้อยแล้ว'}
    else
      render 'edit'
    end
  end

  def show
    @paper = Paper.find(params[:id])
  end

  def destroy
    @paper = Paper.find(params[:id])
    if @paper.destroy
      redirect_to papers_path , flash: {notice: 'ลบ ป.143 สำเร็จเรียบร้อยแล้ว'}
    else
      render 'new' , flash: {notice: 'ลบ ป.143 ไม่สำเร็จโปรดลองใหม่อีกครั้ง'}
    end
  end

  private
    def paper_params
      params.require(:paper).permit(:day , :dated , :description , :mistake_type_id , :operation_id , :source_id , :remark)
    end
end
