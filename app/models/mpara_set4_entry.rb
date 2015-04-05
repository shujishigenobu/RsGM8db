class MparaSet4Entry < ActiveRecord::Base
  attr_accessible :cluster, :gene, :is_seed_ortholog, :orf_model_id, :score, :species, :species_in_cluster, :tree_conflict

  belongs_to :orf_model
end
