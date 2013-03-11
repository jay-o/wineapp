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

require 'test_helper'

class WineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
