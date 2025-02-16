# MULTI-CLOUD-ARCHITECTURE

**COMPANY**: CODTECH IT SOLUTIONS 

**NAME**: M.S.G.N. SURYA VAIBHAV

**INTERN ID**: CT08IVH

**DOMAIN**: CLOUD COMPUTING

**BATCH DURATION**: JANUARY 20, 2025 to FEBRURAY 20, 2025

**MENTOR NAME**: NEELA SANTOSH

## TASK: 

- DESIGN A MULTI-CLOUD ARCHITECTURE WHERE SERVICES ARE DISTRIBUTED ACROSS TWO CLOUD PROVIDER 
- DELIVERABLE: A DOCUMENTATION AND DEMO SHOWCASING INTEROPERABILITY BETWEEN THE PLATFORMS

## Tools used :
               1. Amazon Route 53
               2. AWS Virtual private cloud 
               3. Amazon EC2
               4. AWS Elastic load balancer (application)
               5. Target Groups
               6. Azure Load balancer
               7. Virtual machine
               8. Azure virtual network 
## Description :     

- <ins> ***Amazon Route 53*** </ins> :  That's right! Route 53 is AWS's highly available and scalable DNS web service. In the diagram, it's represented by the icon in the top center, managing traffic flow between the primary and secondary regions.  The "Route 53 Routing Controls" suggest the use of features like traffic policies or health checks to direct traffic.

- <ins> ***AWS Virtual Private Cloud (VPC)*** </ins> : Absolutely! The green box labeled "Virtual Private Cloud" on the right of the diagram represents an AWS VPC.  It's a logically isolated section of the AWS Cloud where you can launch AWS resources in a virtual network that you define.

- <ins> ***Amazon EC2 (Elastic Compute Cloud)*** </ins> :  Correct. The orange boxes labeled "Amazon EC2" within the AWS VPC represent EC2 instances. These are virtual servers in the AWS cloud.   

- <ins> ***AWS Elastic Load Balancer (Application)*** </ins>:  Spot on! The purple icon labeled "Application Load Balancer" distributes incoming application traffic across multiple EC2 instances (or other targets) in order to increase the availability and scalability of the application.

- <ins> ***Target Groups*** </ins> :  These aren't directly visible in the diagram. Target groups are used with load balancers to define sets of targets, such as EC2 instances, that will receive traffic. While essential for load balancing, they are a configuration concept rather than a distinct visual element in this diagram.

- <ins> ***Azure Load Balancer*** </ins> :  Correct. The icon labeled "Azure (automatic) Load Balance" on the left of the diagram performs a similar function to the AWS Application Load Balancer, distributing traffic to virtual machines within the Azure Virtual Network.

- <ins> ***Virtual Machine*** </ins> :  Right. The blue boxes labeled "Virtual Machine" within the Azure Virtual Network represent virtual servers running in the Azure cloud.

- <ins> ***Azure Virtual Network*** </ins> :  Correct. The light blue box labeled "Virtual Network" represents an Azure Virtual Network. It's a logical isolation of the Azure cloud, similar to an AWS VPC, allowing you to define your own private network space.

## Procedure :
### AWS region setup :
- First go to ec2
- launch and instance -> give an name to the instance
- i am taking the amazon linux ami here
- instance type t2.micro
- select or create an keypair
- make network setting i am doing the default vpc settings and creating the security group and allow the HTTP traffic
- configure the basic storage settings of 8 gib of gp3
- go to advance details and then scrool to the user data
- enter this script there [userdata](aws_user_data.sh)
- Launch the instance
- now launch another instance with the same steps and change the user data ~~hello i am from vm1~~ to Hello i am from vm2
- 
