#引用文件

require_relative "words_from_string.rb" 
require_relative "count_frequency.rb"   

#使用%{}方法,创建字符串

raw_list = %{The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count.}

#使用words_from_string method 

word_list = words_from_string(raw_list)

#create a hash named counts with word and counts

counts = count_frequency(word_list)

#sorting with count

sorted = counts.sort_by {|word,count| count}

#using the last five,hash has the order
top_five = sorted.last(5)

#puts the result
top_five.each do |word, count|
	puts "#{word}: #{count}"
end
