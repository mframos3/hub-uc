Rails.application.routes.draw do
  resources :messages
  resources :moderator_requests
  resources :comments
  resources :rooms do
    resources :comments, module: :rooms do
      member do
        put 'like', to: 'comments#upvote'
        put 'dislike', to: 'comments#downvote'
      end
    end
    member do
      put 'like_availability', to: 'rooms#upvote_availability'
      put 'dislike_availability', to: 'rooms#downvote_availability'
      put 'like_noise', to: 'rooms#upvote_noise'
      put 'dislike_noise', to: 'rooms#downvote_noise'
      put 'like_plugs', to: 'rooms#upvote_plugs'
      put 'dislike_plugs', to: 'rooms#downvote_plugs'
    end
  end
  resources :locations
  resources :courses
  resources :events
  resources :posts do
    resources :comments, module: :posts do
      member do
        put 'like', to: 'comments#upvote'
        put 'dislike', to: 'comments#downvote'
      end
    end
    member do
      put 'like', to: 'posts#upvote'
      put 'dislike', to: 'posts#downvote'
    end
  end
  root to: 'pages#home'
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :users
  resources :favorite_posts, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
