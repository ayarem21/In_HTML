class In_HTML
  def self.input_in_html (content, bypass_html)
    content_ = ''
    if bypass_html == false
      content_ = content.gsub(/<script>.*<\/script>/, '')
    else
      content_ = content
    end
    f = File.new("index.html", "w")
    f.puts("<!DOCTYPE html>\n")
    f.puts("<html lang='en'>\n")
    f.puts("<head>\n<meta charset='utf-8'>\n<title>Title</title>\n</head>\n")
    f.puts("<body>\n")
    f.puts("<div>#{content_}</div>\n")
    f.puts("</body>\n")
    f.puts("</html>\n")
    f.close
  end
end
