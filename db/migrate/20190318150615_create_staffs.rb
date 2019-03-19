class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :name
      t.references :gender, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
