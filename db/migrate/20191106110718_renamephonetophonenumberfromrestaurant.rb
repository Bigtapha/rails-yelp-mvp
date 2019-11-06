class Renamephonetophonenumberfromrestaurant < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :phone, :phone_number
  end
end
