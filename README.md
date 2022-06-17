### Sumário
1. Sobre o projeto
1. Infraestrutura

### Sobre o projeto

Projeto básico de IaC para testes de esteira CI/CD Jenkins ou outros.
```
Provider: AWS
Region: US-EAST-2 (Ohio)
AMI: Amazon Linux 2 Kernel 5.10
```
Esteira CI/CD ao qual este projeto pertence:
https://github.com/danilomarquesn/bootcamp-private

### Infraestrutura

| Recursos  |
| ------------- |
| Elastic Compute Cloud      |
| Security Group      |

###### Informar:

```
S3 (remote state) **Necessário informar um bucket existente
[DATA] for VPC and Subnet **Necessário informar uma VPC e Subnet existente
[DATA] for Key **Necessário informar uma Key existente
```