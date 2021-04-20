class AddSponsorpartToCanadas < ActiveRecord::Migration[5.2]
  def change
  	add_column :canadas, :sponsor_name, :string
  	add_column :canadas, :sponsor_Id, :string
  	add_column :canadas, :sponsor_license, :string
  	add_column :canadas, :sponsor_business, :string
  	add_column :canadas, :sponsor_taxation, :string
  end
end
