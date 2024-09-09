require 'spec_helper'

listen_port = 80
listen_port = 22

# Nginxインストール確認
describe package('nginx') do
  it { should be_installed }
end

# Nginx起動確認
describe service('nginx') do
  it { should be_running }
end

# gitインストール確認
describe package('git') do
  it { should be_installed }
end

# rubyバージョン確認
describe command('ruby --version') do
  its(:stdout){ should match /ruby 3\.2\.3/ }
end

# Bundlerバージョン確認
describe command('bundler --version') do
  its(:stdout){ should match /Bundler version 2\.3\.14/ }
end

# Yarnバージョン確認
describe command('yarn --version') do
  its(:stdout){ should match /^1\.22\.19/ }
end

# Nodeバージョン確認
describe command('node --version') do
  its(:stdout){ should match /^v17\.9\.1$/ }
end

# 指定のportでlistenしているか
describe port(listen_port) do
  it { should be_listening }
end

# 指定されたURLに対してHTTPリクエストを送信し、レスポンスのHTTPステータスコード>が200（成功）であることを確認
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
