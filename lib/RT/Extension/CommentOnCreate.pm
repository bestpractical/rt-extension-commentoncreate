package RT::Extension::CommentOnCreate;

our $VERSION = '1.02';

use warnings;
use strict;
use Carp;

RT->AddStyleSheets('rt-extension-commentoncreate.css');

=head1 NAME

RT::Extension::CommentOnCreate - Adds an optional Comment box to Ticket Creation

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt5/etc/RT_SiteConfig.pm>

If you are using RT 4.2 or greater, add this line:

    Plugin('RT::Extension::CommentOnCreate');

For RT 4.0, add this line:

    Set(@Plugins, qw(RT::Extension::CommentOnCreate));

or add C<RT::Extension::CommentOnCreate> to your existing C<@Plugins> line.

=item Clear your mason cache

    rm -rf /opt/rt5/var/mason_data/obj

=item Restart your webserver

=back

=head1 CONFIGURATION

Optional configuration options to control the width and height of the
Comment textbox:

    Set($CommentOnCreateWidth, 80); # For RT 4 only
    Set($CommentOnCreateHeight, 15);

If C<MessageBoxRichText> is enabled, use this to control the height of the
editor:

    Set($CommentOnCreateRichTextHeight, 200);

=head1 AUTHOR

Best Practical Solutions, LLC E<lt>modules@bestpractical.comE<gt>

=head1 BUGS

All bugs should be reported via email to

    L<bug-RT-Extension-CommentOnCreate@rt.cpan.org|mailto:bug-RT-Extension-CommentOnCreate@rt.cpan.org>

or via the web at

    L<rt.cpan.org|http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-CommentOnCreate>.

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2014-2022 by Best Practical Solutions

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;
