class AlertsController < ApplicationController
	require 'open-uri'
  def index
  
  end

  def show
  end

  def create
  @alert = Alert.new params[:alert]
  if @alert.save
  redirect_to new_alert_path 
  else
  @alertas = Alert.all.reverse!
  render :new
  end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
  @alert = Alert.new 
  @alertas= Alert.all.reverse!
  @twets = open("http://search.twitter.com/search.atom?q=from:traficoentegus")  
  end
end
