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
      t.boolean :available, default: true, null: false
      t.string :last_run
      t.float :monday_opens
      t.float :monday_closes
      t.float :tuesday_opens
      t.float :tuesday_closes
      t.float :wednesday_opens
      t.float :wednesday_closes
      t.float :thursday_opens
      t.float :thursday_closes
      t.float :friday_opens
      t.float :friday_closes
      t.float :saturday_opens
      t.float :saturday_closes
      t.float :sunday_opens
      t.float :sunday_closes

      t.timestamps
    end
  end
end
