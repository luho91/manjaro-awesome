# Manjaro Awesome
Build your own Manjaro Linux installation ISO with Awesomewm via GitHub Actions.
New releases every Sunday.
## ISO
### Download release
- Download the newest release.  
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
## Ansible
TBD
