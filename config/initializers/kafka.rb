require 'kafka'
puts "Kafka | Environment: #{Rails.env}"

$kafka = Kafka.new( seed_brokers: ["kafka://127.0.0.1:9092"],
                    logger: Rails.logger)

DeliveryBoy.configure do |config|
    config.brokers = YAML.load_file(File.join(Rails.root, "config", "kafka.yml"))[Rails.env]["brokers"]
end

Racecar.configure do |config|
    config.brokers = YAML.load_file(File.join(Rails.root, "config", "racecar.yml"))[Rails.env]["brokers"]
end
