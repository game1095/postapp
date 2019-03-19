class CreateJoinTableStaffPapaer < ActiveRecord::Migration[5.2]
  def change
    create_join_table :staffs, :papers do |t|
      t.index [:staff_id, :paper_id]
      t.index [:paper_id, :staff_id]
    end
  end
end
