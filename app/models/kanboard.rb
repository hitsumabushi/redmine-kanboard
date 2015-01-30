class Kanboard < ActiveRecord::Base
  unloadable
  belongs_to :project
end
