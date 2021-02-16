    ______    _____  __       __                    _____  _______   _____              
    |  __ \  |_   _| | |      | |          /\      / ____| |  ____| |  __ \ 
    | |__) |   | |   | |      | |         /  \    | |  __  | |__    | |__) |
    |  ___/    | |   | |      | |        / /\ \   | | |_ | |  __|   |  _  / 
    | |       _| |_  | |____  | |____   / ____ \  | |__| | | |____  | | \ \ 
    |_|      |_____| |______| |______| /_/    \_\  \_____| |______| |_|  \_\
                                                           
A wget bash script to download things from sites. 

HOW TO USE
----------
After downloading, run the script pillager.sh. A prompt will appear asking for a link to pillage. Copy/paste the link of the website you want to download. By default, this script will recursively download all files in the link, avoiding all index.html files. use `-i` to include index.html files. 

By default this script will download into the current directory. use `-d` and specify a path to change it. 

using `-m` will mirror the site rather than just grab the files from it. this option is useful for downloading entire sites as they are.

passing `-s` will give you an estimate of the total size of the link based on mariomaric's script https://github.com/mariomaric/website-size.

When a link is pillaged, the link address will be stored in ~/.pillager/list.

```
-d [PATH]: Change download directory
-h:        Show a help dialog
-i:        Include index.html files
-m:        Mirror site
-s:        Estimate link size
```
