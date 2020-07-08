class Hero
attr_accessor :name, :power, :bio

@@all = []

  def initialize(attrs)
    @name = attrs[:name]
    @power = attrs[:power]
    @bio = attrs[:bio]
    @@all << self
  end

  def all
    @@all
  end

end
