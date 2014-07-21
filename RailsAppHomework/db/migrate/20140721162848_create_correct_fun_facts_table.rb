class CreateCorrectFunFactsTable < ActiveRecord::Migration
  def change
    create_table :fun_facts do |t|
    	t.string :content

     	t.timestamps
    end
  end
end
