class UserTracks < ActiveRecord::Base
  
  has_many :Users
  has_many :Tracks
  
end
