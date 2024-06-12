class CreateBreeds < ActiveRecord::Migration[7.1]
  def change
    #sqllite does not support the uuid datatype
    create_table :breeds, id: :string do |t|
      t.string :name

      t.timestamps
    end

    add_index :breeds, :name, unique: true
  end
end
