Rails.application.routes.draw do
  resources :formatted_texts, :controller => :contents, :except => [:index, :show], :path => "content"
end
