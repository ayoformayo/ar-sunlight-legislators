require_relative 'models/legislator'

def search_by_state(state)
  sens = Legislator.where("title = 'Sen' and state = ?", state)
  puts "Senators:"
  sens.each {|sen| puts "  #{sen.name} (#{sen.party})"}
  reps = Legislator.where("title = 'Rep' and state = ?", state)
  puts "Representatives:"
  reps.each {|rep| puts "  #{rep.name} (#{rep.party})"}
end

search_by_state("CA")
# sens = Legislator.where("title = 'Sen' and state = 'DE'")
# sens.each {|sen| p sen.firstname}
