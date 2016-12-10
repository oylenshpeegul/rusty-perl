#!/usr/bin/env perl

use v5.24;
use warnings;
use FindBin;
use FFI::Raw;

my $debug = shift;

my $libpoints = "$FindBin::Bin/../target/release/libpoints.so";
if ($debug) {
	$libpoints = "$FindBin::Bin/../target/debug/deps/libpoints.so";
}

my $make_point = FFI::Raw->new(
    $libpoints,
    'make_point',
    FFI::Raw::ptr,
    FFI::Raw::int, FFI::Raw::int,
);

my $get_distance = FFI::Raw->new(
    $libpoints,
    'get_distance',
    FFI::Raw::double,
    FFI::Raw::ptr, FFI::Raw::ptr,
);

my $p1 = $make_point->call(2,2);
my $p2 = $make_point->call(4,4);

my $result = $get_distance->call($p1, $p2);
say "The distance from (2,2) to (4,4) is $result (the square root of 8).";

