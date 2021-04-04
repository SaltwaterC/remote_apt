desc 'Runs cookstyle'
task :lint do
  sh 'cookstyle'
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
task test: %i[lint converge verify]

desc 'Alias of test task'
task default: %i[test]
