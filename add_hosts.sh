#!/bin/bash
cat >> /etc/hosts << "EOF"
#Begin /etc/hosts RBB Prod AND Green VMs

172.18.0.3 alalppnc401.risk.regn.net apprfrbb1 box_1
172.18.0.4 alalppnc402.risk.regn.net apprfrbb2 box_2
172.18.0.5 alalppnc403.risk.regn.net apprfrbb3 box_3
172.18.0.6 alalppnc404.risk.regn.net apprfrbb4 box_4
172.18.0.7 alalppnc405.risk.regn.net apprfrbb5 box_5
172.18.0.8 alalppnc406.risk.regn.net apprfrbb6 box_6
172.18.0.9 alalprlsvm401.noam.lnrm.net apprfrlsvm1 box_7
172.18.0.10 alalprlsvm402.noam.lnrm.net apprfrlsvm2 box_8
172.18.0.11 alalprlsvm403.noam.lnrm.net apprfrlsvm3 box_9
172.18.0.12 alalprlsvm404.noam.lnrm.net apprfrlsvm4 box_10
172.18.0.13 alalprlsvm405.noam.lnrm.net apprfrlsvm5 box_11
172.18.0.14 alalprlsvm406.noam.lnrm.net apprfrlsvm6 box_12
172.18.0.15 alalprlsvm407.noam.lnrm.net apprfrlsvm7 box_13
172.18.0.16 alalprlsvm408.noam.lnrm.net apprfrlsvm8 box_14
172.18.0.17 alalprlsvm409.noam.lnrm.net apprfrlsvm9 box_15
172.18.0.18 alalprlsvm410.noam.lnrm.net apprfrlsvm10 box_16
172.18.0.19 bctlprlsamz101.noam.lnrm.net apprfamz1-bct box_17
172.18.0.20 bctlprlsamz102.noam.lnrm.net apprfamz2-bct box_18
172.18.0.21 bctlprlsamz103.noam.lnrm.net apprfamz3-bct box_19
172.18.0.22 bctlprlsamz104.noam.lnrm.net apprfamz4-bct box_20

#End /etc/hosts RBB Prod AND Green VMs

EOF

#Add Hosts to /etc/ansible/hosts file

cat hosts.ini > /etc/ansible/hosts
chown -R ansible:ansible /home/ansible/shared

exit 0