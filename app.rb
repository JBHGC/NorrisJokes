require './chuck'

chuck = ChuckJokes.new

if ARGV[0].downcase == 'random'
  chuck.random
end

if ARGV[0] !=~ /\D/ && ARGV.length == 1
  chuck.get_joke_by_id(ARGV[0].to_i)
end

if ARGV[0] =~ /\D/ && ARGV[1] =~ /\D/
  chuck.replace_name(ARGV[0],ARGV[1])
end

if ARGV[0].downcase == 'help' || ARGV.length == 0
  puts "To Use: Enter a Parameter after the call of the file."
  puts "Parameters(Syntax):"
  puts "*A First and Last Name(John Doe)"
  puts "*A Number(123)"
  puts "*Random(random)"
end
