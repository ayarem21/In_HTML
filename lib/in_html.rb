class In_HTML
  def self.input_in_html (content, bypass_html)
    content_ = ''
    if bypass_html == false
      content_ = content.gsub(/<script>.*<\/script>/, '')
    else
      content_ = content
    end
    f = File.new("index.html", "w")
    f.puts("<body>\n")
    f.write("<div>#{content_}</div>\n")
    f.write("<body>")
    f.close
  end
end
