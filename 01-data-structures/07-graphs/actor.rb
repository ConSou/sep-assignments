class Actor
  attr_accessor :name, :film_actor_hash

  def initialize(name)
    @name = name
    @film_actor_hash = Hash.new
  end

  def add_film(film_name, actors)
    @film_actor_hash[film_name] = actors
  end

end
