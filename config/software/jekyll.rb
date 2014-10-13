name "Jekyll"
default_version "2.4.0"

dependency "ruby"
dependency "rubygems"

build do
  gem "install jekyll -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  gems_to_remove = %w[
    bayes.rb
    kramdown
    posix-spawn-benchmark
    safe_yaml
    sass-convert
    summarize.rb
    listen
    redcarpet
    sass
    scss
  ].each do |executable|
    delete "#{install_dir}/bin/#{executable}"
  end
end
