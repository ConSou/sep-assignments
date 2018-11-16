require_relative 'actor'
require_relative 'kevin_bacon'

# ADDING ACTORS
kevin_bacon = Actor.new("Kevin Bacon")
leonardo_dicaprio = Actor.new("Leonardo DiCaprio")
tobey_maguire = Actor.new("Tobey Maguire")
jack_nicholson = Actor.new("Jack Nicholson")
adelaide_clemens = Actor.new("Adelaide Clemens")
joel_edgerton = Actor.new("Joel Edgerton")
tom_hanks = Actor.new("Tom Hanks")
john_goodman = Actor.new("John Goodman")
tom_cruse = Actor.new("Tom Cruse")
demi_moore = Actor.new("Demi Moore")
mark_ruffalo = Actor.new("Mark Ruffalo")
ben_kingsley = Actor.new("Ben Kingsley")
michelle_williams = Actor.new("Michelle Williams")
ellen_page = Actor.new("Ellen Page")
joseph_gordon_levitt = Actor.new("Joseph Gordon Levitt")
tom_hardy = Actor.new("Tom Hardy")

# ADDING FILMS
ellen_page.add_film("Inseption", [leonardo_dicaprio, joseph_gordon_levitt, tom_hardy])

leonardo_dicaprio.add_film("The_Great_Gatsby", [tobey_maguire, adelaide_clemens, joel_edgerton])

tobey_maguire.add_film("Beyond_All_Boundaries", [kevin_bacon, tom_hanks, john_goodman])
tobey_maguire.add_film("The_Great_Gatsby", [leonardo_dicaprio, adelaide_clemens, joel_edgerton])

jack_nicholson.add_film("A_Few_Good_Men", [tom_cruse, kevin_bacon, demi_moore])

kevin_bacon.add_film("Beyond_All_Boundaries", [tobey_maguire, tom_hanks, john_goodman])
kevin_bacon.add_film("A_Few_Good_Men", [tom_cruse, jack_nicholson, demi_moore])

# Tests
leo = KevinBacon.new
puts leo.find_kevin_bacon(leonardo_dicaprio)
puts "----------------------------"
jack = KevinBacon.new
puts jack.find_kevin_bacon(jack_nicholson)
puts "----------------------------"
ellen = KevinBacon.new
puts ellen.find_kevin_bacon(ellen_page)
