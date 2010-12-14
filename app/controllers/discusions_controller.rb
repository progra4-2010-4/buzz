class DiscusionsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @alert= Alert.find(params[:alert_id])   
    @discuss = Discusion.new(params[:discuss])
    @discuss.alert_id = @alert.id
    if @discuss.save
   redirect_to alert_path(@alert)
   else
    render :new
   end
  end

  def new
  @alert= Alert.find(params[:alert_id])
  @discuss = Discusion.new
  @discuss.alert_id = @alert.id
  end

end
