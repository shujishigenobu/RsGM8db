#=== Conf ===
file = "Cpun-Hsjo-Mnat-Pame-Rspe-Znev.MP.sql"
table = "mpara_set2_entries"
#===

$railsdir = "#{File.dirname(__FILE__)}/../../"

outf = "#{__FILE__}.sql"

require "#{$railsdir}/config/environment.rb"
     
srcd = "#{$railsdir}/db/data_source"
sourcef = "#{srcd}/#{file}"
queryidf ="#{$railsdir}/db/load_data/orf_model_ids.txt"


def quote(str)
  ActiveRecord::Base.connection.quote(str)
end
     
time_str = Time.now.utc
     
queryid = {}
File.open(queryidf).each do |l|
  next if /^\#/.match(l)
  a = l.chomp.split(/\t/)
  queryid[a[1]] = a[0]
end

p queryid

o = File.open(outf, "w")
STDERR.puts "sql is being saved as '#{outf}'"
File.open(sourcef).each do |l|
  next if /^clusterID/.match(l)
  a = l.chomp.split(/\t/, -1)
  name = a[2]
  id = queryid[name]

 a.size


  data = a.dup

  sql = ""
  sql << "INSERT "
  sql << " INTO #{table} (cluster, species, gene, is_seed_ortholog, score, species_in_cluster, tree_conflict, orf_model_id) "
  sql << " VALUES ( "

  values = data
  values << id

  values.each do |v|
    raise if v.to_s.size > 255
  end

  sql << values.map{|v| quote(v)}.join(", ")
  sql << ");"

  puts sql
   
  o.puts sql 
#  FastaEntry.connection.execute(sql)
end

o.close
