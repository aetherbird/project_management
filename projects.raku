#!/usr/bin/raku

# use CWD;

my $projects_directory = "/jjbasket/projects";

my $arg_counter = 0;
for @*ARGS -> $arg {                                                                                
    $arg_counter += 1;
}

if $arg_counter == 0 {
    #    vanilla_operation();
    say "vanilla_operation\n\n"
} 
elsif $arg_counter == 1 {
    say "directory argument provided\n\n"
}
elsif $arg_counter == 2 {
    say "2 arguments provided\n\n"
}
else {
    say "TOO MANY ARUGMENTS PROVIDED\n\n"
}

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

