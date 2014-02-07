#!/bin/bash

cd /opt/sendmail-wrapper/

chmod 700 .git
chattr -i sendmail-*.php
chown sendmailwrapper:sendmailwrapper *.php
chmod 755 sendmail-wrapper.php prepend.php
chmod 511 sendmail-throttle.php
chmod 400 throttle.sql
chattr +i sendmail-*.php

ln -sf /opt/sendmail-wrapper/sendmail-wrapper.php /usr/sbin/sendmail-wrapper
ln -sf /opt/sendmail-wrapper/sendmail-throttle.php /usr/sbin/sendmail-throttle
/bin/cp -a prepend.php /var/www/shared/
