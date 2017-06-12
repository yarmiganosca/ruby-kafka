require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec

namespace :socktest do
  task :server do
    require 'webrick'

    server = WEBrick::HTTPServer.new(Port: 18_000)

    trap "INT" do
      server.shutdown
    end

    server.start
  end

  task :loop do
    require 'kafka'

    puts 'looping'
    loop do
      Kafka::SocketWithTimeout.new('localhost', 18_000)
    end
  end
end
