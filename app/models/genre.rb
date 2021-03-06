class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs, :through => :song_genres
    has_many :artists, :through => :songs

    def slug
      # binding.pry
      # x = self.name.split(" ")
      # x = x.collect do |word|
      #   word.downcase
      # end
      # x.join("-")
      self.name.downcase.gsub(" ", "-")
      
    end


    def self.find_by_slug(slug)
      # binding.pry
      # x = slug.split("-").collect do |word|
      #   word.capitalize
      # end
      # genre_name = x.join(" ")
      # Genre.find_by_name(genre_name)
      Genre.all.detect{|genre| genre.slug == slug}

    end
end
