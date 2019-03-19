class CreatePapers < ActiveRecord::Migration[5.2]
  def change
    create_table :papers do |t|
      t.date :day
      t.date :dated
      t.text :description
      t.text :remark
      t.references :mistake_type, foreign_key: true
      t.references :operation, foreign_key: true
      t.references :source, foreign_key: true

      t.timestamps
    end
  end
end
