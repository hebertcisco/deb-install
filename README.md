# Debian based apps Installation Automation

> This script automates the installation of useful tools for a common dev on
> Debian-based systems.

### Requirements

A Debian-based system (e.g. Ubuntu, Debian) apt package manager installed An
internet connection

### Usage

To use the script, open a terminal and run the following command:

#### From source

```sh
git clone https://github.com/hebertcisco/deb-install
cd deb-install
make
```

#### Bash & Curl

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/install.sh)"
```

#### With NPM

```sh
sudo npm i -g deb-install
```

##### Comands available affter installed with NPM

```sh
deb-install
```

```sh
deb-install-aws
```

```sh
deb-install-basics
```

```sh
deb-install-configs
```

```sh
deb-install-dbeaver
```

```sh
deb-install-docker
```

```sh
deb-install-dotnet -c Current
```

```sh
deb-install-dotnet -c Current --runtime aspnetcore
```

```sh
deb-install-git
```

```sh
deb-install-php
```

```sh
deb-install-php8.2
```

```sh
deb-install-snap
```

```sh
deb-install-vim
```

```sh
deb-install-code
```

```sh
deb-install-zsh
```

### Support

If you have any issues or questions about using this script, please open an
issue on the GitHub repository or contact the author directly.

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check
[issues page](issues).

## Show your support

Give a ⭐️ if this project helped you!

<a  href="https://www.patreon.com/hebertfbarros">
  <img style="border-radius:20px;" src="https://c5.patreon.com/external/logo/become_a_patron_button@2x.png" width="160">
</a>

## 📝 License

Copyright © 2023 [Hebert F Barros](https://github.com/hebertcisco).<br /> This
project is [MIT](LICENSE) licensed.
