# Croc2QR

A simple ruby script to generate QR code from [croc](https://github.com/schollz/croc) code.


Usage: 

## Send a file
```
./croc2qr <filepath>
```
And a qr.svg will be generated at the same location as the filepath

## Generate random qr code for croc code

```
./croc2qr -g
```
## receive using the last generated code

```
./croc2qr -f
```

## TODO
- [ ] -g or --generate to generate  a random QR code for sending files
- [ ] -rl or --last start receiving using the last generated code
- [ ] organise QR code into directories and order it based on timing
- [ ] set a config file to control croc2qr
- [ ] history.txt to track the list of items sent
- [ ] Generate QR code into croc2qr location

