class CreateHeadlines < ActiveRecord::Migration[5.2]
  def change
    create_table :headlines do |t|
    	t.string :quote
    	t.string :player
      t.timestamps
    end
  end
end
