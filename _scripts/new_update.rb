require 'date'
require 'erb'

today = DateTime.now.strftime("%F")
puts "Generating a new update. Be careful providing information below."
print "The date in yyyy-MM-dd format, enter for today #{today}: "
input = gets.chomp
@date = input == "" ? today : input
print "Title for this update(<100 chars): "
input = gets.chomp
if input == ""
  puts "You haven't input title. Remmeber edit in the markdown file."
end
@title = input

file_name = "#{@date}-update#{@date.gsub('-', '')}.md"
file = "../_posts/#{file_name}"
erb = ERB.new(File.read("update.md.erb"))
if File.exists?(file)
  puts "#{file_name} already exsisted. Skipped."
else
  File.write("../_posts/#{file_name}", erb.result)
  puts "_posts/#{file_name} generated. "
end


