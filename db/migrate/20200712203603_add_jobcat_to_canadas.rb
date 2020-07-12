class AddJobcatToCanadas < ActiveRecord::Migration[5.2]
  def change
    add_column :canadas, :jobcat, :string
  end
end
