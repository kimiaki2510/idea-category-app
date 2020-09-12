class CategoriesController < ApplicationController
  def index
    @ideas = Idea.all
    idea = @ideas.joins(:category).pluck(:id,:name, :body)
    render json: {data: idea}
  end

  def show
    if params[:name].length==0
      redirect_to action: :index
    else
      @category = Category.where(name: params[:name])
      if @category.length==0
        render :json => {:error => "404 not found"}.to_json, :status => 404
      else
        @ideas = Idea.where(category_id: @category[0].id).joins(:category).select("ideas.id, categories.name, ideas.body")
        render json: {data: @ideas}
      end
    end
  end

  def new
  end

  def create
  end

  private

  def category_params
    params.require(:category).permit(:id,:name,:body)
  end
end
