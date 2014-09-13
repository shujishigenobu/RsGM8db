#=== Conf ===
exdata = "cpm.tmm.txt"
table = "expression_levels"
#===

$railsdir = "#{File.dirname(__FILE__)}/../../"

outf = "#{__FILE__}.sql"

require "#{$railsdir}/config/environment.rb"

     
srcd = "#{$railsdir}/db/data_source"
cpmf = "#{srcd}/#{exdata}"
queryidf ="#{$railsdir}/db/load_data/transcript_model_ids.txt"


def quote(str)
  ActiveRecord::Base.connection.quote(str)
end
     
time_str = ActiveRecord::Base.connection.quote(Time.now.utc)
     
queryid = {}
File.open(queryidf).each do |l|
  next if /^\#/.match(l)
  a = l.chomp.split(/\t/)
  queryid[a[1]] = a[0]
end

comp2id = {}
queryid.each do |k, v|
  b = k.split(/_/)
  comp2id[b[0]] = [] unless comp2id.has_key?(b[0])
  comp2id[b[0]] << k
end

#comp2id

colnames = %w{gene 
F1HH    F2HH    F3HH    F1TH    F2TH    F3TH    M1HH    M2HH    M3HH    M1TH    M2TH    M3TH}.map{|c| c.downcase}


o = File.open(outf, "w")
STDERR.puts "sql is being saved as '#{outf}'"
File.open(cpmf).each_with_index do |l, i|
  next if i == 0
  a = l.chomp.split(/\t/, -1)
#  id = queryid[a[0]]
  gene = a[0]

  sql = ""
  sql << "INSERT "
  sql << " INTO #{table} (#{colnames.join(',')}) "
  sql << " VALUES ( '#{gene}', #{a[1..-1].join(',')}) "
  sql << ";"
  o.puts sql 

end

o.close
