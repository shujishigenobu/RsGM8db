class CreateB2gGoterms < ActiveRecord::Migration
  def change
    create_table :b2g_goterms do |t|
      t.string :name
      t.string :goterm
      t.integer :orf_model_id
    end
    add_index :b2g_goterms, :name
    add_index :b2g_goterms, :goterm
    add_index :b2g_goterms, :orf_model_id
  end
end
