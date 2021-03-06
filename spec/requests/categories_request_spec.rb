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

  describe "GET /show" do
    before do
      category = FactoryBot.create(:category)
      idea = FactoryBot.create(:idea, category_id: category.id)
    end
    it "nameクエリを指定した場合、returns http success" do
      get "/categories/categories",  params: {name: "MyString"}
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
#  createでcategory.nameを入力し、すでに登録されているものでなければstatusコード202を返す
#  createでcategory.nameを入力し、すでに登録されていればstatusコード422を返す
############################################

  describe "POST /create" do
    before do
      category = FactoryBot.attributes_for(:category)
      idea = FactoryBot.attributes_for(:idea, category_id: category.id)
    end
    context "returns http 201" do
      post "/categories", params: {name: 'Phone'}
      expect(response.status).to eq 201
    end
    context "returns http 422" do
      before {post '/categories', params: {name: 'アプリ'}}
      expect(response.status).to eq 422
    end
  end
end
