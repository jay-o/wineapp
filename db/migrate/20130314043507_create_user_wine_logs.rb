class CreateUserWineLogs < ActiveRecord::Migration
  def change
    create_table :user_wine_logs do |t|
      t.integer   :user_id
      t.integer 	:user_wine_id
      t.string 		:action
      t.date 		  :action_date_at
      t.text 		  :note
      t.integer 	:increment_quantity

      t.timestamps
    end
  end
end
