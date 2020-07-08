class CreateServicePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :service_payments do |t|
      t.string :name
      t.string :email
      t.string :company
      t.integer :amount
      t.string :invoice_number
      t.datetime :invoice_date

      t.timestamps
    end
  end
end
