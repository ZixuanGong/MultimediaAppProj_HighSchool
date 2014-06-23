Rails.application.routes.draw do

  resources :teachers
  resources :courses
  resources :clas
  resources :lessons
  resources :sessions, only: [:new, :create, :destroy]


  root 'pages#home'

  get '/teachers_depts', to: 'teachers#departments', via: 'get'
  get '/teachers_depts/:department', to: 'teachers#department', via: 'get'
  get '/teachers/:id/timetable' => 'teachers#timetable', as: :timetable

  
  get 'pages/application', to: 'pages#application', via: 'get'
  get 'pages/faq', to: 'pages#faq', via: 'get'
  get 'pages/checklist', to: 'pages#checklist', via: 'get'

  get '/classes', to: 'clas#index', via: 'get'
  get '/clas/:id/photos', to:'clas#photos', as: :photos

  get '/courses_by_grade', to: 'courses#by_grade', via: 'get'

  get '/signin' => 'sessions#new', via: 'get'
  get '/signout' => 'sessions#destroy', via: 'delete'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
