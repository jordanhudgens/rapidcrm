Rails.application.routes.draw do

  resources :leads do
    collection { post :import }
  end

  get 'welcome/home'

  get 'welcome/about'

  get 'welcome/contact'

  root :to => 'welcome#home'
end
