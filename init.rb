require_dependency 'redmine_kanboard'

Redmine::Plugin.register :kanboards do
  name 'Kanboards plugin'
  author '_hitsumabushi_'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/hitsumabushi/redmine-kanboard'
  author_url 'https://twitter.com/_hitsumabushi_'

  permission :manage_kanboards, { :kanboards => [:show, :update] }
  menu :project_menu, :kanboards, {:controller => 'kanboards', :action => 'show'}, :caption => 'Kanboard', :last => true, :param => :project_id
end
