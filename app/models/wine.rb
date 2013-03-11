# == Schema Information
#
# Table name: wines
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Wine < ActiveRecord::Base
  attr_accessible :name, :year
end
