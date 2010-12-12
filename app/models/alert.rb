class Alert < ActiveRecord::Base
require 'twitter_search'
validates_presence_of :content

end
