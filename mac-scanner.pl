#!/usr/bin/perl

use Nmap::Scanner;

my $scan = Nmap::Scanner->new();
$scan->add_target('-sn 192.168.0.1/29');

my $results = $scan->scan();

print $results->as_xml();
