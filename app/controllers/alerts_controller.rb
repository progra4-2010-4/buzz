class AlertsController < ApplicationController
	require 'open-uri'
  def index
  
  end

  def show
    @alert = Alert.find(params[:id])
    @comentarios = @alert.comments.find(:all, :order => 'created_at DESC').paginate(:per_page => 3, :page => params[:page])
    #@comentarios = @alert.comments.all
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
  @alertas = Alert.find(:all, :order => 'created_at DESC').paginate(:per_page => 3, :page => params[:page])
  client = TwitterSearch::Client.new('buzz')
  @twets = client.query(:q => 'from:traficoentegus')  
  end
end
