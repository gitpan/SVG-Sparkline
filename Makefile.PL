use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'SVG::Sparkline',
    AUTHOR              => 'G. Wade Johnson <wade@anomaly.org>',
    VERSION_FROM        => 'lib/SVG/Sparkline.pm',
    ABSTRACT_FROM       => 'lib/SVG/Sparkline.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Carp'       => 0,
        'SVG'        => 2.49,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'SVG-Sparkline-*' },
);