Rails.application.routes.draw do

  # #to edit, you need two routes:
  # # route for the edit form
  # get 'articles/:id/edit', to: 'articles#edit', as: :edit_article

  # # route to get the particular item being edited:
  # patch 'articles/:id', to: 'articles#update'

  resources :articles, only: [:index, :show, :new, :create, :edit, :update]

end
