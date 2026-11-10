EXPERIMENT 9 - PULL-BASED CONFIGURATION MANAGEMENT USING PUPPET

This folder contains site.pp, the Puppet manifest for the local manifest part
of Experiment 9.

PART A - APPLY THE MANIFEST LOCALLY (Ubuntu)

1. Install Puppet as shown in the lab manual:
sudo apt update
sudo apt install puppet -y
puppet --version

2. Go to this folder and apply the manifest:
sudo puppet apply site.pp

3. Verify the web page file:
cat /var/www/html/index.html

4. Verify Apache:
sudo systemctl status apache2

5. Test idempotency by applying the same manifest again:
sudo puppet apply site.pp

PART B - PULL-BASED SERVER AND AGENT SETUP

A true pull-based setup requires two Ubuntu machines:
- Puppet Server
- Puppet Agent (managed client)

On the Puppet Server:
sudo systemctl enable --now puppetserver
sudo /opt/puppetlabs/bin/puppetserver ca list

On the Agent:
sudo /opt/puppetlabs/bin/puppet agent --test

If the agent certificate request is pending, on the Server:
sudo /opt/puppetlabs/bin/puppetserver ca sign --certname AGENT_CERTNAME

Then on the Agent:
sudo /opt/puppetlabs/bin/puppet agent --test

Replace AGENT_CERTNAME with the exact certificate name shown by the server.

IMPORTANT
The server and agent packages, agent server hostname configuration, network/hostname
resolution, and certificate setup must be completed before the pull command can work.
The local site.pp application is separate from the server-agent pull workflow.
