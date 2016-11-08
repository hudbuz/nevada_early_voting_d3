Rails.application.routes.draw do
  root to: "application#index"
  get 'voters' => "application#voters"
  get 'upload' => "application#upload_voters"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
