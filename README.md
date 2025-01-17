# Development

`yarn dev`

# Deploy to aws amplify

1. Login

`aws sso login`

2. Apply terraform

`terraform -chdir=terraform/ apply`

3. Manually trigger build

Go to https://norsktipping.awsapps.com/start/#/

Login to your account, go to Amplify, select your App and click Run job. This must be done manually the first time after the intrastructure has been created.

After this, a new build will happen on every commit.