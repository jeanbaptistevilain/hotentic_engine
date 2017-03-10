HotenticEngine::Engine.routes.draw do

  scope module: 'display' do
    scope 'apercu' do
      resources :sites, only: [:show], path: '/' do
        resources :pages, only: [:show], path: '/', param: :path
      end
    end
  end

  scope module: 'edit' do
    scope 'edition' do
      resources :sites, only: [:show], path: '/' do
        resources :pages, only: [:show], path: '/', param: :path
      end
    end
  end



end
