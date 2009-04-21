#!/usr/bin/env perl

use Test::More tests => 10;
use Carp;
use SVG::Sparkline;

use strict;
use warnings;

{
    my $w = SVG::Sparkline->new( Whisker => { -nodecl=>1, values=>'++0+0+', width=>18 } );
    like( "$w", qr/d="M1,0v-5m3,5v-5m3,5m3,0v-5m3,5m3,0v-5m3,5"/, 'Width=18' );
    like( "$w", qr/stroke-width="1"/, 'Width=18: stroke' );
}

{
    my $w = SVG::Sparkline->new( Whisker => { -nodecl=>1, values=>'++0+0+', width=>9 } );
    like( "$w", qr/d="M0.5,0v-5m1.5,5v-5m1.5,5m1.5,0v-5m1.5,5m1.5,0v-5m1.5,5"/, 'Width=9' );
    like( "$w", qr/stroke-width="0.5"/, 'Width=9: stroke' );
}

{
    my $w = SVG::Sparkline->new( Whisker => { -nodecl=>1, values=>'++0+0+', width=>36 } );
    like( "$w", qr/d="M2,0v-5m6,5v-5m6,5m6,0v-5m6,5m6,0v-5m6,5"/, 'Width=36' );
    like( "$w", qr/stroke-width="2"/, 'Width=36: stroke' );
}

{
    my $w = SVG::Sparkline->new( Whisker => { -nodecl=>1, values=>'++0+0+', thick=>2 } );
    like( "$w", qr/d="M2,0v-5m6,5v-5m6,5m6,0v-5m6,5m6,0v-5m6,5"/, 'thick=2' );
    like( "$w", qr/stroke-width="2"/, 'thick=2: stroke' );
}

{
    my $w = SVG::Sparkline->new( Whisker => { -nodecl=>1, values=>'++0+0+', width=>10 } );
    like( "$w", qr/d="M0.56,0v-5m1.68,5v-5m1.68,5m1.68,0v-5m1.68,5m1.68,0v-5m1.68,5"/, 'Width=10' );
    like( "$w", qr/stroke-width="0.56"/, 'Width=10: stroke' );
}
