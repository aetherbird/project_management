#!/usr/bin/raku

# use CWD;

my $projects_directory = "/jjbasket/projects";

chdir $projects_directory 
    or die "failed to change to $projects_directory";

if $projects_directory eq $*CWD.Str {
    say "Current directory: $*CWD\n";
    say "In projects directory.\n";
} else {
    say "Current directory: $*CWD\n";
    say "NOT IN PROJECTS DIRECTORY.\n";
}

say "Number of arguments passed to projects program: {@*ARGS.elems}";

for @*ARGS -> $arg {
    say "Argument: $arg";
}

