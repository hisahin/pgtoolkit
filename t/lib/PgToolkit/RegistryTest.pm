package PgToolkit::RegistryTest;

use base qw(PgToolkit::Test);

use strict;
use warnings;

use Test::More;

=head1 NAME

B<PgToolkit::RegistryTest> - base class for registry classes.

=head1 SYNOPSIS

	use base qw(PgToolkit::RegistryTest);

=head1 DESCRIPTION

B<PgToolkit::RegistryTest> is a base class for L<PgToolkit::Registry>
derivatives' unit tests. It automates mommon functionality testing.

=cut

sub is_lazy {
	my ($self, %arg_hash) = @_;

	isa_ok($arg_hash{'code_reference'}->(), $arg_hash{'class_name'});
	is($arg_hash{'code_reference'}->(), $arg_hash{'code_reference'}->());

	return;
}

sub is_prototype {
	my ($self, %arg_hash) = @_;

	isa_ok($arg_hash{'code_reference'}->(), $arg_hash{'class_name'});
	isnt($arg_hash{'code_reference'}->(), $arg_hash{'code_reference'}->());

	return;
}

=head1 SEE ALSO

=over 4

=item L<PgToolkit::Test>

=item L<Test::More>

=back

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2011-2014 Sergey Konoplev

PgToolkit is released under the PostgreSQL License, read COPYRIGHT.md
for additional information.

=head1 AUTHOR

=over 4

=item L<Sergey Konoplev|mailto:gray.ru@gmail.com>

=back

=cut

1;
