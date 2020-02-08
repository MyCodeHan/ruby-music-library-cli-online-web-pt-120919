class Song 
extend Findable #take all the method in the Findable module & add them as class method
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