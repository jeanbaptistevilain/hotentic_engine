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

  namespace :manage, path: 'gestion' do
    scope ':site', as: 'site' do
      resources :pages
    end
  end

end
