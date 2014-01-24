Blenno::Application.routes.draw do
  

  get "blog/index"
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins, :path => 'webapp'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  resources :blogs

  post 'teste' => 'admin#teste', as: 'teste'
  get 'usuario' => 'home#usuario'
  get 'usuario/favoritar/:id' => 'home#favoritar', as: 'favoritar'
  get 'usuario/desfavoritar/:id' => 'home#desfavoritar', as: 'desfavoritar'

  get 'destino/:id' => "destinos#show", as: 'inicio_destino'
    resources :destinos, path: '/webapp/destinos'

  # Admin
  get 'webapp' => 'admin#index', as: 'webapp'
  get 'webapp/destinos/new/step2/:id' => 'destinos#step2', as: 'destinos_step2'

  resources :uploads
  get 'api/uploads/tags' => 'uploads#tags', as: 'api_upload_tags'
  get 'api/uploads/tags/:id' => 'uploads#tags'
  get 'api/uploads/imagens/' => 'uploads#imagens', as: 'api_upload_imagens'
  get 'api/uploads/imagens/:id' => 'uploads#imagens'





  #Gerenciar Destino
  #get 'webapp/destinos' => 'destino#index', as: 'adm_destinos' #Visualizar Todos Destinos
  #get 'webapp/destinos/novo' => 'destino#new', as: 'adm_novo_destino' #Cadastrar Novo Destino

  #match 'webapp/destinos/atualizar', to: 'destino#update', as: 'adm_destino_atualizar', via: [:get, :post]
  #post 'webapp/destinos/salvar' => 'destino#save', as: 'adm_novo_salvar' #Cadastrar Novo Destino

  
  #get 'webapp/destinos/:id' => 'destino#view', as: 'adm_destino' #Visualizar destino selecionado
  #get 'webapp/destinos/editar/:id' => 'destino#edit', as: 'adm_editar_destino' #Editar Destino
  #delete 'webapp/destinos/apagar/:id' => 'destino#destroy', as: 'adm_apaga_destino'



  #Ocamentos
  #get 'webapp/orcamentos/novo' => 'orcamento#novo', as: 'novo_orcamento'

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

match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
match 'auth/failure', to: redirect('/'), via: [:get, :post]
match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
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
