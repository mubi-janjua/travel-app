class AddSponsorToCanadas < ActiveRecord::Migration[5.2]
  def change
    add_column :canadas, :sponsor, :string
  end
end
