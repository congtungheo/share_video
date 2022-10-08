# == Schema Information
#
# Table name: movies
#
#  id               :bigint           not null, primary key
#  description      :text
#  thumb_url        :string           not null
#  title            :string           not null
#  vote_downs_count :bigint           default(0), not null
#  vote_ups_count   :bigint           default(0), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint           not null
#  video_id         :string           not null
#
require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
