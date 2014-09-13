class TranscriptModel < ActiveRecord::Base
  attr_accessible :description, :len, :name

  has_many :orf_models

  def self.blastdb
    "#{Rails.root}/db/data_source/blastdb/#{Settings.transcript_fasta}"
  end

  def seq
    require 'bio'
    cmd = "blastdbcmd -db #{TranscriptModel.blastdb} -entry #{name}"
    r = nil
    IO.popen(cmd){|io| r = io.read}
    fas = Bio::FastaFormat.new(r)
    fas.seq
  end


end
