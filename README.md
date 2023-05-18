# cookiecutter-tla

A minimal [cookiecutter] template for new TLA+ modules.

[cookiecutter]: https://github.com/cookiecutter/cookiecutter

```sh-session
$ cookiecutter https://github.com/cfm/cookiecutter-tla
project_slug [MyModule]: YourModule
description [Proves that all of the True is False.]: Your module will prove great things.
$ cd YourModule/
$ ls -alh
total 24K
drwxr-xr-x  2 user user 4.0K May 17 18:02 .
drwx------ 58 user user 4.0K May 17 18:02 ..
-rw-r--r--  1 user user   24 May 17 18:02 .gitignore
-rw-r--r--  1 user user  451 May 17 18:02 Makefile
-rw-r--r--  1 user user   20 May 17 18:02 YourModule.cfg
-rw-r--r--  1 user user  295 May 17 18:02 YourModule.tla
$ make
Makefile:22: *** Missing $TLA_BIN. Download "tla2tools.jar" from <https://github.com/tlaplus/tlaplus/releases> and set $TLA_BIN to that path.  Stop.
$ wget https://github.com/tlaplus/tlaplus/releases/download/v1.8.0/tla2tools.jar
[...]
$ export TLA_BIN="java -jar ./tla2tools.jar"
$ make
java -jar ./tla2tools.jar YourModule.tla \
	-tool \
	-modelcheck \
	-coverage 1 \
	-config YourModule.cfg \
	-dump dot,actionable,colorize \
	YourModule.dot
@!@!@STARTMSG 2262:0 @!@!@
TLC2 Version 2.18 of Day Month 20?? (rev: ef82c67)
@!@!@ENDMSG 2262 @!@!@
[...]
@!@!@STARTMSG 2186:0 @!@!@
Finished in 630ms at (2023-05-17 18:03:12)
@!@!@ENDMSG 2186 @!@!@
dot -Tpng YourModule.dot > YourModule.png
rm YourModule.dot
$ ls -alh
total 3.4M
drwxr-xr-x  3 user user 4.0K May 17 18:03 .
drwx------ 58 user user 4.0K May 17 18:02 ..
-rw-r--r--  1 user user   24 May 17 18:02 .gitignore
-rw-r--r--  1 user user  451 May 17 18:02 Makefile
drwxr-xr-x  2 user user 4.0K May 17 18:03 states
-rw-r--r--  1 user user 3.3M May  9 16:50 tla2tools.jar
-rw-r--r--  1 user user   20 May 17 18:02 YourModule.cfg
-rw-r--r--  1 user user 8.6K May 17 18:03 YourModule.png
-rw-r--r--  1 user user  295 May 17 18:02 YourModule.tla
```
