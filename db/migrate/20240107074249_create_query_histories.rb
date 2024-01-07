class CreateQueryHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :query_histories do |t|
      t.string :query
      t.integer :count

      t.timestamps
    end
  end
end
