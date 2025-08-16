# TXT

This is a very simple way to create a website. Simply render a `.txt` file in the browser.
It works great, it looks nice enough, it is easy to maintain.
I invite everyone to try to build one for themselves, all it takes is a couple lines you can find in `index.php` and if you want to get a little fancy, a Makefile to wrap your lines at 80ch.

To sync with I cloud, all you have to do is copy the contents of `/public/content.txt` in a `content-sync.txt` file in your iCloud drive. Then you can do a symlink between iCloud drive and your project folder like so `ln -s '~/Library/Mobile Documents/com~apple~CloudDocs/content-sync.txt' ./public/content-sync.txt`. This way when you run `make`, the content of the synced file will be wrapped and put in the `content.txt` file used to display content on the website
