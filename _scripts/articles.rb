File.open("articles.txt").each_line do |line|
  title,name,content,category,priority = line.split(":")
  
end