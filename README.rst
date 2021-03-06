===============================================
ZenPacks.common.AvailabilityReportPerCollection
===============================================


Description
===========

This ZenPack extends Juerg Gerber's Availability Per Group Report, adding support for additional organizers.  You can now specify Group, System, Location and Device Class, in addition to the standard event availability report.

Start Date will be the beginning of the given day.  End date is also the start of the given day, unless the day is today, in which case events will be included to within 5 minutes of "now".

If there are several events of the same class but from different components then availability will be shown separately for each event class / component pair - you can filter on component if you wish - otherwsie you can end up with zero availability when a device has actually been up for a significant proportion of the time.

There is a more detailed discussion of dates, components and the differences between this ZenPack and the standard Availability report at http://community.zenoss.org/message/52673#52673 .
         

Requirements & Dependencies
===========================

    * Zenoss Versions Supported: 3.0, 4.2.5
    * External Dependencies: 
    * ZenPack Dependencies:
    * Installation Notes: zenhub and zopectl restart after installing this ZenPack.
    * Configuration: 

Download
========
Download the appropriate package for your Zenoss version from the list
below.

* Zenoss 3.0+ `Latest Package for Python 2.7`_

Usage
=====

Note that to include availability upto and including "now", the end date must be set to "tomorrow".

A version of the AvailabilityCollection plugin is provided with lots of debugging to 
$ZENHOME/log/AvailabilityRep2.out. This logfile is recreated every time the report is run so 
should not fill up diskspace; however this version adds significant performance overhead; do not use in production.

Installation
============
Normal Installation (packaged egg)
----------------------------------
Copy the downloaded .egg to your Zenoss server and run the following commands as the zenoss
user::

   zenpack --install <package.egg>
   zenhub restart
   zopectl restart

Developer Installation (link mode)
----------------------------------
If you wish to further develop and possibly contribute back to this 
ZenPack you should clone the git repository, then install the ZenPack in
developer mode::

   zenpack --link --install <package>
   zenhub restart
   zopectl restart

Configuration
=============

Tested with Zenoss 3.1  and 4.2.5

Change History
==============
    * Updated to 1.2.1 version for test with Zenoss 3.0.1.
    * Updated to 1.2.2 version for test with 3.0.1 - might give correct answers now!
    * Updated  to 1.2.3 - now seems to coexist with standard Availability report and  appears to work with filtering on a specific device.  Note that you seem  to have to set end date to tomorrow to include today's data.  I have  left debugging turned on in this drop  - logfile in  /usr/local/zenoss/zenoss/log/availCol.log.
    * Updated to 1.2.4 - the best answers so far!  also see http://community.zenoss.org/message/52615#52615
    * Updated to 1.2.5 - removed code that tries to link to a device's homepage and component - see updated, page as referenced above.
    * Updated to 1.2.6 - removed old code from egg file
    * Updated to 1.2.7 - new github build
    * Updated to 1.2.8 - Device field now uses device title rather than device id so friendly names are used
    * Updated to 1.2.9 - Device field now uses device titleOrId  - fixes issue whereby devices without title field don't show up
                         Export All still doesn't work - this is more generic than just this ZenPack
    * Updated to 1.3.0 - Based on ZenEvents/Availability from Zenoss Core 4.2.5, SUP 671
                         Outputs device id, link and title.  Regex match for device name or title
                         Sample reportemail included in libexec and extra screenshots
                         Git master branch - output includes system, location, group and deviceclass
                         Git title branch - output just has device id, title, link and availability
    * Updated to 1.4.0 - Change report title for usage. Debug version of plugin shipped.


.. External References Below. Nothing Below This Line Should Be Rendered

.. _Latest Package for Python 2.7: https://github.com/jcurry/ZenPacks.community.AvailabilityReportPerCollection/blob/master/dist/ZenPacks.community.AvailabilityReportPerCollection-1.4.0-py2.7.egg?raw=true


                                                                        

