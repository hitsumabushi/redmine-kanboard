class CreateKanboards < ActiveRecord::Migration
  def change
    create_table :kanboards do |t|
      t.integer :project_id
      t.string :url
    end
  end
end
