class RnaseqSet1ExpLevel < ActiveRecord::Base
  attr_accessible :idx11R1, :idx20R1, :name, :orf_model_id

  belongs_to :orf_model

end
