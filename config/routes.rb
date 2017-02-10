HotenticEngine::Engine.routes.draw do

  resources :sites, only: [:show], path: 'apercu' do
    resources :pages, only: [:show], path: '/'
  end



end
