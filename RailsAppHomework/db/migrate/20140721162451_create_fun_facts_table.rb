class CreateFunFactsTable < ActiveRecord::Migration
  def change
    create_table :fun_facts_tables do |t|
   		t.string :content

     	t.timestamps
    end
  end
end
