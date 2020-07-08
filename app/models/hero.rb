class Hero
attr_accessor :name, :power, :bio

@@all = []

  def initialize(attrs)
    @name =
    @power =
    @bio =
    @@all << self
  end

  def all
    @@all
  end

end