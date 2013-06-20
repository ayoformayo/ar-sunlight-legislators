require_relative '../config'

class CreateLegislators < ActiveRecord::Migration
def change
    create_table :legislators do |legislator|
      legislator.integer :id
      legislator.string :title
      legislator.string :firstname
      legislator.string :middlename
      legislator.string :lastname
      legislator.string :name_suffix
      legislator.string :nickname
      legislator.string :party
      legislator.string :state
      legislator.integer :district
      legislator.integer :in_office
      legislator.string :gender
      legislator.string :phone
      legislator.string :fax
      legislator.string :website
      legislator.string :webform
      legislator.string :congress_office
      legislator.string :bioguide_id
      legislator.integer :votesmart_id
      legislator.string :fec_id
      legislator.integer :govtrack_id
      legislator.string :crp_id
      legislator.string :twitter_id
      legislator.string :congresspedia_url
      legislator.string :youtube_url
      legislator.string :facebook_id
      legislator.string :official_rss
      legislator.string :senate_class
      legislator.date :birthdate
    end
  end
end  

