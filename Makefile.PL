use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Class::Eroot',
    'VERSION_FROM'	=> 'Eroot.pm', # finds $VERSION
    'PREREQ_PM'		=> {
      Class::Struct => 0.60
      }, # e.g., Module::Name => 1.1
);
