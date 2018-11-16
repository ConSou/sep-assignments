class KevinBacon
  attr_accessor :checked_actors

  def initialize
    @checked_actors = []
  end

  def find_kevin_bacon(actor)
    movie_links = []
    @checked_actors << actor

    actor.film_actor_hash.each do |movie, actor_arr|
      next_actor = ''
      actor_arr.each do |act|
        next_actor = act.name
        movie_links << movie && break if next_actor === 'Kevin Bacon'

        if !@checked_actors.include?(act)
          temp = find_kevin_bacon(act)
          movie_links << movie
          movie_links += temp
        end
      end
      if next_actor === 'Kevin Bacon'
        break
      end
    end
    if movie_links.uniq.length > 6
      return "There are more then 6 degrees of sepearation."
    end
    return movie_links.uniq
  end

end
