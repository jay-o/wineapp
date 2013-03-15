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

require 'test_helper'

class UserWineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
