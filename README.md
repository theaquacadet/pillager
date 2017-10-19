    ______    _____  __       __                    _____  _______   _____              
    |  __ \  |_   _| | |      | |          /\      / ____| |  ____| |  __ \ 
    | |__) |   | |   | |      | |         /  \    | |  __  | |__    | |__) |
    |  ___/    | |   | |      | |        / /\ \   | | |_ | |  __|   |  _  / 
    | |       _| |_  | |____  | |____   / ____ \  | |__| | | |____  | | \ \ 
    |_|      |_____| |______| |______| /_/    \_\  \_____| |______| |_|  \_\
                                                           
A wget bash script to download things from sites. 

HOW TO USE
----------
After downloading, run the script pillager.sh. A prompt will appear asking for a link to pillage. Copy/paste the link of the website you want to download. By default, this script will download all files and subdirectories in the link, avoiding all index.html files. 

By default this script will download into the current directory. The download path can be changed by specifying where you want it to save to after the command i.e.,
>./pillager.sh /path/to/download/to

When a link is pillaged, the link address will 
be stored in ~/.pillager/list.
