class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.decimal :overhead, precision: 4, scale: 2, null: false

      t.timestamps
    end
  end
end
