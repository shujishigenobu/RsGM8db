class B2gAnnotation < ActiveRecord::Base
  attr_accessible :annotation, :best_hit_annotation, :name, :orf_model_id

  belongs_to :orf_model

end
