# Not-AFK

## Headline

`Not-AFK` is a minimalist AHK code to get a random undetectable
input from mouse and keyboard every `idleTimeCheck + rand(0, 1000)` milliseconds.

This input will be send only if you haven't done any moves in the interval 0 to `idleTimeCheck`

By default the idle time is 30 seconds
`idleTimeCheck = 30s`

## Usage

### Execute

Execute the binary `Not-AFK` builded with `Ahk2Exe`, then every `idleTimeCheck + rand(0, 1000)` a random input from `keySequence` will be sent, then his opposite `keySequence` from `keySequenceOpposite` will be sent (if it exists) to avoid your character to fall from cliff, boats, ...

Mouse will also be moved. (So don't worry if you are looking the sky)

### Stop

![exit.png](https://github.com/aeghost/Not-AFK/blob/main/imgs/exit.jpg?raw=true)

To stop go into your taskbar, then find the AHK script icon, right click then use `Exit` or `Suspend`.

## Tweeking

You can add keys to the key sequence at l.19, add any keys separated with space.
To add the actual space bar, use {space}.
For more informations look for `StrSplit` and Key Sequences documentation from AHK language.

```ahk
keySequence := "z q s d"
```

You can add or remove opposite keys from the key sequece opposite dictionnary,
If you do only a key from key sequence will be sent, if you don't, if the key is pressed then the opposite key will also be sent.

```ahk
keySequenceOpposite := { z: "s", s: "z", q: "d", d: "q" }
```

## Build

Dependencies : Ahk2Exe.exe, Make
Optionnal Dependencies : InkScape

To make, run
```shell
make
```

or

```shell
make Not-AFK.exe
```

## Tests

Tested to avoid deconnection on some games,

Working on :

- New World,
- LoL,
- Sea Of Thieves,
- WoW,
- FF14

## Warning

Use it at your own risk, but I never have been warned as "AFK" by any detector.