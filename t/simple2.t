use strict;
use Test;

# use a BEGIN block so we print our plan before MyModule is loaded
BEGIN { plan tests => 1 }

use Class::Eroot;

my $persist_file = "simple2.t-persist";
unlink $persist_file;


use CGI;

{
my $eroot = Class::Eroot->cache( 'Name' => $persist_file,
				 'Key'  => "myAppObjects");

  my $some_obj;

  if( $eroot->Continue ){
    # No existing objects.  Start from scratch.
    $some_obj = CGI->new({ x => 1, y => 2, z => 3 });
    $eroot->Keep( "some_obj" => $some_obj );
  }
  else{
    $some_obj = $eroot->Root("some_obj");
  }

}

use Cwd;
my $r = getcwd;

if (-e "$r/$persist_file") {
  ok(1);
} else {
  ok(0);
}





