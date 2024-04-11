namespace :issue do
  desc 'Reproduce association issue'
  task({ :association => :environment }) do |task, args|
    company = Company.new

    connection = company.connections.build(default: true)

    if company.default_connections == nil
      puts "company.default_connection is nil!!"
    end

    puts ''
    puts "But connection is here."
    p company.connections

    puts ''
    puts "#detect works fine"
    p company.connections.detect { |c| c.default? }

    puts ''
    puts "#method(:find).call works fine"
    p company.connections.method(:find).call { |c| c.default? }
  end
end
