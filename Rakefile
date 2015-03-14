desc 'Build one big html'
task :html do
  sh 'asciidoctor book/book.adoc -o output/index.html'
end

desc 'Upload to neocities'
task :neocities do
  sh 'curl -n -F index.html=@output/index.html https://neocities.org/api/upload'
end

desc 'Build & Upload'
task :all => [:html, :neocities]
