# Not-AFK

`Not-AFK` is a minimalist AHK code to never be detected as AFK.
Every 30 seconds, if no user interuption has been detected, an input from mouse and keyboard will be sent.

## Usage

### Download

Download it from [here](https://github.com/aeghost/Not-AFK/releases/download/Not-AFK.0.1.0/Not-AFK-0.1.0-WASD.zip).

### Run

Execute the binary `Not-AFK.exe`

If no user interutpion has been detected in `idleTimeCheck` seconds, a random input from `keySequence` will be sent with `rand(0, 1000)` milliseconds delay.

Then, if it exists, it's opposite `keySequence` from `keySequenceOpposite` will be sent to avoid your character to fall from cliffs, boats, ...

Mouse will also be moved.

!! Don't worry if you don't see your character move, inputs are milliseconds keypress, trust, it works.

### Stop

To stop, go into your taskbar, then find the script icon, right click then use `Exit` or `Suspend`.

![exit.png](https://github.com/aeghost/Not-AFK/blob/main/imgs/exit.jpg?raw=true)

## Tweeking

You can add keys to `keySequence` that will be add to the random pulled sequence.

Separe every keys with a space, to add the actual space, use {space}.
For more informations look for `StrSplit` and Key Sequences documentation from AHK language.

Exemple:
```ahk
keySequence := "z q s d a e"
```

You can add or remove opposite keys from the key sequece opposite dictionnary,
If you do only a key from key sequence will be sent, if you don't, if the key is pressed then the opposite key will also be sent.

Exemple:
```ahk
keySequenceOpposite := { z: "s", s: "z", q: "d", d: "q", e: "e" }
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