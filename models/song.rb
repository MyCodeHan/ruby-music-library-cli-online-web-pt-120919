class Song 
  extend Findable #takes all of the method 
  attr_accessor :name
  @@all = []
  
  def self.all #Class Reader
    @@all
  end
  
  def self.reset_all
    @all.clear
  end
  
  def initialize
    save
  end
  def save
    @@all << self
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.find_by_name(name)
    @@all.detect{|artist| artist.name == name}
  end
end