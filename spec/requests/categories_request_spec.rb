require 'rails_helper'

RSpec.describe "Categories", type: :request do

  describe "GET /index" do
    before do
      category = FactoryBot.create(:category)
      idea = FactoryBot.create(:idea, category_id: category.id)
    end
    it "returns http 200" do
      get "/categories"
      expect(response).to have_http_status(:success)
    end
  end

###########################################
#show
#  リクエスト
#    * category_name(カテゴリー名):string
#  レスポンス
#    idea(id,body)category_nameで返してください
############################################


#クエリを含んだurlで入る ex. request.env['PATH_INFO'] = '/hoge/?page=1'
# get :index, params: {page: '1'}
  describe "GET /show" do
    before do
      category = FactoryBot.create(:category)
      idea = FactoryBot.create(:idea, category_id: category.id)
    end
    it "returns http success" do
      #get "/categories" #indexに入る
      #redirect_to category_path(category_name: assigns(:category).name) #category_nameを通してshowアクションにリダイレクトする

      request.env['PATH_INFO'] = 'categories/categories?name=MyString'
      get :show, params: {name: "MyString"}
      expect(response).to have_http_status(:success)
    end
  end

############################################
#create
#  リクエスト
#    * category_name(カテゴリー名):string null: false
#    * body(本文):string null: false
#  レスポンス
#    成功時 ステータスコード201を返してください。
#    失敗時(バリデーションエラー) ステータスコード422を返してください。
#
#  createでcategory.nameを入力し、すでに登録されているもので「なければstatusコード202を返す
#  createでcategory.nameを入力し、すでに登録されていればstatusコード422を返す
############################################

  describe "POST /create" do
    before do
      @params = FactoryBot.attributes_for(:category)
    end
    it "returns http 200" do
      #post categories_path, @params
      #expect(response).to be_success
      #expect(response.status).to eq 201

      #category = FactoryBot.create(category_name: params[:name])
      #idea = FactoryBot(:idea, category_name: params[:name])
      #expect(response.status).to eq(200)
    end

    it "returns http 422" do
      #category = FactoryBot.create(category_name: params[:name])
      #post categories_path, params: {}
      #expect(response.status).to eq(422)
    end
  end

end
