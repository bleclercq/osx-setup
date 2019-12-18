# OS X Setup

## Disclaimer

This project aims to provide and install every basic tools through a single script.

It's going to setup your environment. Please check the [extensions](#extensions) section for more details.

## Requirements

- Git installed
- Apple account
- bash v3+ (already included in your os x)

## Installation

```bash
$ git clone https://github.com/bleclercq/osx-setup
```

## Usage

```bash
$ cd osx-setup/
$ chmod +x setup.sh
$ ./setup.sh
```

You'll need to enter your root password at some point with the applications installation. If you never changed it, it should be your mac password.

## Extensions

### Brew

<details><summary>formulaes</summary>
<p>

[awscli](https://github.com/aws/aws-cli)
[azure-cli](https://github.com/Azure/azure-cli)
[consul](https://github.com/hashicorp/consul)
[git](https://github.com/git/git)
[go](https://github.com/golang/go)
[htop](https://github.com/hishamhm/htop)
[mas](https://github.com/mas-cli/mas)
[node](https://github.com/nodejs/node)
[nomad](https://github.com/hashicorp/nomad)
[packer](https://github.com/hashicorp/packer)
[python](https://github.com/python/cpython)
[ruby](https://github.com/ruby/ruby)
[terraform](https://github.com/hashicorp/terraform)
[tree](https://linux.die.net/man/1/tree)
[vault](https://github.com/hashicorp/vault)
[watch](https://formulae.brew.sh/formula/watch)
[wget](https://www.gnu.org/software/wget/)
[zsh](https://formulae.brew.sh/formula/zsh)
[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

</p>
</details>

<details><summary>casks</summary>
<p>

[1password](https://1password.com/)
[authy](https://authy.com/)
[charles](https://www.charlesproxy.com/)
[firefox](https://www.mozilla.org/fr/firefox/)
[github](https://desktop.github.com/)
[google-chrome](https://formulae.brew.sh/cask/google-chrome#default)
[google-cloud-sdk](https://cloud.google.com/sdk/)
[google-drive-file-stream](https://formulae.brew.sh/cask/google-drive-file-stream#default)
[iterm2](https://www.iterm2.com/)
[keybase](https://keybase.io/)
[postman](https://www.getpostman.com/)
[slack](https://slack.com/)
[vagrant](https://www.vagrantup.com/)
[virtualbox](https://www.virtualbox.org/)
[visual-studio-code](https://code.visualstudio.com/)
[zoomus](https://www.zoom.us/)

</p>
</details>

<details><summary>nice to have</summary>
<p>

[atom](https://atom.io/)
[docker](https://www.docker.com/community-edition)
[microsoft-office](https://products.office.com/mac/microsoft-office-for-mac/)
[spotify](https://www.spotify.com/)
[sublime-text](https://www.sublimetext.com/3)
[vlc](https://www.videolan.org/vlc/)

</p>
</details>

### VS Code

<details><summary>Visual Studio Code extensions</summary>
<p>

[path-intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
[bracket-pair-colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)
[prettier-vscode](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
[rest-client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)
[vscode-github](https://marketplace.visualstudio.com/items?itemName=KnisterPeter.vscode-github)
[VS-code-vagrantfile](https://marketplace.visualstudio.com/items?itemName=marcostazi.VS-code-vagrantfile)
[terraform](https://marketplace.visualstudio.com/items?itemName=mauve.terraform)
[vscode-docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
[python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
[remote-containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
[remote-ssh](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
[remote-ssh-edit](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh-edit)
[remote-wsl](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)
[vscode-remote-extensionpack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
[vsliveshare](https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare)
[markdown-preview-enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
[code-spell-checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
[vscodeintellicode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)
[vscode-todo-highlight](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)
[highlight-bad-chars](https://marketplace.visualstudio.com/items?itemName=wengerk.highlight-bad-chars)
[markdown-all-in-one](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)

</p>
</details>


<details><summary>Visual Studio Code nice to have</summary>
<p>



</p>
</details>

## How to improve

# TODO list

1. [ ] Create an "issue" template for PR to improve the installed casks
2. [ ] Create a script that automate the previous list creation
3. [ ] Add Vagrantfile + Kitchen testing