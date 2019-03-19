class CreateJoinTablePaperStaff < ActiveRecord::Migration[5.2]
  def change
    create_table :papers_staff, id: false do |t|
      t.belongs_to :paper, index: true
      t.belongs_to :staff , index: true

      t.timestamps
    end
  end
end
