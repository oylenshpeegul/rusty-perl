# rusty-perl
Call Rust from Perl with libffi

I wanted to call Rust from Perl and I found [this blog post](http://paul.woolcock.us/posts/rust-perl-julia-ffi.html) by [@pwoolcoc](https://github.com/pwoolcoc) which talks about exactly that (as well as doing the same thing from Julia). It was written a couple of years ago, though, so it predates the release of Rust 1.0. Thus, I had to change a few things to get it to work. This repo contains those things.

### Clone this repository.

```bash
git clone https://github.com/oylenshpeegul/rusty-perl.git
cd rusty-perl
```

### Run tests.

```bash
cargo test
```

### Build a debug version.

```bash
cargo build
```

Now we can try the Perl script with debug set (the 1).

```bash
$ perl/points.pl 1
The distance from (2,2) to (4,4) is 2.82842712474619 (the square root of 8).
```

### Build a release version.

```bash
cargo build --release
```

Now we can try the Perl script without the extra argument.

```bash
$ perl/points.pl
The distance from (2,2) to (4,4) is 2.82842712474619 (the square root of 8).
```
