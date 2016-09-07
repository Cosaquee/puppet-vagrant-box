# Quickstart repository for multimachine Vagrant setup with Puppet provision

## What is inside

* two Vagrant machines
  * puppetmaster and slave
* Puppet provision
  * install puppetmaster and puppetagent by shell scripts
  * ready to use Puppet module provision

## Remeber

If you want to use it remeber to install every Puppet module that will be used. To do this you need to edit `scripts/modules.sh` and add new module.
Modules are installed before any provison with Puppet provisioner. If you want to use Vagrant Box with preinstalled Puppet comment out shell provison.

To generate new module use `puppet module generate yourname-modulename`
