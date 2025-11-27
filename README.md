# AWS Two-Tier Architecture using Terraform

This repository contains the Terraform configuration files to provision a highly available, scalable **Two-Tier Web Architecture** on AWS. The infrastructure is defined as code (IaC), allowing for automated deployment and management of network, compute, and database resources.

## Architecture Overview

The architecture creates a Virtual Private Cloud (VPC) spanning two Availability Zones (AZs) for high availability.

![Architecture Diagram](/Images/1.png)


## Key Features

- **Infrastructure as Code (IaC):** Leveraging Terraform to define and provision the entire infrastructure, ensuring consistency and repeatability.
- **High Availability:** Designed across multiple Availability Zones (AZs) to minimize downtime and ensure the application remains highly available.
- **Security:** Implementing best practices such as security groups, and encryption to protect data and resources.
- **Database Management:** Using Amazon RDS as a managed database service to store and manage application data with reliability and durability.
- **Load Balancing:** Utilizing Elastic Load Balancers (ELBs) to distribute incoming traffic across multiple web servers, optimizing resource utilization.


## Project Structure

Here is a breakdown of the Terraform files in this repository:

| File Name | Description |
| :--- | :--- |
| `vpc.tf` | Defines the main VPC CIDR block. |
| `subnets.tf` | Provisions Public and Private subnets across two Availability Zones. |
| `ig.tf` | Creates the Internet Gateway for public internet access. |
| `pub-route-table.tf` | Route tables associating Public Subnets with the Internet Gateway. |
| `ec2.tf` | Defines the EC2 instances for the Web Tier. |
| `user-data.sh` | Shell script to bootstrap the EC2 instances (e.g., install Apache/Nginx). |
| `rds.tf` | Provisions the Amazon RDS database instance. |
| `db-subnet-group.tf` | Groups private subnets for the RDS instance. |
| `elb.tf` | Configures the Application Load Balancer. |
| `target-group.tf` | Defines health checks and target groups for the ALB. |
| `sg.tf`, `db-sg.tf`, `lb-sg.tf` | Security Groups for the Web Tier, Database, and Load Balancer. |
| `outputs.tf` | Displays important information after deployment (e.g., ALB DNS URL). |
| `variables.tf` | Variables for customizing the deployment (Region, CIDR blocks, Instance types). |
| `providers.tf` | AWS Provider configuration. |

## Prerequisites

Before deploying, ensure you have the following:

1.  **Terraform:** Installed on your local machine..
2.  **AWS Account:** An active AWS account with permissions to create VPCs, EC2s, and RDS instances.

## Final Output
Once the above-mentioned steps are completed, apply the following commands to create the resources:

`terraform plan`
The above command will provide you with a preview of the resources that are going to be created.

`terraform apply`
This Commands will create your Infrastructure in AWS.
![Final Output](/Images/Screenshot_1.png)


