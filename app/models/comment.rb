class Comment < ActiveRecord::Base
  belongs_to :alert
  attr_accessible :content
 validates_length_of :content,:maximum => 400

end
