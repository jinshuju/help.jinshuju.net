require 'date'
require 'erb'

index = 60
File.open("articles.txt").each_line do |line|
  @title,@name,@content,@category,@priority = line.split(":")
  article_date = Date.new(2014, 2, 7) + index
  @date = article_date.strftime("%F 12:12:12")
  file_name = "2014-2-7-#{@name}.md"
  erb = ERB.new(File.read("template.md.erb"))
  puts "Writing file #{file_name}......"
  file = "../_posts/#{file_name}"
  if File.exists?(file)
    puts "#{file_name} already exsisted. Skipped."
  else
    File.write("../_posts/#{file_name}", erb.result)
  end
  index -= 1
end