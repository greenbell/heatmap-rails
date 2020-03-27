Rails.application.routes.draw do
  post 'h/s', controller: 'heat_map_points', action: 'create'
  resources :heat_map_points, :only => "create"
end
