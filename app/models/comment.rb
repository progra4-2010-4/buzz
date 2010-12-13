class Comment < ActiveRecord::Base
  belongs_to :alert
  attr_accessible :contenido
end
