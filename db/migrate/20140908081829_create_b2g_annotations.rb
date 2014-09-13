class CreateB2gAnnotations < ActiveRecord::Migration
  def change
    create_table :b2g_annotations do |t|
      t.string :name
      t.string :annotation
      t.string :best_hit_annotation
      t.integer :orf_model_id
    end
    add_index :b2g_annotations, :name, :unique => true
    add_index :b2g_annotations, :orf_model_id, :unique => true
  end
end
