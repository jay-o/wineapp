# == Schema Information
#
# Table name: user_wine_logs
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  user_wine_id       :integer
#  action             :string(255)
#  action_date_at     :date
#  note               :text
#  increment_quantity :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class UserWineLog < ActiveRecord::Base
  attr_accessible :action, :action_date, :user_wine_id, :notes, :increment_quantity, :note

  before_save :drank
  after_save :update_total_quantity

  belongs_to :user_wines

  private
	  def drank
	  	if self.action == 'Drank'
	  		self.increment_quantity = self.increment_quantity*-1
	  	end
	  end

	  def update_total_quantity
	  	user_wine = UserWine.find(self.user_wine_id)
	  	user_wine.quantity = user_wine.quantity + self.increment_quantity
		user_wine.save
	  end
end
