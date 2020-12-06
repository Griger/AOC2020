sub isValid ($passport){
    my @fields = ("byr:", "iyr:", "eyr:", "hgt:", "hcl:", "ecl:", "pid:");

    [&&] map {$passport.contains($_)}, @fields;
}

my $content = "input.txt".IO.slurp;
my @passports = split /\n\n/, $content;

print [+] map {isValid($_)}, @passports;
