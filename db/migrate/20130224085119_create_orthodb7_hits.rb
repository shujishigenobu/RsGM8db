class CreateOrthodb7Hits < ActiveRecord::Migration
  def change
    create_table :orthodb7_hits do |t|
      t.string :name
      t.string :orthgrp
      t.string :besthit
      t.text :blast_record
      t.integer :orf_model_id
    end
    add_index :orthodb7_hits, :name, :unique => true
    add_index :orthodb7_hits, :orthgrp
    add_index :orthodb7_hits, :orf_model_id, :unique => true
  end
end
