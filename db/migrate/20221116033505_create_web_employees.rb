class CreateWebEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :web_employees do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
