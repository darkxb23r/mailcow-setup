# mailcow-dockerized Simple Mail Setup Tutorial

##**Learn more about Mailcow: https://mailcow.email, as well as their official documentation: https://docs.mailcow.email

This tutorial will describe how to set up your mailcow server on ubuntu-based systems for simple mail 

## Running setup.sh, and Installation

Attached to github is a setup.sh file containing the script to install mailcow, run it as a superuser via ``sudo bash setup.sh`` **OR** ``sudo ./setup.sh`` (if you make the file executable)

During the runtime of setup.sh you will be prompted for your FQDN (Fully-Qualified Domain Name), as well as the choice of which mailcow installation branch to use. We recommend stable

Your FQDN will be something like ``mail.sky-fire.net``, this can realistically be any domain you would like so long as it is an FQDN
An FQDN must contain a hostname ``(mail)``, a domain name ``(sky-fire)``, and a Top-Level Domain ``(.net)``

Once that information is entered, you are done! mailcow is now installed on your system, assuming you enabled mailcow's ACME, you can access it from your FQDN, if not, it is accessible from ``http://$SERVERIP:80``. The administrator username/password is ``admin``, and ``moohoo`` respectively

## Post-Installation 

Before you dive into the bread and butter of mailcow, there are some things you will have to configure a couple things

### Changing Your Admin Credentials

To change your admin username/password, in the top right corner navigate to ``System > Configuration``, then click ``Edit`` next to your admin user. There you can change your credentials.

### Adding your Domains

Navigate to E-Mail > Configuration > Domains to view the domain panel. To add a new domain, click ``Add Domain``. 
You can keep most of the settings the same, unless you require specific settings.

To create a mailbox, you will need to fill out the Domain and Description boxes. The other settings don't require configuration, unless you are looking for specific settings

After filling out your config, click ``Add domain and restart SOGo``

### Configuring your DNS

After adding your domain(s), You will need to configure your DNS records with your DNS provider

In E-Mail > Configuration > Domains, Click  ``DNS`` for the domain whos records you are configuring. mailcow will show you the status of your records, as well as which records you will need to set up. Entries that suffix with ``2`` in the Current State row Are optional

## Setting Up Mailboxes & Accessing SOGo

Assuming you have completed all prior configuration steps, you can now create a mailbox!

Navigate to ``E-Mail > Configuration > Mailboxes`` to view the Mailboxes tab, then click ``Add Mailbox``

You will need to provide the Username, Full Name, Domain, and Password.

The username is the left part of the email (alex), the Full Name will be the name of the user, the domain will be the right portion of the email (sky-fire.net). In this instance, my email would be alex@sky-fire.net

You can assign a Quota to mailboxes to manage how much storage space they will have access to, the max is 10240 MiB

When you finish creating your mailbox, you may log out of your admin panel, and log in as a user. Use the full email address of your new mailbox, not just the username, and your password. You will be redirected to the SOGo webmail

If you wish to use your mailbox from another service like Odoo, you will use the same email and password, the Server Name/IP would be your FQDN

## You're Done!

You just created a simple mail server, Please go view mailcow [here](https://mailcow.email)
