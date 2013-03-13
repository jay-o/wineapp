class AddQuantityToUserWines < ActiveRecord::Migration
  def change
    add_column :user_wines, :quantity, :integer
  end
end
