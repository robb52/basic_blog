Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "posts#index"

  get 'posts', to: "posts#index"

  get 'posts/new', to: "posts#new"

  get 'posts/:id/edit', to: "posts#edit", as: :edit_post

  patch 'posts/:id', to: "posts#update"

  delete 'posts/:id', to: "posts#destroy", as: :delete_post

  get 'posts/:id', to: "posts#show", as: :post

  post 'posts', to: "posts#create"

  get 'blogs', to: "blogs#index"

  get 'blogs/new', to: "blogs#new"

  get 'blogs/:id/edit', to: "blogs#edit", as: :edit_blog

  patch 'blogs/:id', to: "blogs#update"

  delete 'blogs/:id', to: "blogs#destroy", as: :delete_blog

  get 'blogs/:id', to: "blogs#show", as: :blog

  post 'blogs', to: "blogs#create"

end
