class AddWeightToPets < ActiveRecord::Migration[7.1]
  def change
    add_column :pets, :weight, :decimal, precision: 5, scale: 2, default: nil
  end
end
