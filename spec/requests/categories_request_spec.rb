require 'rails_helper'

RSpec.describe "Categories", type: :request do

###########################################
#index
#  リクエスト
#    * category_name(カテゴリー名):string
#  レスポンス
#    idea(id,body)category_nameで返してください
############################################

  describe "GET /index" do
    before do
      Factorybot.create(:category)
      Factorybot.create(:idea)
    end
    it "returns http success" do
      #et "/categories/index"
      #expect(response).to have_http_status(200)
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
    it "returns http success" do
      category = create(:category)
      post categories_path, params: {}
      expect(response.status).to eq(201)
    end
  end

end
