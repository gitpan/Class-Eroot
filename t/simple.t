use strict;
use Test;

# use a BEGIN block so we print our plan before MyModule is loaded
BEGIN { plan tests => 1 }

use Class::Eroot;

ok(1,1);

