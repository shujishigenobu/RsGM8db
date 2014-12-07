class CreateMparaSet1Entries < ActiveRecord::Migration
  def change
    create_table :mpara_set1_entries do |t|
      t.integer :cluster
      t.string :species
      t.string :gene
      t.boolean :is_seed_ortholog
      t.float :score
      t.string :species_in_cluster
      t.string :tree_conflict
      t.integer :orf_model_id
    end
    add_index :mpara_set1_entries, :cluster
    add_index :mpara_set1_entries, :species
    add_index :mpara_set1_entries, :gene, :unique => false
    add_index :mpara_set1_entries, :orf_model_id, :unique => false
  end
end
