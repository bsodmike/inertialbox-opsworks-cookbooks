#
# Cookbook Name:: delayed_job
# Recipe:: restart
#
# Copyright 2013, FreeRunning Technologies
#
# All rights reserved - Do Not Redistribute
#

bash "restart-monit-service" do
  user 'root'
  code <<CODE
service monit restart
CODE
end

bash "restart-all-delayed_job" do
  user 'root'
  code <<CODE
monit -g delayed_job restart
CODE
end
