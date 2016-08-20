class AddDateToDogs < ActiveRecord::Migration[5.0]
  def change
  	add_column :dogs, :date, :integer
  end
end
