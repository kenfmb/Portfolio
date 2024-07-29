# 第7回課題
## 考えられる脆弱性

1. HTTP通信の脆弱性
HTTP通信は暗号化されていないため、通信内容がネットワーク上で簡単に傍受される可能性があります。これにより、ユーザーの個人情報や機密データが漏洩するリスクがある

### 対策
ACMにてSSL証明書を取得し、ALBにSSL証明書を適用し、HTTPSリスナーを設定する。

2. DDoS攻撃
DDoS攻撃（Distributed Denial of Service Attack）とは、対処しきれないほどの通信をサーバに送り付けることで、サーバーダウンをさせるサイバー攻撃

### 対策
AWS Shield Standard
- L3(ネットワーク層）とL4（トランスポート層）へのDDoS攻撃に対して有効
- 無料で利用できる
- AWS Shield StandardはL3とL4へのDDoS攻撃には有効ですが、HTTP／HTTPSなどを利用したL7アプリケーション層への攻撃は防御できません。そのため、インターネットに公開しているWebサイトやWebサービスがある場合、AWS Shield Standardだけでの対策では不十分である

AWS WAF
- L7アプリケーション層の保護に特化している
- DDoS攻撃だけでなくSQLインジェクションやクロスサイトスクリプティング（XSS）など、情報漏えいやアプリケーション改ざんなどの被害をもたらす攻撃を防御することができる
- AWS WAFは導入が簡単でAmazon CloudFront、Application Load Balancer（ALB）やAmazon API GatewayでWAFを有効に設定することで、煩雑な設定なくAWS WAFを導入することができる
- AWS WAFは、L7に特化しているセキュリティサービスであるため、L3やL4へのDDoS攻撃を対策できない。L3やL4のDDoS攻撃を防ぐ場合、AWS Shield Standardとの併用が必要である



