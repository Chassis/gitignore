# Gitignore Chassis Extension

This [Chassis extension](https://docs.chassis.io/en/latest/extend/) lets you specify a list of strings that will be appended to the [`.git/info/exclude` file within the Chassis repository's root directory](https://git-scm.com/docs/gitignore). This lets you augment Chassis' own [`.gitignore` rules](https://github.com/Chassis/Chassis/blob/master/.gitignore) to include files (such as generated keys) which should not appear in any diff or git status check performed on the Chassis checkout.

This can improve housekeeping within your Chassis checkout, but should be unnecessary for the majority of Chassis sites.

## Usage

1. Clone this into the `extensions` folder of your Chassis installation, or list `gitignore` in your [Chassis configuration file's extensions list](https://docs.chassis.io/en/latest/config/#extensions).
2. Specify one or more items in a `gitignore:` list within your [configuration file](https://docs.chassis.io/en/latest/config/), as in the example below.
3. Run `vagrant up` if you have not yet initialized your virtual machine, or `vagrant provision` if your VM is already up and running.

Any `git diff` or `git status` command run within the Chassis repository checkout should now exclude the patterns listed in your configuration file.

## Example

Exclude `.key` files in your Chassis directory, and a specific individual file, from the Chassis git repository checkout.

```yaml
# config.local.yaml

gitignore:
  - '*.key'
  - 'some-specific-file-to-exclude.txt'
```
