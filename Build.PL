use strict;
use warnings;

use Module::Build;

Module::Build -> new
(
	module_name    => 'Tree::Simple::VisitorFactory',
	license        => 'perl',
	dist_abstract  => 'A factory object for dispensing Visitor objects',
	dist_author    => 'Stevan Little <stevan@cpan.org>',
	build_requires =>
	{
		'Test::Exception' => 0.15,
		'Test::More' => 1.001014,
		'Test::Pod' => 1.48,
	},
	configure_requires =>
	{
		'Module::Build' => 0.4211,
	},
	requires =>
	{
		'base' => 2.16,
		'File::Spec' => 0.60,
		'Scalar::Util' => 1.10,
		'Tree::Simple' => 1.12,
		'Tree::Simple::Visitor' => 1.22,
		'strict' => 0,
		'warnings' => 0,
	},
	meta_merge => {
		resources => {
		'repository' => 'https://github.com/stevan/tree-simple-visitorfactory',
		},
	},
) -> create_build_script();
