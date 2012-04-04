class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :track_mnet_id
      t.string :title
      t.integer :artist_mnet_id
      t.string :artist_name
      t.string :genre
      t.integer :album_mnet_id
      t.string :album_image_small
      t.string :album_image_medium
      t.string :sample_resource
      t.string :sample_location

      t.timestamps
    end
  end
end
