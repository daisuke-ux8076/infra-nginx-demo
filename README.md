## Overview

This project demonstrates how modern DevOps tools work together to provision, configure, and deploy infrastructure on AWS using Infrastructure as Code and Configuration Management principles.

The goal is to build a realistic, production-inspired workflow that automates infrastructure provisioning, server configuration, and deployment through a CI/CD pipeline.

Rather than focusing only on writing code, this project emphasizes understanding why each tool is used, how they interact, and the best practices followed in real engineering teams.

---

## Project Objectives

* Provision AWS infrastructure using Terraform
* Configure servers using Ansible
* Automate validation and deployment using GitHub Actions
* Follow Infrastructure as Code (IaC) best practices
* Organize the repository using a maintainable project structure
* Simulate a production-style deployment workflow

---

## Technology Stack

* Terraform
* Ansible
* GitHub Actions
* AWS
* Ubuntu EC2
* Nginx

---

## Architecture

```text
GitHub Repository
        │
        ▼
GitHub Actions (CI)
        │
        ├── Terraform Format Check
        ├── Terraform Validate
        ├── Ansible Syntax Check
        ▼
Terraform
        │
        ├── Create VPC
        ├── Create Public & Private Subnets
        ├── Create Internet Gateway
        ├── Create NAT Gateway
        ├── Create Route Tables
        ├── Create Security Groups
        ├── Launch EC2 Instance
        ▼
Ansible
        │
        ├── Install Nginx
        ├── Configure Nginx
        ├── Deploy Jinja2 Template
        ├── Manage Variables
        ├── Use Roles
        ├── Use Handlers
        └── Secure Secrets with Ansible Vault
        ▼
GitHub Actions (CD)
        │
        ├── Terraform Apply
        └── Run Ansible Playbook
```

---

## Repository Structure

```text
.
├── .github/
│   └── workflows/
│       ├── ci.yml
│       └── cd.yml
├── ansible/
├── terraform/
└── README.md
```

---

## What This Project Will Build

The completed project will provision an AWS environment consisting of:

* A custom Virtual Private Cloud (VPC)
* Public and private subnets
* Internet Gateway
* NAT Gateway
* Route tables
* Security Groups
* Ubuntu EC2 instance
* Elastic IP
* Nginx configured through Ansible
* Automated deployment pipeline using GitHub Actions

---

## Learning Goals

This project is designed to develop practical DevOps skills by understanding:

* Infrastructure as Code with Terraform
* Configuration Management with Ansible
* CI/CD automation with GitHub Actions
* AWS networking fundamentals
* Production-style project organization
* Automation best practices
* Debugging and troubleshooting techniques