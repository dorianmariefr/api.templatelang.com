Rails.application.routes.draw do
  get "template" => "template#create"
  post "template" => "template#create"

  get "code" => "code#create"
  post "code" => "code#create"

  root "pages#home"
end
