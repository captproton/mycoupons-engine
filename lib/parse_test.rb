# require "nokogiri"

# Parse the file
file_to_parse = File.open('pam_dom.html')
parsed_file = Nokogiri::HTML(file_to_parse)
file_to_parse.close

# Get the elements we want
parsed_file.css("td:nth-child(2)").each do |item|
  groupon_name = item.css(".groupon_name a").text.strip
  groupon_expiration = item.css("td:nth-child(3) p").text.strip
  groupon_code = item.css(".coupon_code strong").text.strip

  puts "#{groupon_name}  #{groupon_code}  #{groupon_expiration}"
end

