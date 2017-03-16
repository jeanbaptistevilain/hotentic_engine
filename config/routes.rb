HotenticEngine::Engine.routes.draw do

  # display sites and pages content
  scope module: 'display' do
    scope 'apercu' do
      resources :sites, only: [:show], path: '/' do
        resources :pages, only: [:show], path: '/', param: :path
      end
    end
  end

  # edit sites and pages content
  scope module: 'edit' do
    scope 'edition' do
      resources :sites, only: [:show], path: '/' do
        resources :pages, only: [:show], path: '/', param: :path
      end
    end
  end

  scope module: 'manage' do
    scope 'gestion', as: 'manage' do
      resources :sites, path: '/', shallow: true do
        resources :pages
      end
    end
  end



end
