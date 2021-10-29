# mkproj v0.1.0

mkproj is a simple command line program that automates the process of setting up projects.

The main principle behind mkproj is the use of targets. A target is a directory which contains the steps and files necessary to set up a given project.

Every target contains a file called `target.sh`, this file should contain at least one function defined: `target_main ()`; it is the entry point of the `target.sh` script. More information on how to create targets can be found under docs/ directory (or by running `man mkproj` after you have installed it).

You may want to check out and copy the target(s) you want to use from src/target.d to your target.d directory. And if you feel like it, you can also create pull requests with the custom targets you created.

## Installing

To install mkproj, clone the git repository, cd into it and run the following command as root:
```
./install.sh install
```
By default, it will be installed under `/usr/local`. You may want to change it if you don't want to install globally on the system. The following command will set `/path/to/install` as the install location:

```
PREFIX=/path/to/install ./install.sh install
```

If you want to uninstall it, just run the same command you used to install it, but instead of passing `install` as an argument, pass `remove`. For example:
```
./install.sh remove
```
