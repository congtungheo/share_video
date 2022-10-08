# == Schema Information
#
# Table name: votes
#
#  id         :bigint           not null, primary key
#  vote_type  :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :bigint           not null
#  user_id    :bigint           not null
#
class Vote < ApplicationRecord
end
