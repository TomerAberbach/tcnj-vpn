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

Set up [multifactor authentication with Duo](https://security.tcnj.edu/resources-tips/duo-multifactor-authentication) (TCNJ requires it).

## Usage

To connect to the VPN simply run the following command from any directory, enter your password when prompted, and authenticate via the device you set up with Duo:

```sh
$ tcnj-vpn
```

You may ignore any output unrelated to incorrect credentials.

Note that you will be unable to work from the terminal window where you ran the command so simply open another terminal window if you wish to continue working. Alternatively you could run the command in the background.

To disconnect simply open the terminal window where you ran the `tcnj-vpn` command and press `CTRL+C`.

## Uninstall

If you have `curl` installed (or can install it by running `sudo apt install curl`):

```sh
$ curl -L https://raw.githubusercontent.com/TomerAberbach/tcnj-vpn/master/uninstall.sh | sudo bash
```

Otherwise download the [uninstall script](https://raw.githubusercontent.com/TomerAberbach/tcnj-vpn/master/uninstall.sh) and execute it:

```sh
$ sudo ./uninstall.sh
```

## Issues

If you encounter any issues while running `install.sh` or `uninstall.sh` [please create an issue](https://github.com/TomerAberbach/tcnj-vpn/issues/new).

While you wait for the issue to be resolved feel free to manually install the TCNJ Linux VPN using the [tutorial](https://tomeraberba.ch/html/post/tcnj-linux-vpn.html).

## License

[MIT](https://github.com/TomerAberbach/tcnj-vpn/blob/master/license) © [Tomer Aberbach](https://github.com/TomerAberbach)
