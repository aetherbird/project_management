#!/usr/bin/raku

my $projects_directory = "/jjbasket/projects";

my $arg_counter = 0;
for @*ARGS -> $arg {                                                                                
    $arg_counter += 1;
}

chdir $projects_directory                                                                           
    or die "failed to change to $projects_directory";

if $arg_counter == 0 {
    say "vanilla_operation\n\n";
    vanilla_operation();
} 
elsif $arg_counter == 1 {
    say "directory argument provided\n\n";
}
elsif $arg_counter == 2 {
    say "2 arguments provided\n\n";
}
else {
    say "TOO MANY ARUGMENTS PROVIDED\n\n";
    die "too many arugments provided";
}

if $projects_directory eq $*CWD.Str {
    say "Current directory: $*CWD\n";
    say "In projects directory.\n";
} else {
    say "Current directory: $*CWD\n";
    say "NOT IN PROJECTS DIRECTORY.\n";
    die "failed to find projects directory";
}

say "Number of arguments passed to projects program: {@*ARGS.elems}";

for @*ARGS -> $arg {
    say "Argument: $arg";
}

sub vanilla_operation {
    my $dirparse = dir().join(' ');

    $dirparse ~~ s:g/(\S+)\s/$0\n/;
    say $dirparse;
}

