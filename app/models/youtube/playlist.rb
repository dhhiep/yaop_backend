# frozen_string_literal: true

module Youtube
  class Playlist < ApplicationRecord
    self.table_name = :youtube_playlists

    class << self
      def fetch(url)
        return nil if url.blank?

        playlist_id = extract_playlist_id(url)
        return unless playlist_id

        Yt::Playlist.new(id: playlist_id)
      end

      def videos(url)
        fetch(url)&.playlist_items&.map(&:video)
      end

      private

      def extract_playlist_id(url)
        str_matched = url.match(/list=([a-zA-Z0-9-]*)/)
        return unless str_matched

        str_matched[1]
      end
    end
  end
end
