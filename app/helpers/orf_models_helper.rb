module OrfModelsHelper

  def link_to_jbrowse_nibb(orf_model)
    om = orf_model
    url = "http://133.48.62.140/jbrowse/jb_rspe02/?loc=#{om.genome}%3A#{om.range_on_genome.join('..')}"
  end

  def url_rnaseq_chart(orf_model)
    url = "http://133.48.62.157/download/termiteg/rnaseq_chart/#{orf_model.name.sub(/-PA$/, '')}.cpm.png"
  end

  def url_rnaseq_chart_body(orf_model)
    url = "http://133.48.62.157/download/termiteg/rnaseq_chart_body/#{orf_model.name.sub(/-PA$/, '')}.cpm.body.png"
  end

  def url_rnaseq_chart_head(orf_model)
    url = "http://133.48.62.157/download/termiteg/rnaseq_chart_head/#{orf_model.name.sub(/-PA$/, '')}.cpm.head.png"
  end

  def url_rnaseq_rpkm_chart(orf_model)
    url = "http://133.48.62.157/download/termiteg/barplot_rpkm/#{orf_model.name.sub(/-PA$/, '')}.rpkm.png"
  end

  def url_rnaseq_rpkm_chart_body(orf_model)
    url = "http://133.48.62.157/download/termiteg/barplot_rpkm/#{orf_model.name.sub(/-PA$/, '')}.rpkm.body.png"
  end

  def url_rnaseq_rpkm_chart_head(orf_model)
    url = "http://133.48.62.157/download/termiteg/barplot_rpkm/#{orf_model.name.sub(/-PA$/, '')}.rpkm.head.png"
  end


end
