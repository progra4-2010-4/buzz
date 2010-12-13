class Alert < ActiveRecord::Base
require 'twitter_search'

has_many :comments

attr_accessible :content, :lugar
validates_presence_of :content, :lugar

end
