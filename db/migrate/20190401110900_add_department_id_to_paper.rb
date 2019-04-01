class AddDepartmentIdToPaper < ActiveRecord::Migration[5.2]
  def change
    add_reference :papers, :department, foreign_key: true
  end
end
