
include_recipe "keboola-common"
include_recipe "keboola-php56"
include_recipe "keboola-apache2"

htpasswd "/etc/httpd/.htpasswd" do
  user "keboola"
  password "#{node['keboola-syrup-es-proxy']['password']}"
  type "sha1"
end

web_app "#{node['fqdn']}" do
  template "proxy.conf.erb"
  server_name node['fqdn']
  server_aliases [node['hostname'], 'syrup-es-proxy.keboola.com']
  enable true
end
