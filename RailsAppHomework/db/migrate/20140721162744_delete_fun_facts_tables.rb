class DeleteFunFactsTables < ActiveRecord::Migration
  def change
  	drop_table :fun_facts_tables
  end
end
