package Map::Tube::NYC;

$Map::Tube::NYC::VERSION   = '0.32';
$Map::Tube::NYC::AUTHORITY = 'cpan:MANWAR';

=head1 NAME

Map::Tube::NYC - Interface to the NYC Subway Map.

=head1 VERSION

Version 0.32

=cut

use 5.006;
use Data::Dumper;
use File::Share ':all';

use Moo;
use namespace::clean;

has xml => (is => 'ro', default => sub { return dist_file('Map-Tube-NYC', 'nyc-map.xml') });

with 'Map::Tube';

=encoding utf8

=head1 DESCRIPTION

It currently provides functionality to find the shortest  route between  the  two
given  nodes. It covers the following subway lines just yet:

=over 2

=item * L<IND Sixth Avenue Line|Map::Tube::NYC::Line::INDSixthAvenue>

=item * L<IND Eighth Avenue Line|Map::Tube::NYC::Line::INDEighthAvenue>

=item * L<IND Crosstown Line|Map::Tube::NYC::Line::INDCrosstown>

=item * L<IRT Flushing Line|Map::Tube::NYC::Line::IRTFlushing>

=item * L<BMT Canarsie Line|Map::Tube::NYC::Line::BMTCanarsie>

=item * L<BMT Nassau Street Line|Map::Tube::NYC::Line::BMTNassauStreet>

=item * LIRT Lexington Avenue Line|Map::Tube::NYC::Line::IRTLexingtonAvenue>

=back

=head1 TODO (Subway Lines)

=over 2

=item * BMT Broadway Line

=item * IRT Broadway Line

=back

=head1 CONSTRUCTOR

The constructor DO NOT expects parameters.This setup the default node definitions.

    use strict; use warnings;
    use Map::Tube::NYC;

    my $subway = Map::Tube::NYC->new;

=head1 METHODS

=head2 get_shortest_route($from, $to)

It expects C<$from> and C<$to> station name, required param. It returns an object
of type L<Map::Tube::Route>. On error it throws exception of type L<Map::Tube::Exception>.

    use strict; use warnings;
    use Map::Tube::NYC;

    my $subway = Map::Tube::NYC->new;
    my $route  = $subway->get_shortest_route('Canal Street', 'High Street');

    print "Route: $route\n";;

=head2 as_image($line_name)

It expects the plugin  L<Map::Tube::Plugin::Graph> to be  installed. Returns line
image  as  base64  encoded string if C<$line_name> passed in otherwise it returns
base64 encoded string of the entire map.

    use strict; use warnings;
    use MIME::Base64;
    use Map::Tube::NYC;

    my $subway = Map::Tube::NYC->new;
    my $map    = $subway->name;
    open(my $IMAGE, ">$map.png");
    binmode($IMAGE);
    print $IMAGE decode_base64($subway->as_image);
    close($IMAGE);

The L<NYC Subway Map|https://raw.githubusercontent.com/Manwar/Map-Tube-NYC/master/maps/NYC-Subway.png>
map as generated by plugin L<Map::Tube::Plugin::Graph>.

=begin html

<a href = "https://raw.githubusercontent.com/Manwar/Map-Tube-NYC/master/maps/NYC-Subway.png">
<img src    = "https://raw.githubusercontent.com/Manwar/Map-Tube-NYC/master/maps/NYC-Subway.png"
     alt    = "NYC Subway Map"
     width  = "500px"
     height = "700px"/>
</a>

=end html

=head1 AUTHOR

Mohammad S Anwar, C<< <mohammad.anwar at yahoo.com> >>

=head1 REPOSITORY

L<https://github.com/manwar/Map-Tube-NYC>

=head1 BUGS

Please report any bugs/feature requests to C<bug-map-tube-nyc at rt.cpan.org>, or
through the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Map-Tube-NYC>.
I will be notified, and then you'll automatically be notified of progress on your
bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Map::Tube::NYC

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Map-Tube-NYC>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Map-Tube-NYC>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Map-Tube-NYC>

=item * Search CPAN

L<http://search.cpan.org/dist/Map-Tube-NYC/>

=back

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2014 - 2016 Mohammad S Anwar.

This  program  is  free software; you can redistribute it and/or modify it under
the  terms  of the the Artistic License (2.0). You may obtain a copy of the full
license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any  use,  modification, and distribution of the Standard or Modified Versions is
governed by this Artistic License.By using, modifying or distributing the Package,
you accept this license. Do not use, modify, or distribute the Package, if you do
not accept this license.

If your Modified Version has been derived from a Modified Version made by someone
other than you,you are nevertheless required to ensure that your Modified Version
 complies with the requirements of this license.

This  license  does  not grant you the right to use any trademark,  service mark,
tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge patent license
to make,  have made, use,  offer to sell, sell, import and otherwise transfer the
Package with respect to any patent claims licensable by the Copyright Holder that
are  necessarily  infringed  by  the  Package. If you institute patent litigation
(including  a  cross-claim  or  counterclaim) against any party alleging that the
Package constitutes direct or contributory patent infringement,then this Artistic
License to you shall terminate on the date that such litigation is filed.

Disclaimer  of  Warranty:  THE  PACKAGE  IS  PROVIDED BY THE COPYRIGHT HOLDER AND
CONTRIBUTORS  "AS IS'  AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES. THE IMPLIED
WARRANTIES    OF   MERCHANTABILITY,   FITNESS   FOR   A   PARTICULAR  PURPOSE, OR
NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY YOUR LOCAL LAW. UNLESS
REQUIRED BY LAW, NO COPYRIGHT HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL,  OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE
OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=cut

1; # End of Map::Tube::NYC
