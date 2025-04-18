def rpg_metrics
  require_relative "LRPSFramework/LRPSFramework.rb"

  LRPS_Framework::Metrics.apply_RPG_metrics

  gets.chomp

  system("clear")
end

def needs_programming
  require_relative "LRPSFramework/LRPSFramework.rb"

  LRPS_Framework::Metrics.needs_programming

  gets.chomp

  system("clear")
end

def create_monster_names
  require_relative "LRPSFramework/LRPSFramework.rb"

  LRPS_Framework::Language.node1
  LRPS_Framework::Language.node2
  LRPS_Framework::Language.node4
  LRPS_Framework::Language.node8
  LRPS_Framework::Language.node7
  LRPS_Framework::Language.node5

  LRPS_Framework::Metrics.evaluate_monster_names

  gets.chomp

  system("clear")
end

def singular
  require_relative "LRPSFramework/LRPSFramework.rb"

  LRPS_Framework::Metrics.singular_metrics

  gets.chomp

  system("clear")
end

def plural
  require_relative "LRPSFramework/LRPSFramework.rb"

  LRPS_Framework::Metrics.plural_metrics

  gets.chomp

  system("clear")
end

loop do
  logo = File.read("LRPSFramework/Logo/logo.txt")

  puts logo

  puts "[rpg_metrics][needs_programming][create_monster_names]"

  print "Which tool would you like to use? << "; tool = gets.chomp

  if    "rpg_metrics"          == tool; rpg_metrics
  elsif "needs_programming"    == tool; needs_programming
  elsif "create_monster_names" == tool; create_monster_names
  elsif "linguistic"           == tool;
    print "What type of linguistic metric? << "; metric = gets.chomp

    if    "singular" == metric; singular
    elsif "plural"   == metric; plural
    else
      puts "No such metric..."
    end
  elsif "exit" == tool
    break
  else
    puts ">> This tool is not available."
  end
end
