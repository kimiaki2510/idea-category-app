class IdeasController < ApplicationController
  def index
    #@ideas = Idea.all
    @ideas = Idea.all
    render json: { data: @ideas }
  end

  def show
    #nameで取得する必要がある
    @idea = Idea.find(id: params[:id])
    render json: { data: @idea }
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      render json: {status: 201, data: @idea}
    else
      render json: {status: 422}
    end
  end

  def destroy
  end

  private

  def idea_params
    params.require(:idea).permit(:body, :category_id)
  end

end
