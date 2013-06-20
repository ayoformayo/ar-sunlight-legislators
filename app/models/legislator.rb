require_relative '../../db/config'
class Legislator < ActiveRecord::Base
  def name
    "#{firstname} #{lastname}"
  end


end
