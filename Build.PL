use strict;
use warnings;
use Module::Build;

my $buiild = Module::Build->new(
    dist_author => 'Nishibayashi Takuji <takuji31@gmail.com>',
    dist_abstract => 'Bundle-Takuji',
    license     => 'perl',
    module_name => 'Bundle::Takuji',
    configure_requires => {'Module::Build' => '0.4003'},
    requires => {
        'Dist::Maker'   => '0.05',
        'Amon2'         => '3.52',
        'Amon2::Lite'   => '0.08',
        'App::cpanoutdated' => '0.23',
        'Project::Libs' => '0.01',
        'Server::Starter' => '0.11',
        'Starlet' => '0.16',
        'AnyEvent' => '7.02',
        'EV' => '4.11',
        'Coro' => '6.08',
        'DBI' => '1.622',
        'DBD::mysql' => '4.021',
        'DBD::SQLite' => '1.37',
        'DateTimeX::Factory' => '0.03',
        'Teng' => '0.15',
    },
    build_requires => {
        'Test::LoadAllModules'       => '0.021',
        'Test::More'                 => '0.98',
    },
    test_files => (-d '.git/' || $ENV{RELEASE_TESTING}) ? 't/ xt/' : 't/',
    recursive_test_files => 1,

    create_readme => 1,
    create_license => 1,
    create_makefile_pl => 'small',
);
$buiild->create_build_script();
