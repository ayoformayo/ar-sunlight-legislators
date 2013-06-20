require_relative 'models/legislator'

def search_by_state(state)
  sens = Legislator.where("title = 'Sen' and state = ?", state)
  puts "Senators:"
  sens.each {|sen| puts "  #{sen.name} (#{sen.party})"}
  reps = Legislator.where("title = 'Rep' and state = ?", state)
  puts "Representatives:"
  reps.each {|rep| puts "  #{rep.name} (#{rep.party})"}
end

#search_by_state("CA")
# sens = Legislator.where("title = 'Sen' and state = 'DE'")
# sens.each {|sen| p sen.firstname}

def percentages(gender)
  senator_count = Legislator.where("title = 'Sen' and in_office = '1'").count
  sen_gender_count = Legislator.where("title = 'Sen' and in_office = '1' and gender = ?", gender).count
  sen_percent = ((sen_gender_count.to_f/senator_count))*100
  rep_count = Legislator.where("title = 'Rep' and in_office = '1'").count
  rep_gender_count = Legislator.where("title = 'Rep' and in_office = '1' and gender = ?", gender).count
  rep_percent = ((rep_gender_count.to_f/rep_count))*100
  case gender
  when "M"
    puts "Male Senators: #{sen_gender_count} #{sen_percent}"
    puts "Male Representatives: #{rep_gender_count} #{rep_percent}"
  when "F"
    puts "Female Senators: #{sen_gender_count} #{sen_percent}"
    puts "Female Representatives: #{rep_gender_count} #{rep_percent}"
  end
end

def order_by_reps
  state_and_title_array =  Legislator.group('state').group('title').where('in_office = ?', 1).count
  other_format = {}
  state_and_title_array.each do |key, value|
    other_format[key.first] ||= {}
    other_format[key.first][key.second] = value
  end
  other_format
end

def count_congress
  senator_count = Legislator.where("title = 'Sen'").count
  rep_count = Legislator.where("title = 'Rep'").count
  puts "Senators: #{senator_count}"
  puts "Representatives: #{rep_count}"
end

# def print_states
# states = Legislator.select(:state).uniq
# states_array = []
# states.each {|x| states_array << x.state}
# states_array.each do |state|
#   puts "#{state}: #{} "
# end

p order_by_reps
