desc "build HTML from README.md"
task :html do
  sh "kramdown README.md  > README.html"
end

desc "install gems"
task :install do
  sh "bundle install"
end

desc "Test_Class_Fraccion"
task :test do
  sh "ruby -Ilib -Itest ./tc_racional.rb"
end
