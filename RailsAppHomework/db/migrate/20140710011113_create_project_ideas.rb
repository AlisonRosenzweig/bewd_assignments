class CreateProjectIdeas < ActiveRecord::Migration
  def change
    create_table :project_ideas do |t|
      t.string :project_title
      t.string :project_details

      t.timestamps
    end
  end
end
