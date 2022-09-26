# termux-gui-package

This is a termux package with utilities using Termux:GUI.  
This requires the [python bindings](https://github.com/tareksander/termux-gui-python-bindings) and python to work.  
  

Current list of programs:
- termux-gui-view: An image viewer that displays images in a small picture-in-picture window. Use the -h option to view all available options.
- termux-gui-shell: A utility to send raw protocol messages to and from Termux:GUI, for use in scripts. See the man page for more information.
- termux-gui-pkg: A graphical frontend for pkg.
- termux-gui-lockscreen-notes: Write notes even from the lockscreen and save them in a file. The notes are not viewable from the lockscreen when you saved them, to see them you have to unlock your phone and open the file in termux.
- termux-gui-files: A file explorer you can use to select files, folders and navigate in the terminal.
- termux-gui-dialog: Display dialogs from the shell with customizable combinations of input options, and get the results back.
- termux-gui-dmenu: A replacement for `dmenu`.
- termux-gui-proot-distro: A graphical frontend for `proot-distro`.

# Installation

Use `pkg install termux-gui-package` in Termux.

