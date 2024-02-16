class HtmlGenerator
    def initialize
      @output = ''
    end
  
    def tag(name, content)
      @output += "<#{name}>#{content}</#{name}>"
    end
  
    def to_s
      @output
    end
  end
  
  html = HtmlGenerator.new
  html.tag :p, "This is a paragraph"
  html.tag :h1, "This is a header"
  puts html
  