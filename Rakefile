HTML_FILE = 'output/index.html'

desc 'Build one big html'
task :html do
  sh "asciidoctor book/book.adoc -o #{HTML_FILE}"
end

task :process do
  require_relative 'lib/html_filter'
  d = WotTacticsHtmlProcesser.load(HTML_FILE)
  d.process
  d.write
end

desc 'Upload to neocities'
task :neocities do
  sh "curl -n -F index.html=@#{HTML_FILE} https://neocities.org/api/upload"
end

desc 'Build & Upload'
task :all => [:html, :process, :neocities]
