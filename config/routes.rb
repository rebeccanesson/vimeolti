Rails.application.routes.draw do
  mount DceLti::Engine => "/lti"

  resources :vimeo_embeds, :only => :create

  root to: "home#index"

end
