# == Schema Information
#
# Table name: user_wine_logs
#
#  id                 :integer          not null, primary key
#  user_wine_id       :integer
#  action             :string(255)
#  action_date_at     :date
#  notes              :text
#  increment_quantity :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class UserWineLogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
