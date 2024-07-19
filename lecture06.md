# 第6回課題

## CloudTrailのイベント
* イベント名：ModifyTargetGroup 
* 含まれている内容："healthCheckProtocol":"HTTP"
　　　　　　　　　  "healthCheckPath": "/kkk"
                    "healthCheckIntervalSeconds": 10
![CloudTrailイベント1](images/lecture06/CloudTrailイベント1.png)

![CloudTrailイベント2](images/lecture06/CloudTrailイベント2.png)

# CloudWatchアラームを使用しALBのアラーム設定
* 現在のヘルスチェックがHealthyであることを確認
![ターゲットグループのヘルスチェック状態](images/lecture06/ターゲットグループのヘルスチェック状態.png)
* 現在の正常な状態のヘルスチェックの設定を確認
![正常な状態のヘルスチェック設定](images/lecture06/正常な状態のヘルスチェック設定.png)

* アラームを出すために存在しないヘルスチェックパスを設定
![異常なヘルスチェックパス](images/lecture06/異常なヘルスチェックパス.png)

* 存在しないヘルスチェックパスを設定したことにより、ヘルスステータスがUnhealthyになったことを確認
![Unhealthy](images/lecture06/Unhealthy.png)

* アラーム状態になったことを確認
![アラーム状態](images/lecture06/アラーム状態.png)

* NG状態のメール通知
![NG状態のメール](images/lecture06/NG状態のメール.png)

* OK状態にするため、存在するパスを設定
![正常なヘルスチェックパスの設定](images/lecture06/正常なヘルスチェックパスの設定.png)

* ヘルスステータスがHealthyになったことを確認
![Healthy](images/lecture06/Healthy.png)

* 状態がOKのアラーム
![正常な状態](images/lecture06/正常な状態.png)

* OK状態のメール通知
![OKの状態](images/lecture06/OKの状態.png)

* webサーバ(nginx)を停止させてターゲットグループunhealthyの状態で確認
![Nginxを停止](images/lecture06/Nginxを停止.png)

* Nginx停止後のヘルスステータスを確認
![Nginx停止後](images/lecture06/Nginx停止後.png)

* Nginx停止後のアラームの状態
![Nginx停止後アラーム状態](images/lecture06/Nginx停止後アラーム状態.png)

* Nginx停止後のメール通知
![Nginx停止後Eメール](images/lecture06/Nginx停止後Eメール.png)

# AWS利用料の見積もりを作成

見積もりURLは[こちら](https://calculator.aws/#/estimate?id=9f43cdd2b3446e9c2d466499a9c1eddf6d2660e4)

# 現在の利用料を確認
* 現在の利用料 $5.74
![現在の利用料](images/lecture06/現在の利用料.png)
![現在の利用料2](images/lecture06/現在の利用料2.png)


* EC2の利用料金 $0.23
![EC2利用料金](images/lecture06/EC2利用料金.png)

* 無料利用枠範囲内かどうか
![無料利用枠範囲内](images/lecture06/無料利用枠範囲内.png)

