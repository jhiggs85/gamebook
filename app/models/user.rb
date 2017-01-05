class User < ApplicationRecord
  has_many :comments, foreign_key: :commenter_id
  has_many :saved_games
  has_many :games, through: :saved_games
  has_many :accepted_friendships, foreign_key: :accepting_id, class_name: "Friendship"
  has_many :requested_friendships, foreign_key: :requesting_id, class_name: "Friendship"
  has_many :requests, through: :requested_friendships, source: :requesting_friend
  has_many :accepts, through: :accepted_friendships, source: :accepting_friend
  has_many :votes, foreign_key: :voter_id
end