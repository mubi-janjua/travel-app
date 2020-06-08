class CreateCanadas < ActiveRecord::Migration[5.2]
  def change
    create_table :canadas do |t|
      t.string :application_no
      t.string :first_name
      t.string :surname
      t.string :last_name
      t.string :nationality
      t.string :passport_no
      t.date :passport_expiry
      t.string :visa_category
      t.datetime :date_time
      t.string :application_status
      t.string :marital_status

      t.timestamps
    end
  end
end
