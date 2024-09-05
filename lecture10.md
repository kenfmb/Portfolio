# 第10回課題

## **CloudFormation**を使いこれまでに作成した環境をコード化する

### 概要

**1. VPC**

**2. EC2**

**3. RDS**

**4. ALB**

**5. スタック**

**6. S3**

**7. EC2からRDSへ接続確認**

* * *

### テンプレート

-  [**service.yaml**](CloudFormation/service.yaml)

-  [**Security.yaml**](CloudFormation/Security.yaml)

-  [**Application2.yaml**](CloudFormation/Application2.yaml)

 
### **1. VPC**

 ![VPC](images/lecture10/VPC1.png)
 ![VPC](images/lecture10/VPC2.png)
 ![VPC](images/lecture10/VPC3.png)

### **2. EC2**

 ![EC2](images/lecture10/EC2.png)

- #### セキュリティーグループ

![セキュリティグループ](images/lecture10/セキュリティグループ.png)


### **3. RDS**
    
 ![RDS](images/lecture10/RDS.png)

- #### サブネット

 ![VPC Publicsubnet1](images/lecture10/Publicsubnet1.png)
 ![VPC Publicsubnet2](images/lecture10/Publicsubnet2.png)
 ![VPC Privatesubnet1](images/lecture10/Privatesubnet1.png)
 ![VPC Privatesubnet1](images/lecture10/Privatesubnet2.png)

- #### セキュリティーグループ

 ![RDS sg](images/lecture10/RDSセキュリティグループ.png)


### **4. ALB**

 ![ALB](images/lecture10/ALB.png)

### **5. スタック**

 ![スタック作成](images/lecture10/スタック.png)


### **6. S3**

 ![S3](images/lecture10/S3.png)


### **7. EC2からRDSへ接続確認**

 ![mysql](images/lecture10/EC2からRDSへ接続確認.png)  


### **感想**
コード化するのはなかなかに難しく、かなり時間がかかってしまった。
まだ、完全に理解したとは言えないと思うので、理解できるよう学習を続けていきたい。
