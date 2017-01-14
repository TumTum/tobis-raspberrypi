Provisioning Tobi's Raspberry
=============================

Nach dem ich zum hunderstenmale mein Raspberrypi neu formatiert habe.
Beschloss ich es nun mit [Ansible](http://docs.ansible.com/ansible/quickstart.html) zu provisioning.

Playbook `Raspbian_playbook.yml`
-------------------------------

Installiert auf einer SDCard das Raspbian System. (mit dem Mac)
Voraussetzung [oxfuse](https://github.com/osxfuse/osxfuse/releases) und [fuse-ext2](https://sourceforge.net/projects/fuse-ext2/files/fuse-ext2/) 
sind auf dem Mac installiert.

Dadurch kann Wifi eingestellt werden.

   $: bin/install_rapsbian.sh

#### Wichtig

Zu beachten das die Raspbian-Images im Phat ```roles/raspbian/files/```. liegen

Playbook `Superkit_playbook.yaml`
---------------------------------

Bereitet den Raspbian nach dem er im Netz ist auf das 
[Superkit](https://www.sunfounder.com/learn/category/Super_Kit_V2_for_RaspberryPi.html) vor.

#### Wichtig

Die IP vom Raspberry einstellen unter ``configs/rasberry.ip.hosts``
