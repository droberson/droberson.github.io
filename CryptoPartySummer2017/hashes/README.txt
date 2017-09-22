This directory contains a few hash files to practice cracking. Many should be
easily solvable, but some will take a bit of work.


Some quick notes:

On Kali Linux, John the Ripper is already installed. The version of JtR included
in most distribution's repositories is stripped down and supports only a limited
number of hash types. You may be lucky and have a package named "john-jumbo" or
something similar. This is what you want. Otherwise, the best bet is to install
it from source:

https://github.com/magnumripper/JohnTheRipper




Cracking the md5.txt file:

# gunzip /usr/share/wordlists/rockyou.gz
# john --wordlist=/usr/share/wordlists/rockyou.txt --format=Raw-MD5 md5.txt
...
Takes several seconds
...


Now, try adding the --rules flag:
# john --wordlist=/usr/share/wordlists/rockyou.txt --format=Raw-MD5 --rules md5.txt
...
Takes a bit longer, possibly a few minutes
...


To see your results:
# john --show --format=Raw-MD5 md5.txt


See if you can crack more!!





I've included a passwd and shadow file as well to demonstrate use of the unshadow
utility, and to show how much longer it takes to crack "slower" hashes:

# unshadow unix-passwd.txt unix-shadow.txt >crackthis.txt
# john --wordlist=/usr/share/wordlists/rockyou.txt crackthis.txt
...
Takes significantly longer than MD5 example above
...
# john --show crackthis.txt


