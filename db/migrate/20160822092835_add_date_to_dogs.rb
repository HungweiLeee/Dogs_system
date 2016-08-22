class AddDateToDogs < ActiveRecord::Migration[5.0]
  def change
  	add_column :dogs, :日期, :date
  end
end
