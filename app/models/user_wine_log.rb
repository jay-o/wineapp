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
  attr_accessible :action, :action_date_at, :user_wine_id, :notes, :increment_quantity, :note
  belongs_to :user_wines

  before_save :drank

  private
	  def drank
	  	if self.action == 'Drank'
	  		self.increment_quantity = self.increment_quantity*-1
	  	end
	  end
end
