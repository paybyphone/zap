# encoding: UTF-8

`mkdir -p /etc/cron.d`
`touch /etc/cron.d/a`
`touch /etc/cron.d/b`

cron_d 'b' do
  action :nothing
end

cron_d 'c' do
  action :nothing
end

cron_d 'd' do
  minute  0
  hour    23
  command 'true'
  user    'daemon'
end

include_recipe 'zap::cron_d'
