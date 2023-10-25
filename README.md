### Email collector

To run:

```
chmod +x collect-and-clean.sh
./collect-and-clean.sh https://www.example.com
```

Use this sparingly in your reporting, or you'll be labeled a spammer! This is most useful for finding email addresses on websites that don't necessarily make them easy to find. Once you find an address, search for it on Google, and find out who it belongs to. Then contact **at most** a few for the most useful result emails, avoiding the rest.

Oh, and remember to empty out the directory holding the downloaded pages when you're done, or you'll quickly fill up a lot of your storage space. 

### Dependencies

This script requires that you have `grep` `wget` and `php` on your machine. If any of those commands are missing, the script will not work. The script also assumes a POSIX-compliant command line environment. 

### A note on emails

If you're an intern or young journalist on deadline, and you have a choice between using this script and making a phone call or knocking on a door, choose the door first, then the phone call, and only as a last resort, this script. Emails are always slower, and you'll get far better results talking with a source in person or over the phone. It's a little outside of current social norms to call someone unannounced, but your source will usually appreciate that you're on deadline and trying to give them a voice, and it's really not that scary! And it gets easier -- I promise!
