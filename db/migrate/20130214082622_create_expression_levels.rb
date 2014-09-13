class CreateExpressionLevels < ActiveRecord::Migration
  def change
    create_table :expression_levels do |t|
      t.string :gene
      t.float :f1hh
      t.float :f2hh
      t.float :f3hh
      t.float :f1th
      t.float :f2th
      t.float :f3th
      t.float :m1hh
      t.float :m2hh
      t.float :m3hh
      t.float :m1th
      t.float :m2th
      t.float :m3th
    end
    add_index :expression_levels, :gene
  end
end
