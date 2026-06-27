## fedora-silverblue
- I am using f-sv mostly for its safety and reliability
- Within the last 2 years I never had to reinstall the OS, if system broke (alsmot never happend though), ijsut deployed the previous commit (thats exactly the benefit of using silverblue)
- I realized that when you figured out what tools you need in the os-layer, you barely use `rpm-ostree` again (it can get slower installing new tools when you have installed multiple tools already, but you barely do that)
- Otherwise, a tool either comes from `flatpak` or lives inside a `toolbox`
- Please people, do be like me, and spend time understanding how the apps save there configs, only export ``.config`` and exclude some heavy cache and tmp files :D
- I am using virtual machines (gnome boxes) for dev/testing     

---

**0. Get Fedora**
- Iam currntly using F43 

**1. Layer OStree**
- oslayering (incl. vscode)
- continue with a reboot: `systemctl reboot`

```Shell
./fedora_silverblue_system --ostree+vscode
```

**2. Install Tools**
- must follow some instructions:

```bash
./fedora_silverblue_system.sh --tools
```

**3. Install Apps**

```bash
./fedora_silverblue_system.sh --apps
```

*quick note*
- I can pick higher fedora version (e.g. F44) and validate if my system with its customizations works on this roll 