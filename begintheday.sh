#!/bin/bash

function check_dependencies()
{
    if [[ $(which apt-get) ]];
        then if [[ $(which fortune cowsay lolcat | wc -l) < 3 ]];
            then sudo apt-get install fortune cowsay lolcat
        fi
    fi
}

check_dependencies;
fortune | cowsay | lolcat -a
exit 0;
