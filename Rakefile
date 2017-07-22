desc 'Runs rubocop && foodcritic'
task :lint do
  sh 'rubocop'
  sh 'foodcritic --epic-fail any .'
end

desc 'Runs all the tasks'
task :test do
  sh 'kitchen converge -c'
  sh 'kitchen verify -c'
  Rake::Task[:lint].invoke
end

task :clean do
  sh 'kitchen destroy -c'
  rm_rf '.kitchen'
end

desc 'Alias of test task'
task default: %i[test]
