class AddressToStaff < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :address, :text
    add_column :staffs, :tel , :integer
    add_column :staffs, :email ,:string
  end
end
