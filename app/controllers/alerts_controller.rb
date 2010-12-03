class AlertsController < ApplicationController
	require 'open-uri'
  def index
  
  end

  def show
  end

  def create
  @alert = Alert.new params[:alert]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
  @alert = Alert.new   
  end
end
