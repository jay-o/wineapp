class CreateUserWines < ActiveRecord::Migration
  def change
    create_table :user_wines do |t|
      t.integer :user_id
      t.integer :wine_id
      t.integer :quantity, :default => 0

      t.timestamps
    end
  end
end
