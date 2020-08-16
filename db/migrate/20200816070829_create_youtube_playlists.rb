class CreateYoutubePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :youtube_playlists do |t|
      t.integer :user_id
      t.string :yid
      t.string :name
      t.string :url
      t.string :thumbnail

      t.timestamps
    end

    add_index :youtube_playlists, [:yid]
    add_index :youtube_playlists, [:user_id]
  end
end
