# AWS Terraform Modules ☁️

Este diretório contém uma biblioteca de módulos para AWS, projetados para serem modulares, reutilizáveis e seguros.

## 🛠️ Módulos Disponíveis 🛠️ 

* **Application**: Orquestração de serviços de suporte e integração como ALB/NLB, SNS, SQS, Api Gateway, Msk.
* **Compute**: Recursos de processamento como instâncias EC2, Auto Scaling Groups e Lambda.
* **Database**: Persistência de dados com RDS e ElastiCache, incluindo seus respectivos Subnet, Parameter e Option Groups.
* **Network**: Estrutura de conectividade com VPC, Internet Gateway, NAT Gateway, Route Tables, Subnets e stack de Transit Gateway.
* **Security**: Proteção e monitoramento com WAFv2, Security Groups, CloudWatch Log Groups, SSM Parameter Store e Amazon Cognito (User Pools e Clients).
* **Storage**: Armazenamento de objetos com S3, incluindo configurações de CORS ,Static Website, Glue e Kinesis.

## 🚀 Como Usar

Para utilizar estes módulos, você deve configurar o provedor AWS no seu `main.tf` raiz:

```hcl
provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./modules/aws/network"
  # ... variáveis
}
```