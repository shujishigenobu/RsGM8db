class B2gGoterm < ActiveRecord::Base
  attr_accessible :goterm, :name, :orf_model_id

  belongs_to :orf_model

end
