module TermitegLinkHelper

  def url_termiteblast_tcas(q)
    raise unless /^gi\|\d+/.match(q)
    acc = /(.+\|){3}(.+)\.\d/.match(q)[2]
    base = "http://133.50.220.25:9292/get_sequence/?id=" +
      "Tcas_NCBI_r102_PEP:" + "%ACC%" +
      "&db=/usr/local/sequenceserver-0874faa/db/Tcas_NCBI_r102_PEP"
    return base.sub(/%ACC%/, acc)
    end

  def url_termiteblast_znev(q)
    base = "http://133.50.220.25:9292/get_sequence/?id=" + "%ZNEV%" +
      "&db=/usr/local/sequenceserver-0874faa/db/Znev_OGS_v2.2_pep"
    raise unless /^Znev_\d+/.match(q)
    return base.sub(/%ZNEV%/, q)
    end

  def url_termiteblast_mnat(q)
    base = "http://133.50.220.25:9292/get_sequence/?id=" + "%MNAT%" +
      "&db=/usr/local/sequenceserver-0874faa/db/Mnat_gene_v1.2_pep"
    raise unless /^Mnat_\d+/.match(q)
    return base.sub(/%MNAT%/, q)
    end

  def url_termiteblast_pame(q)
    base = "http://133.50.220.25:9292/get_sequence/?id=" +
      "Pame_n11723f_nrPEP_Trinity140730_k1dn:" + "%PAME%" +
      "&db=/usr/local/sequenceserver-0874faa/db/Pame_n11723f_nrPEP_Trinity140730_k1dn"
    raise unless /^Pame_m\.\d+/.match(q)
    return base.sub(/%PAME%/, q)
    end

  def url_termiteblast_cpun(q)
    base = "http://133.50.220.25:9292/get_sequence/?id=" +
      "Cpun_n11723f_nrPEP_Trinity140730_dnk1:" + "%CPUN%" +
      "&db=/usr/local/sequenceserver-0874faa/db/Cpun_n11723f_nrPEP_Trinity140730_dnk1"
    raise unless /^Cpun_m\.\d+/.match(q)
    return base.sub(/%CPUN%/, q)
    end

  def url_termiteblast_hsjo(q)
    base = "http://133.50.220.25:9292/get_sequence/?id=" +
      "Hsjo_n11723i_nrPEP_Trinity140728:" + "%HSJO%" +
      "&db=/usr/local/sequenceserver-0874faa/db/Hsjo_n11723i_nrPEP_Trinity140728"
    raise unless /^Hsjo_m\.\d+/.match(q)
    return base.sub(/%HSJO%/, q)
    end


end

