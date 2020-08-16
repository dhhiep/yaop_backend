# frozen_string_literal: true

module Youtube
  class Video < ApplicationRecord
    self.table_name = :youtube_videos

    class << self
      def fetch(url)
        Yt::Video.new(url: url)
      end
    end
  end
end
