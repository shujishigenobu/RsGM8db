module OrfModelsHelper

  def link_to_jbrowse_nibb(orf_model)
    om = orf_model
    url = "http://133.48.62.140/jbrowse/jb_rspe02/?loc=#{om.genome}%3A#{om.range_on_genome.join('..')}"
  end

end
