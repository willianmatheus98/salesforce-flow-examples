# Salesforce examples

# Installation

## Githubsfdeploy

To install in your org (recommended is developer edition) you can click on the bellow button or deploy by SFDX.


<a href="https://githubsfdeploy.herokuapp.com?owner=willianmatheus98&repo=salesforce-flow-examples&ref=main">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>


## SFDX

Do the git clone and in the folder that was cloned, execute the follow sfdx command 

```bash
sfdx force:source:deploy -p force-app/main/default
```


# Usage

Route in the workbench 

```
/services/data/v53.0/sobjects/CaseOpen__e/
```

Insert a new platform event using the payload below (POST) of a contact in database

```json
{
    "Email__c": "jrogers@burlington.com",
    "Subject__c": "Problem in my user",
    "Description__c": "I can't login with my user in the system",
    "Origin__c": "Zendesk"
}
```