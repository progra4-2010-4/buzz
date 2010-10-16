require 'rubygems'
require 'sinatra'

#get('/')do 
#  send_file "index.html"
#end

get ('/'){erb :index, :layout=>false}
get ('/home'){erb :home }
get ('/Traffic'){erb :Traffic }
get ('/Notes'){erb :Notes }
get ('/FriendsFinder'){erb :FriendsFinder }
get ('/developers'){erb :developers }

