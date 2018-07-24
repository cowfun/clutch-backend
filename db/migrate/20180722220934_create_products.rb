class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.bigint :code
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
