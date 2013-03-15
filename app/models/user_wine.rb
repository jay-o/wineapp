# == Schema Information
#
# Table name: user_wines
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  wine_id    :integer
#  quantity   :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserWine < ActiveRecord::Base
  attr_accessible :user_id, :wine_id, :quantity

  belongs_to 	:user
  belongs_to 	:wine

  has_many		:user_wine_logs

end
