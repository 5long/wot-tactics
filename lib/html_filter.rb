require "nokogiri"

class WotTacticsHtmlProcesser
  def self.load(html_file)
    new(html_file)
  end
  
  def initialize(path)
    @path = path
    @doc = Nokogiri::HTML(::File.read(path))
  end

  def process
    @doc.at_css('link[rel=stylesheet]').remove
  end

  def write
    File.open @path, 'w' do |f|
      f.write(@doc.to_html)
    end
  end
end
