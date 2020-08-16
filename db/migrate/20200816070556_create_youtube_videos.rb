class CreateYoutubeVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :youtube_videos do |t|
      t.integer :user_id
      t.integer :playlist_id
      t.string :yid
      t.string :name
      t.string :channel_name
      t.string :time
      t.string :url
      t.string :thumbnail

      t.timestamps
    end

    add_index :youtube_videos, [:yid]
    add_index :youtube_videos, [:user_id]
    add_index :youtube_videos, [:playlist_id]
  end
end
