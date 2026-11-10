EXPERIMENT 10 - PUPPET MANIFESTS, MODULES, CLASSES AND FUNCTIONS

This folder contains the Puppet files requested in the lab manual (pages 34-38).

1. Install Puppet:
sudo apt update
sudo apt install puppet -y
puppet --version

2. Manifest:
sudo puppet apply manifest.pp
cat /tmp/puppet-demo.txt

3. Module:
The module structure is mymodule/manifests/init.pp.
Apply it from this exp10 folder:
sudo puppet apply --modulepath=. module_test.pp
cat /tmp/module-demo.txt

4. Class:
sudo puppet apply class_demo.pp
sudo systemctl status apache2

5. Functions:
sudo puppet apply function_demo.pp

Expected notifications:
Uppercase Name: NIKHITHA
Lowercase Name: nikhitha

Files:
- manifest.pp: installs apache2 and creates /tmp/puppet-demo.txt
- demo.pp: simple class and file resource example
- mymodule/manifests/init.pp: reusable Puppet module class
- module_test.pp: includes the module
- class_demo.pp: installs and starts Apache
- function_demo.pp: demonstrates upcase() and downcase()
