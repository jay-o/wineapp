# == Schema Information
#
# Table name: user_wines
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  wine_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quantity   :integer
#

require 'test_helper'

class UserWineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
