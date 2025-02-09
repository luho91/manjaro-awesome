# Manjaro Awesome
Build your own Manjaro Linux installation ISO with AwesomeWM via GitHub Actions.
New releases every Sunday.
## ISO
### Download release
- Download the latest release.  
  `curl -s https://api.github.com/repos/luho91/manjaro-awesome/releases/latest | grep "browser_download_url" | cut -d '"' -f 4 | xargs -n 1 wget`
- Unpack the zip.  
  `7z x manjaro-awesome-$VERSION.iso.zip`
- Check integrity.  
  `sha1sum -c manjaro-awesome-$VERSION.iso.sha1`  
  `sha256sum -c manjaro-awesome-$VERSION.iso.sha265`  
  `sha512sum -c manjaro-awesome-$VERSION.iso.sha512`
- Burn the ISO to desired medium or use it directly in a VM.
### Install release
- Boot from the created installation medium.
- Login with user `manjaro`, password `manjaro`, if necessary.
- Press `Super+p` and enter `install` to find the installation tool.
- Install Manjaro.
## First use
### Prepare for Ansible
- Update Pacman mirrors.  
  `sudo pacman-mirrors --country Germany,France,United_States`
  - Adjust country list as needed. Some countries are always faulty and will cause Pacman to fail updating.
- Download AUR helper `yay`.  
  `sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si`
- (sadly needed at the moment) Install ansible.  
  `sudo pacman -Sy ansible`
### Ansible
- Change into the ansible directory.
- Install the requirements.
  `ansible-galaxy install -r requirements.yml`
- Set the user variable in `master.yml` to your user name.
- Inspect the tasks in each role and decide which ones you want to run for installation. Use `#` prefix on lines you want to disable (or delete them).
  `roles/some_role/tasks/main.yml`
- If you don't want to set up everything with ansible, or simply not at this time, the role `base` is meant to give you a proper, usable, but still somewhat minimalistic result.
- To be continued ...
### Config and Dotfiles
- `~/.config/awesome/rc.lua` TBD
- `~/.bashrc` TBD
- `~/.aliases` TBD
## Known issues
- If you can't find the NetworkManager gui for internet access, try running `nm-applet` from terminal.
- `ansible` is not pre-installed.
- `yay` is not pre-installed.
