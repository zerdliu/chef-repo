current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "zerdliu"
client_key               "#{current_dir}/zerdliu.pem"
validation_client_name   "baidu-validator"
validation_key           "#{current_dir}/baidu-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/baidu"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
