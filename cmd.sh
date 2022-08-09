#!/bin/bash
# customrized cmd powered by Websoft9

if [[ -f /var/www/html/wizard ]]; then
    echo "Initialization has been completed before this time!"
else
    echo "" >> /var/www/html/wizard
    sed -i s/127.0.0.1/mysql/g  /var/www/html/typo3_src-11.5.12/typo3/sysext/install/Classes/Controller/InstallerController.php
    cat InstallerController.php |grep username|grep TYPO3_CONF_VARS| awk '{print $NF}'
    cat InstallerController.php |grep username|grep TYPO3_CONF_VARS| awk '{print $NF}'
fi
docker-php-entrypoint apache2-foreground
