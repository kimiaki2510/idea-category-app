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
    it "returns http 200" do
      get "/categories/show"
      expect(response).to have_http_status(200)
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
    it "returns http 200" do
      #category = create(:category)
      #expect(response.status).to eq(201)
    end

    it "returns http 422" do
      #category = create(:category)
      #post categories_path, params: {}
      #expect(response.status).to eq(422)
    end
  end

end
