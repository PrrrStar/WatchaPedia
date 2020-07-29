Rails.application.routes.draw do
  
  resources :models
  
  authenticate :user, lambda { |u| u.admin? } do
      begin
        mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
      rescue
        redirect_to new_user_session_path
      end
  end

  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  #devise controller 연동
  #devise_for  :user, controllers: {sessions: 'user/sessions'}
  
  
  get '/' => 'models#index'
  post '/comment' => 'models#comment'
end
