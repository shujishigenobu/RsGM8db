class OrfModel < ActiveRecord::Base
  attr_accessible :aaseq, :description, :name, :naseq, :transcript_model_id

  belongs_to :transcript_model

  has_one :expression_level
  has_one :orthodb7_hit
#  has_one :inparanoid_hf_hc_group
  has_one :b2g_annotation
  has_one :rnaseq_set1_exp_level

  has_many :blast_nr_results
  has_many :interpro_motifs
  has_many :blastp_hcit_results
  has_many :b2g_goterms
  has_many :mpara_set1_entries
  has_many :mpara_set2_entries

  def location
    /scaffold_\d+:\d+\-\d+\([\+\-]\)/.match(description)[0]
  end

  def genome
    location.split(/:/)[0]
  end

  def range_on_genome
    m = /(\d+)\-(\d+)/.match(location.split(/:/)[1])
    return [m[1].to_i, m[2].to_i]
  end


  def model_type
    description.split[5].split(/:/)[1]
  end

  def definition
    if b2g_annotation
      return b2g_annotation.annotation
    else
      return name.sub(/-[RP][A-Z]$/, '')
    end
  end

end
