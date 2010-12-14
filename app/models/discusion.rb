class Discusion < ActiveRecord::Base

attr_accessible :content
belongs_to :alert
end
