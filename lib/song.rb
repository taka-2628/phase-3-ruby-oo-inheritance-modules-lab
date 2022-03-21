require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  include Paramable
end
