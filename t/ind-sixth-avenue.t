#!/usr/bin/perl

use 5.006;
use strict; use warnings;
use Test::More tests => 8;
use Map::Tube::NYC;

my $subway = Map::Tube::NYC->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    next if /^\s+$/;

    my ($description, $from, $to, $expected) = split /\|/;
    is_deeply($subway->get_shortest_route($from, $to), _expected_route($expected), $description);
}

done_testing();

sub _expected_route {
    my ($route) = @_;
    my $nodes   = [];
    foreach my $name (split /\,/,$route) {
        push @$nodes, $subway->get_node_by_name($name);
    }

    return Map::Tube::Route->new(
       { from  => $nodes->[0],
         to    => $nodes->[-1],
         nodes => $nodes });
}

__DATA__
Route 1|Grand Street|14th Street|Grand Street,Lafayette Street,West Fourth Street,14th Street
Route 2|23rd Street|Seventh Avenue|23rd Street,Herald Square,Bryant Park,Rockefeller Center,Seventh Avenue
Route 3|23rd Street|   Seventh Avenue|23rd Street,Herald Square,Bryant Park,Rockefeller Center,Seventh Avenue
Route 4|23rd Street|Seventh Avenue  |23rd Street,Herald Square,Bryant Park,Rockefeller Center,Seventh Avenue
Route 5|23rd Street|  Seventh Avenue  |23rd Street,Herald Square,Bryant Park,Rockefeller Center,Seventh Avenue
Route 6|    23rd Street|Seventh Avenue|23rd Street,Herald Square,Bryant Park,Rockefeller Center,Seventh Avenue
Route 7|23rd Street  |Seventh Avenue|23rd Street,Herald Square,Bryant Park,Rockefeller Center,Seventh Avenue
Route 8|  23rd Street  |Seventh Avenue|23rd Street,Herald Square,Bryant Park,Rockefeller Center,Seventh Avenue