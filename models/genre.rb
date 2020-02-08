class Genre  
  attr_accessor :name, :songs 
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
end