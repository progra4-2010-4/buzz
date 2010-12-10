class Alert < ActiveRecord::Base
require 'nokogiri'
validates_presence_of :content

end
