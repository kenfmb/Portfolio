# 第11回課題
## 課題内容
* 自動テストをServerSpecを使用し、成功させる
* 課題5で構築した環境でテストを実施

## 手順
## ServerSpecをインストール
```
$ gem install serverspec  
$ mkdir serverspec  
$ cd serverspec 

# /root/raisetech-live8-sample-app/serverspec/ に ServerSpec をインストール
$ serverspec-init

Select OS type:

  1) UN*X
  2) Windows

Select number: 1

Select a backend type:

  1) SSH
  2) Exec (local)

Select number: 1

```
/root/raisetech-live8-sample-app/serverspec内にディレクトリ、ファイルが自動作成される。
```
severspec/
├─ spec
│  ├─ localhost
│  │  └─ sample_spec.rb
│  └─ spec_helper.rb
├─ Rakefile
└─ .rspec
```

## テストの設定
[sample_spec.rb](/ServerSpec/sample_spec.rb)へテスト内容を記載
```rb
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

# 指定されたURLに対してHTTPリクエストを送信し、レスポンスのHTTPステータスコードが200（成功）であることを確認
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end

```

## テスト結果
rake specでテスト実行

 ![実行結果](/images/lecture11/picture1.png)
 ![実行結果](/images/lecture11/picture2.png)

## 感想
* 手動でやるとミスが起きたりするので、自動でテストをするのはよいと思いました。
仕事でも自動のツールを使用しているので便利だと思いました。
