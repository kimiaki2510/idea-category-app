FactoryBot.define do
  factory :idea do
    body { "MyText" }
    category { nil }
  end
end


#やりたいこと
#rspecのindexでデータを確認できるようにしたい
#1.FactoryBotでcategoryデータを作成
#2.FactoryBotでcategory.idを参照してideaデータを作成
#3./categoriesに入れるか
#4./categoriesでcategoryとideaデータのcategory(id,name),idea(body)が入っているか
