# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'projects/:project_id/kanboards/show', :controller => 'kanboards', :action => 'show', :as => :show_kanboards
put 'projects/:project_id/kanboards/update', :controller => 'kanboards', :action => 'update', :as => :update_kanboards


