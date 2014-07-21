class DeleteFunFactTable < ActiveRecord::Migration
  def change
  	drop_table :fun_facts
  end
end
