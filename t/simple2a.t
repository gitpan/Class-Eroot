use strict;
use Test;

# use a BEGIN block so we print our plan before MyModule is loaded
BEGIN { plan tests => 1 }

use Class::Eroot;

my $persist_file = "simple2.t-persist";
die "$persist_file not created by previous test" unless -e $persist_file;

my $eroot = Class::Eroot->cache( 'Name' => $persist_file,
				 'Key'  => "myAppObjects");

use CGI;
  my $some_obj;
{


  if( $eroot->Continue ){
    # No existing objects.  Start from scratch.
    warn 'no ability to reload persistent store. failure';
    ok(0);
  }
  else{
    $some_obj = $eroot->Root("some_obj");
    use Data::Dumper;
  }

}


ok($some_obj->param('z'),3);
