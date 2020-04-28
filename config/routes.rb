Rails.application.routes.draw do
  resources :questions
  root 'home#index'
  get 'home/index'
  get '/about' => 'home#about'
  get '/about/question' => 'home#question'
  get '/about/answer' => 'home#answer'
  # post '/questions' => 'home#temp'
  get '/questions/:id' => 'home#questiondetails'
  post '/questions/answers'=> 'home#temp'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
