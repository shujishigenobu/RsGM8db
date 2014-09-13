class Orthodb7Hit < ActiveRecord::Base
  attr_accessible :besthit, :blast_record, :name, :orf_model_id, :orthgrp

  belongs_to :orf_model
  
end
