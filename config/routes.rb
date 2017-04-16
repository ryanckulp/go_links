Rails.application.routes.draw do
    scope PluginRoutes.system_info["relative_url_root"] do

      get 'go/:slug', to: 'plugins/go_link/admin#show'

      #Admin Panel
      scope :admin, as: 'admin', path: PluginRoutes.system_info['admin_path_name'] do
        namespace 'plugins' do
          namespace 'go_link' do
            controller :admin do
              get :new
              get :show
              post :create
              get :settings
              post :save_settings
            end
          end
        end
      end

    end
  end
