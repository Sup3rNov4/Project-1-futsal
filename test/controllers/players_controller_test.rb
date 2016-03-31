# == Schema Information
#
# Table name: players
#
#  id              :integer          not null, primary key
#  email           :text
#  team_id         :integer
#  name            :text
#  password_digest :text
#  dob             :text
#  created_at      :datetime
#  updated_at      :datetime
#  admin           :boolean          default(FALSE)
#

require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
