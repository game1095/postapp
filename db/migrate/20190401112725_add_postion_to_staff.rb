class AddPostionToStaff < ActiveRecord::Migration[5.2]
  def change
    add_reference :staffs, :position, foreign_key: true
  end
end
