class CreateTemperatures < ActiveRecord::Migration[5.2]
  def change
    create_table :temperatures do |t|
      t.string :temp
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
