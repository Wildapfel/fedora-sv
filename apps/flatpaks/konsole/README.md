## use ctrl+backspace as remove words
- create a custom keybindings: `right click > edit current profile > keyboard > +New`
- change the backspace+ctrl to something like: 0x08 
- bind this number to the backword kill key: `bind '"0x08": backward-kill-word'`

## %d fix
- I noticed that the flatpak instalaltion doesnt read %d and %D in the tabs
- the rpm-ostree konsole does it, therefore I will switch from now on 