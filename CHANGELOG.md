# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2022-06-23
### Added
- AWS CloudFormation Stack to create Central and Spoke stacks.
- These stacks create AWS Cloud9, AWS CodeCommit, Amazon DynamoDB, IAM Roles and Amazon S3
- There is a CloudFormation custom resource to attach IAM instance profile to Cloud9 having Central IAM Role (it will disassociate the instance profile)

### Changed
- Added AES256 encryption to S3 bucket

## [0.1.0] - 2021-10-10
### Added
- Create first set of resources to test if Cloud9 SSM gets created using CloudFormation
- Tested if Cross Account roles using Cloud9 work or not.
