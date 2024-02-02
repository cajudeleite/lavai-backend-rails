class CreateMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :machines do |t|
      t.integer :vm_pay_id
      t.string :name
      t.boolean :washer
      t.references :store, null: false, foreign_key: true
      t.string :street_name
      t.integer :street_number
      t.string :cep
      t.float :latitude
      t.float :longitude
      t.boolean :open, default: false, null: false
      t.boolean :available, default: false, null: false
      t.time :last_run

      t.timestamps
    end
  end
end
