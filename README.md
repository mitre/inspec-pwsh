# InSpec for Pwsh

* **Project State: Maintained**

For more information on project states and SLAs, see [this documentation](https://github.com/chef/chef-oss-practices/blob/master/repo-management/repo-states.md).

This InSpec resource pack uses the ruby-pwsh provides the required resources to write tests for profiles using Pwsh.

## Prerequisites

This resource pack requires the use of `train-pwsh`, which is a transport that is used to connect to a persistent powershell session. Please refer to the documentation of [train-pwsh](https://github.com/mitre/train-pwsh) to ensure the environment variables have been set there for this work.  

### Use the Resources

Since this is an InSpec resource pack, it only defines InSpec resources. To use these resources in your controls, create your profile:

#### Create a profile

```bash
inspec init profile my-profile
```
The above command generates a sample inspec.yml that depends on `master`.  We recommend this is pinned to a release of the resource pack as follows.

Example `inspec.yml`:

```yaml
name: my-profile
title: My own Pwsh profile
version: 0.1.0
inspec_version: '>= 4.6.9'
depends:
 - name: inspec-pwsh
   url: https://github.com/mitre/inspec-pwsh
```

(For available inspec-pwsh versions, see this list of [inspec-pwsh versions](https://github.com/inspec/inspec-pwsh/releases).)

If a resource is in local, change the `url` to `path`.

```yaml
name: my-profile
title: My own Pwsh profile
version: 0.1.0
inspec_version: '>= 4.6.9'
depends:
 - name: inspec-pwsh
   path: ../my-profile
```

(For available inspec-pwsh versions, see this list of [inspec-pwsh versions](https://github.com/inspec/inspec-pwsh/releases).)

Add some tests and run the profile via:

```bash
inspec exec my-profile -t pwsh://pwsh-options
```

## Resource documentation

This resource pack allows the testing of the following Pwsh resources. If a resource you wish to test is not listed, please feel free to open an [Issue](https://github.com/inspec/inspec-pwsh/issues). As an open-source project, we also welcome public contributions via [Pull Request](https://github.com/inspec/inspec-pwsh/pulls).

InSpec Supported Resources [https://docs.chef.io/inspec/resources/](https://docs.chef.io/inspec/resources/)

## Examples 

## Support

The InSpec Pwsh resources are community-supported. For bugs and features, please open a GitHub issue and label it appropriately.