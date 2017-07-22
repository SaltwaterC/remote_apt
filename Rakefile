desc 'Runs rubocop && foodcritic'
task :lint do
  sh 'rubocop'
  sh 'foodcritic --epic-fail any .'
end

desc 'kitchen converge'
task :converge do
  sh 'kitchen converge -c'
end

desc 'kitchen verify'
task :verify do
  sh 'kitchen verify -c'
end

task :clean do
  sh 'kitchen destroy -c'
  rm_rf '.kitchen'
end

desc 'Runs all the tasks'
task test: %i[converge verify lint]

desc 'Alias of test task'
task default: %i[test]
