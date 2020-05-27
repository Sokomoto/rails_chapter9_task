Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get '/home/about' => 'abouts#top'
  devise_for :users #controllers: {registrations: 'users/registrations',sessions: 'users/sessions'}
  resources :users, except:[:new, :create]
  resources :books, except:[:new]
end