class CreateMistakeTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :mistake_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
