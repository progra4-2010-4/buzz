class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  @alert= Alert.find(params[:alert_id])
  @comentario = Comment.new
  @comentario.alert_id = @alert.id
  end

  def create
    @alert= Alert.find(params[:alert_id])
   @comentario = Comment.new
   @comentario.alert_id = @alert.id
    if @comentario.save
   redirect_to alert_path(@alert)
   else
    render :new
   end
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
