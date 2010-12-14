class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  @alert= Alert.find(params[:alert_id])
  @comment = Comment.new
  @comment.alert_id = @alert.id
  @comment.alert=@alert
  end

  def create
    @alert= Alert.find(params[:alert_id])   
     @comment = Comment.new(params[:comment])
     @comment.alert= @alert
     @comment.alert_id = @alert.id
    if  @comment.save
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
