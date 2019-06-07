require 'chuck_norris'

class ChuckJokes
  def help

  end

  def get_joke_by_id(id)
    joke = ChuckNorris::JokeFinder.find_joke(id)
    puts joke.joke
  end

  def replace_name(f_name, l_name)
    joke = ChuckNorris::JokeFinder.get_joke(first_name: "#{f_name}", last_name: "#{f_name}")
    puts joke.joke
  end

  def random
    joke = ChuckNorris::JokeFinder.get_joke
    puts joke.joke
  end
end

# chuck = ChuckJokes.new
