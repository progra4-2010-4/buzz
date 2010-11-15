class StaticController < ApplicationController
  def index
  @doc = Nokogiri::HTML(open('http://twitter.com/traficoentegus'))
  end

end
