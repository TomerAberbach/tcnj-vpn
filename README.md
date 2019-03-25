# TCNJ Linux VPN

> A command for running a TCNJ VPN on Linux inspired by the lack of official support.

## Install

If you have `curl` installed (or can install it by running `sudo apt install curl`):

```sh
$ curl -L https://raw.githubusercontent.com/TomerAberbach/tcnj-vpn/master/install.sh | sudo bash
```

Otherwise download the [install script](https://raw.githubusercontent.com/TomerAberbach/tcnj-vpn/master/install.sh) and execute it:

```sh
$ sudo ./install.sh
```

TCNJ also requires [multifactor authentication with Duo](https://security.tcnj.edu/resources-tips/duo-multifactor-authentication).

## Usage

To connect to the VPN simply run the following command from any directory and enter your password when prompted:

```sh
$ tcnj-vpn
```

You may ignore any output unrelated to incorrect credentials.

Note that you will be unable to work from the terminal window where you ran the command so simply open another terminal window if you wish to continue working. Alternatively you could run the command in the background.

To disconnect simply open the terminal window where you ran the `tcnj-vpn` command and press [[CTRL+C]].

## Uninstall

If you have `curl` installed (or can install it by running `sudo apt install curl`):

```sh
$ curl -L https://raw.githubusercontent.com/TomerAberbach/tcnj-vpn/master/uninstall.sh | sudo bash
```

Otherwise download the [uninstall script](https://raw.githubusercontent.com/TomerAberbach/tcnj-vpn/master/uninstall.sh) and execute it:

```sh
$ sudo ./uninstall.sh
```

## Contributing

Pull requests and stars are always welcome. For bugs and feature requests, [please create an issue](https://github.com/TomerAberbach/tcnj-vpn/issues/new).

## Issues

If you encounter any issues while running `install.sh` or `uninstall.sh` please [please create an issue](https://github.com/TomerAberbach/tcnj-vpn/issues/new).

While you wait for the issue to be resolved feel free to manually install the TCNJ Linux VPN using this [tutorial](https://tomeraberba.ch/html/post/tcnj-linux-vpn.html).

## Author

**Tomer Aberbach**

* [Github](https://github.com/TomerAberbach)
* [NPM](https://www.npmjs.com/~tomeraberbach)
* [LinkedIn](https://www.linkedin.com/in/tomer-a)
* [Website](https://tomeraberba.ch)

## License

Copyright © 2019 [Tomer Aberbach](https://github.com/TomerAberbach)
Released under the [MIT license](https://github.com/TomerAberbach/tcnj-vpn/blob/master/LICENSE).
