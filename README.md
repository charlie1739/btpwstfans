# btpwstfans - BeyondTrust PassWord Safe TerraForm ANSible
pws ss test/demo for pipeline

Codes:
  * <b> README.md</b> : this file
  * <b>cloud-aws.tf</b> : retrieve iam user account list and put those into array variable to print in the console
  * <b>output.tf</b> : print collected iam user account list and iam access & secrets key in the console
  * <b>provider.tf</b> : terraform provider - hashicorp/aws, beyondtrust/passwordsafe declare and connect
  * <b>variables.tf</b> : PWS SaaS connection - runasuser, apikey, secretspath, apiurl / AWS connection - iam access & secrets key, aws regions
  * <b> pws-devops-workflow.yml</b> : Ansible code - retrieve iam access&secret key from Password Safe and access aws as root to collect IAM user list

Check & Hustle
 * Settings > Secrets and variables : Actions
    - PWS_SAAS_APIUSER : Password Safe API USer = runas
    - PWS_SAAS_CHARLIEHAN : Password Safe API Key = apikey
    - PWS_SAAS_SECRETPATH : Password Safe Secret Base Path to retrieve
    - PWS_SAAS_URL_SETEST : Password Safe URL
  * all of above secret values are encrypted and cannot be ready. It can only replaced the value or removed.

Demo :
  * Actions > Terraform : "Re-run all jobs" (if you cannot find "Re-run all jobs", then please kindly refer below "Actions")
  * ![git workflow-2024-10-28 160536](https://github.com/user-attachments/assets/a22099c8-7a0a-41f1-bbf1-8e4590506de0)


Actions:
  * if here is no "Re-run all jobs" at the right top when you click one of successfully run in the workflow runs list,
    then, edit workflow file and commit. That will automatically rerun the workflow.
    ![image](https://github.com/user-attachments/assets/3e36b2ae-e536-4b10-8f90-71fb57bce474)
    
    ![image](https://github.com/user-attachments/assets/cb665f66-e357-4adf-9ad6-4830d023f8a7)

    <b><i>Edit workflow file, just add # at the first line and commit</b></i>
    ![image](https://github.com/user-attachments/assets/49137192-f534-4299-a5d3-4c2356812e58)


    

