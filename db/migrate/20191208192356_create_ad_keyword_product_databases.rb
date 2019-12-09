class CreateAdKeywordProductDatabases < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
    	t.string :asin, null: false
    	t.string :name, null: false
    end

    create_table :keywords do |t|
    	t.string :keyword_id, null: false
    	t.string :ad_group, null: false
    	t.string :keyword, null: false
    end

    create_table :ads do |t|
    	t.date :date, null: :false
    	t.integer :impressions, null: false, default: 0
    	t.integer :clicks, null: false, default: 0
    	t.integer :sales, null: false, default: 0
    	t.float :ad_spend, null: false, default: 0
    	t.string :keyword_id, index: true, null: false
    	t.string :asin, index: true, null: false
    end
  end
end
