class IdeasController < ApplicationController
  def index
  end

  def show
  end

  def new
    @idea = Idea.new
    @category = Category.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      render json: {status: 201, data: @idea}
    else
      render json: {status: 422}
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:body)
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
