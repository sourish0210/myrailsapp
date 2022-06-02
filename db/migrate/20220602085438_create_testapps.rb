class CreateTestapps < ActiveRecord::Migration[6.1]
  def change
    create_table :testapps do |t|
      t.string :name
      t.integer :employeeid
      t.string :project
      t.timestamps
    end
  end
end
