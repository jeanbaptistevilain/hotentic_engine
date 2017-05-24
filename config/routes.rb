HotenticEngine::Engine.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

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
    scope 'edition', as: 'edit' do
      resources :sites, only: [:show], path: '/' do
        resources :pages, only: [:show], path: '/', param: :path
      end
      resources :text_containers, only: [:edit, :update], path: 'textes'
      resources :image_containers, only: [:edit, :update], path: 'images'
      resources :contained_images, only: [:edit, :update]
    end
  end

  namespace :manage, path: 'gestion' do
    scope ':site', as: 'site' do
      resources :pages
    end
  end

end

