# #!/usr/bin/env rake

script_dir = File.expand_path(File.dirname(__FILE__))

desc 'installs components'
task :install do
  system('bundle install')
  system('npm install -g bower')
  Dir.chdir(script_dir)
  system('bower install')
  system('rm -fr .git')
  system('git init')
end

