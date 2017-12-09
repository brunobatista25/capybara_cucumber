require 'cucumber'
require 'cucumber/rake/task'

task :run_features, [:feature] do |_task, args|
  puts "Executando a feature: #{args[:feature]}"
  sh "cucumber -t @#{args[:feature]} -p html -p pretty -p chrome"
end
