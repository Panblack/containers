
# Open vSwitch

## Install open-vswitch
```
sudo yum install -y epel-release centos-release-openstack-train
sudo yum install openvswitch
==========================================================================================================================================================================================
 Package                                    Arch                                 Version                                       Repository                                            Size
==========================================================================================================================================================================================
Installing:
 openvswitch                                x86_64                               1:2.12.0-1.el7                                centos-openstack-train                               2.0 M
Installing for dependencies:
 dpdk                                       x86_64                               18.11.8-1.el7_8                               extras                                               1.7 M
 libevent                                   x86_64                               2.0.21-4.el7                                  base                                                 214 k
 unbound-libs                               x86_64                               1.6.6-5.el7_8                                 base                                                 406 k

Transaction Summary
==========================================================================================================================================================================================
Install  1 Package (+3 Dependent packages)

[root@centos7-01 ~]# systemctl list-unit-files | grep vswitch
openvswitch.service                           disabled
ovs-vswitchd.service                          static
[root@centos7-01 ~]#

[root@centos7-01 ~]# systemctl status openvswitch.service
● openvswitch.service - Open vSwitch
   Loaded: loaded (/usr/lib/systemd/system/openvswitch.service; disabled; vendor preset: disabled)
   Active: inactive (dead)
[root@centos7-01 ~]# systemctl status ovs-vswitchd.service
● ovs-vswitchd.service - Open vSwitch Forwarding Unit
   Loaded: loaded (/usr/lib/systemd/system/ovs-vswitchd.service; static; vendor preset: disabled)
   Active: inactive (dead)
[root@centos7-01 ~]#

yum install os-net-config
```

