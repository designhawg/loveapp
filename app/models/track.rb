class Track < ActiveRecord::Base
  
  has_many :users
  
  def self.mnet_create
    create! do |track|
      
      track = {}
      json_track[] = response["Tracks"][0]
      
      track["track_id"] = #this needs to be created within DateTracks 
      track["track_mnet_id"] = json_track["MnetId"]
      track["title"] = json_track["Title"] 
      track["artist_mnet_id"] = json_track["Artist"]["MnetId"] 
      track["artist_name"] = json_track["Name"] 
      track["genre"] = json_track["Genre"] 
      track["album_mnet_id"] = json_track["Album"]["MnetId"]
      track["album_image_small"] = json_track["Images"]["Album75x75"] 
      track["album_image_medium"] = json_track["Images"]["Album150x150"]
      track["sample_resource"] = json_track["SampleLocations"][1]["Location"]
      track["sample_location"] = json_track["SampleLocations"][1]["Resource"]
    end
  end

end