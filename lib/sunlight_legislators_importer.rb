require 'csv'
require_relative '../app/models/legislator'


module SunlightLegislatorsImporter
  def self.import(filename = "/Users/apprentice/Dropbox/DBC-Chicago/Otters/Jimmi\ Carney/ar-sunlight-legislators/db/data/legislators.csv")
    csv = CSV.parse(File.open(filename), :headers => true)
  
      csv.each do |row|
       Legislator.create!(title: row['title'], firstname: row["firstname"],middlename: row["middlename"],lastname: row["lastname"],name_suffix: row["name_suffix"],nickname: row["nickname"],party: row["party"],state: row["state"],district: row["district"],in_office: row["in_office"],gender: row["gender"],phone: row["phone"],fax: row["fax"],website: row["website"],webform: row["webform"],congress_office: row["congress_office"],bioguide_id: row["bioguide_id"],votesmart_id: row["votesmart_id"],fec_id: row["fec_id"],govtrack_id: row["govtrack_id"],crp_id: row["crp_id"],twitter_id: row["twitter_id"],congresspedia_url: row["congresspedia_url"],youtube_url: row["youtube_url"],facebook_id: row["facebook_id"],official_rss: row["official_rss"],senate_class: row["senate_class"],birthdate: row["birthdate"])
          # TODO: begin
            # raise NotImplementedError, "TODO: figure out what to do with this row and do it!"
          # TODO: end
          end
        end
end





# IF YOU WANT TO HAVE THIS FILE RUN ON ITS OWN AND NOT BE IN THE RAKEFILE, UNCOMMENT THE BELOW
# AND RUN THIS FILE FROM THE COMMAND LINE WITH THE PROPER ARGUMENT.
# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end
# csv = CSV.parse(File.open(ARGV[0]), :headers => true)
# csv.each {|row| p row['title']}
# title: row["title"],firstname: row["firstname"],middlename: row["middlename"],lastname: row["lastname"],name_suffix: row["name_suffix"],nickname: row["nickname"],party: row["party"],state: row["state"],district: row["district"],in_office: row["in_office"],gender: row["gender"],phone: row["phone"],fax: row["fax"],website: row["website"],webform: row["webform"],congress_office: row["congress_office"],bioguide_id: row["bioguide_id"],votesmart_id: row["votesmart_id"],fec_id: row["fec_id"],govtrack_id: row["govtrack_id"],crp_id: row["crp_id"],twitter_id: row["twitter_id"],congresspedia_url: row["congresspedia_url"],youtube_url: row["youtube_url"],facebook_id: row["facebook_id"],official_rss: row["official_rss"],senate_class: row["senate_class"],birthdate: row["birthdate"]
