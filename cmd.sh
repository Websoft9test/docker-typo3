#!/bin/bash
# customrized cmd powered by Websoft9

if [[ -f /www/server/panel/data/admin_path.pl ]]; then
    
else
    echo "Initialization has been completed before this time!"
fi
docker-php-entrypoint apache2-foreground
