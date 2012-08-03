
use strict;
use warnings;

use Module::Build 0.38;


my %module_build_args = (
  "build_requires" => {
    "DBD::SQLite" => 0,
    "Module::Build" => "0.38",
    "Mojolicious::Lite" => 0,
    "Test::Mojo" => 0,
    "Test::More" => 0,
    "Try::Tiny" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.38"
  },
  "dist_abstract" => "\"proper\" handling of DBI based connections in Mojolicious",
  "dist_author" => [
    "Ben van Staveren <madcat\@cpan.org>"
  ],
  "dist_name" => "Mojolicious-Plugin-Database",
  "dist_version" => "1.06",
  "license" => "perl",
  "module_name" => "Mojolicious::Plugin::Database",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "DBI" => 0,
    "Mojo::Base" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
