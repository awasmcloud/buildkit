## AwasmCloud Build Actions
This Action builds an app based on a awasm.yaml or cloud.yml so that applications can be deployed on AwasmCloud

## Inputs
regions
Required The name of the Awasm Cloud Geo-Distributions you wish to service.

## apps
Required The name of the app you wish to build.

## cached
Optional Whether to utilise the docker cache during the build. Defaults to true.

## description
Optional Allow setting description for a build.

## Outputs
release
The ID of the release that is created when the build completes.

## Todo : update configurations
Example usage
```
uses: awasmcloud/build@v1
with:
  regions: usa, eu, japan
  env: staging
  app: myapp 
```
