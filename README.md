# rusty-perl
Call Rust from Perl with libffi


## Clone this repository.

## Run tests

```bash
cargo test
```

## Build a debug version

```bash
cargo build
```

Now we can try the Perl script with debug set (the 1).

```bash
$ perl/points.pl 1
The distance from (2,2) to (4,4) is 2.82842712474619 (the square root of 8).
```

## Build a release version

```bash
cargo build --release
```

Now we can try the Perl script without the extra argument.

```bash
$ perl/points.pl
The distance from (2,2) to (4,4) is 2.82842712474619 (the square root of 8).
```
