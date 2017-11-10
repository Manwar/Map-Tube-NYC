package Map::Tube::NYC::Line::IRTFlushing;

$Map::Tube::NYC::Line::IRTFlushing::VERSION   = '0.45';
$Map::Tube::NYC::Line::IRTFlushing::AUTHORITY = 'cpan:MANWAR';

use 5.006;
use strict; use warnings;

=head1 NAME

Map::Tube::NYC::Line::IRTFlushing - NYC Subway Map: IRT Flushing Line.

=head1 VERSION

Version 0.45

=head1 DESCRIPTION

NYC Subway Map: IRT Flushing Line.

    +---------------------------------+---------------------------------------------------+
    | Station Name                    | Connected To                                      |
    +---------------------------------+---------------------------------------------------+
    | Flushing                        | Willets Point                                     |
    | Willets Point                   | Flushing, 111th Street                            |
    | 111th Street                    | Willets Point, 103rd Street                       |
    | 103rd Street                    | 111th Street, Junction Boulevard                  |
    | Junction Boulevard              | 103rd Street, 90th Street                         |
    | 90th Street                     | Junction Boulevard, 82nd Street                   |
    | 82nd Street                     | 90th Street, 74th Street                          |
    | 74th Street                     | 82nd Street, 69th Street                          |
    | 69th Street                     | 74th Street, 61st Street                          |
    | 61st Street                     | 69th Street, 52nd Street                          |
    | 52nd Street                     | 61st Street, 46th Street                          |
    | 46th Street                     | 52nd Street, 40th Street                          |
    | 40th Street                     | 46th Street, 33rd Street                          |
    | 33rd Street                     | 40th Street, Queensboro Plaza                     |
    | Queensboro Plaza                | 33rd Street, Court Square                         |
    | Court Square                    | Queensboro Plaza, Hunters Point Avenue            |
    | Hunters Point Avenue            | Court Square, Vernon Boulevard-Jackson Avenue     |
    | Vernon Boulevard-Jackson Avenue | Hunters Point Avenue, Grand Central               |
    | Grand Central                   | Vernon Boulevard-Jackson Avenue, Fifth Avenue     |
    | Fifth Avenue                    | Grand Central, 42nd Street                        |
    | 42nd Street                     | Fifth Avenue, 34th Street                         |
    | 34th Street                     | 42nd Street                                       |
    +---------------------------------+---------------------------------------------------+

=head1 NOTE

=over 2

=item * The station "Court Square" is also part of
          L<IND Crosstown Line|Map::Tube::NYC::Line::INDCrosstown>.

=item * The station "42nd Street" is also part of
          L<IND Eighth Avenue Line|Map::Tube::NYC::Line::INDEighthAvenue>
        | L<IRT Lexington Avenue Line|Map::Tube::NYC::Line::IRTLexingtonAvenue>.

=back

=head1 MAP

NYC Subway Map: L<IRT Flushing Line|https://raw.githubusercontent.com/manwar/Map-Tube-NYC/master/maps/IRT-Flushing.png>
map generated by plugin L<Map::Tube::Plugin::Graph>.

=begin html

<a href = "https://raw.githubusercontent.com/manwar/Map-Tube-NYC/master/maps/IRT-Flushing.png">
<img src    = "https://raw.githubusercontent.com/manwar/Map-Tube-NYC/master/maps/IRT-Flushing.png"
     alt    = "NYC Subway Map: IRT Flushing Line"
     width  = "600px"
     height = "500px"/>
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

    perldoc Map::Tube::NYC::Line::IRTFlushing

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

This program  is  free software; you can redistribute it and / or modify it under
the   terms  of the the Artistic License (2.0). You may obtain a copy of the full
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

1; # End of Map::Tube::NYC::Line::IRTFlushing
