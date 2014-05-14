MultilingualSite::Application.routes.draw do
  resources :products
  scope "(:locale)", :locale => /en|tr/ do
    root :to => 'products#index'
  end
end
