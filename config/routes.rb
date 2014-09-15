Rails.application.routes.draw do

  resources :leads

  get 'welcome/home'

  get 'welcome/about'

  get 'welcome/contact'

  root :to => 'welcome#home'
end
