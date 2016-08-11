#!/bin/bash
# Author:               Jane Curry
# Date:                 August 3rd 2016
# Description:          Example reportmail script to email report
#
# reportmail takes the following parameters:
#  -u  URL, --url=URL                      URL of report to send
#  -U USER, --user=USER                         User to log into Zenoss
#  -p PASSWD, --passwd=PASSWD                   Password to log into Zenoss
#  -a ADDRESSES, --address=ADDRESSES            Email address destination (may be given more than
#                                               once).  Default valuecomes from the user's profile.
#  -s SUBJECT, --subject=SUBJECT                Subject line for email message.Default value is the
#                                               title of the html page.
#  -f FROMADDRESS, --from=FROMADDRESS           Origination address
#
# The  following example emails the report from this ZenPack, hosted on the zenoss server zen42.class.example.org.
# The Zenoss GUI user/password are jane / object00.
# The email recipient is jane.curry@skills-1st.co.uk, the sender is zenoss@skills-1st.co.uk, subject "test of reportmail"
# Selection fields for the report are also included (after the ?) so:
#               DeviceClass=%2F 
#               System=%2F
#               DeviceGroup=%2F
#               Location=%2F
#               device=zenn
#               startDate=07%2F26%2F2016
#               endDate=08%2F02%2F2016
#               eventClass=%2FStatus%2FPing
#               severity=4
#
# where 2F is the ASCII character for /
#
# A good way to find this URL is to to use browser tools such as Web Console or Firebug to inspect html calls
# when running the report.

# reportmail -u  "https://zen42.class.example.org/zport/dmd/Reports/Performance%20Reports/Availability%20Report%20per%20Collection?DeviceClass=%2F&System=%2F&DeviceGroup=%2F&Location=%2F&device=zenn&startDate=07%2F26%2F2016&endDate=08%2F02%2F2016&eventClass=%2FStatus%2FPing&severity=4" -a jane.curry@skills-1st.co.uk  -s "test of reportmail" -f zenoss@skills-1st.co.uk  -U jane -p object00 
 
# See the screenhots directory for examples of both the Zenoss GUI and the email
#
reportmail -u  "https://zen42.class.example.org/zport/dmd/Reports/Performance%20Reports/Availability%20Report%20per%20Collection?DeviceClass=%2F&System=%2F&DeviceGroup=%2F&Location=%2F&device=zenn&startDate=08%2F01%2F2016&endDate=08%2F12%2F2016&eventClass=%2FStatus%2FPing&severity=4" -a jane.curry@skills-1st.co.uk  -s "test of reportmail" -f zenoss@skills-1st.co.uk  -U jane -p object00 
 
