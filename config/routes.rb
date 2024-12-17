Rails.application.routes.draw do

  

  # 1 generate controllerで追加されたルーティング
  get "/" => "home#top"
  # aboutのURLを省略
  get "about" => "home#about"

  # 2 投稿するために作られた。右側は自分でわかるように追加
  get "post/index" => "post#index"

  # 4 新規投稿ページ
  get "post/new" => "post#new"

  # 3　投稿の詳細IDに対応している
  get "post/:id" => "post#show"

  # 5 投稿作成からデータベースを操作するアクション
  post "post/create" => "post#create"

  # 6 editアクションへのルーティングを追加
  get "post/:id/edit" => "post#edit"

  # 7 show.html.erbが受け取ったURLからupdateアクションにルーティングしている
  post "post/:id/update" => "post#update"

  # 8 削除を押したら、idのあるこのリンクに飛ばされてdestroyアクションに行く
  post "post/:id/destroy" => "post#destroy"




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
