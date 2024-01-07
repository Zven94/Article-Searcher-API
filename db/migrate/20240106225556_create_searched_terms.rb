class CreateSearchedTerms < ActiveRecord::Migration[7.1]
  def change
    create_table :searched_terms do |t|
      t.string :term
      t.integer :searched_counter

      t.timestamps
    end
  end
end
