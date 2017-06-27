use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name         => 'Net::Airbrake',
	create_license      => 1,
	license             => 'GPL_3',
	dist_author         => [q{Current Maintainer: Geoff Franks <gfranks@cpan.org>}, q{Original Author: Simon Flack <simonflk _AT_ cpan.org>}],
	dist_version_from   => 'lib/Net/Airbraker.pm',
	meta_merge => {
		resources => {
			homepage   => 'https://github.com/sixapart/Net-Airbrake',
			bugtracker => 'https://github.com/sixapart/Net-Airbrake/issues',
			repository => 'git://github.com/sixapart/Net-Airbrake.git',
		},
	},

	configure_requires => {
		'Module::Build' => '0.38',
	},
	requires => {
	    'perl'                  => 5.0080001,
        'Class::Tiny'           => '1.001',
		'JSON'                  => '2.00',
		'Scope::Guard'          => 0,
		'HTTP::Tiny'            => 0,
        'Data::Dumper'          => 0
	},
	build_requires => {
		'Test::More'          => 0.88,
	},
	add_to_cleanup => [
		'Net-Airbrake-*',
		'cover_db',
		'*.rpm',
		'*.deb',
	]
);

$builder->create_build_script();
