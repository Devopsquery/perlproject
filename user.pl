#!/usr/bin/perl

print("ADD USER  : 1 - Delet User : 2 Edit User : 3\n");
my $value_first = <STDIN>;
SWITCH: {
    ($value_first == 1) && do {
                               print "enter the user name :\n";
                               $new_user = <STDIN>;
                               `sudo useradd $new_user`; # add user 
                               exit() };
    ($value_first == 2) && do { 
                              print "enter the user name for delete :\n";
                              $del_user = <STDIN>;
                              `sudo userdel $del_user`; # delete user
                              exit()};
    ($value_first == 3) && do {
print "Shell :1 User Name :2 Home Directory :3 Password :4 Sudo permmision :5\n";
my $value_sec = <STDIN>;
print "Enter the user name : \n";
$ed_user = <STDIN>;
chomp($ed_user);
                SWITCH: {
($value_se  == 1) && do {
                         print "enter the shell  \n" ;
                         $shell = <STDIN>;
                         chomp($shell);
                         `usermod -s $shell $ed_user`;
                         exit()};
($value_sec == 3) && do {
                         print "enter the new home directory:\n";
                         $dir = <STDIN>;
                         chomp ($dir);
                         'mkdir -p $dir';`usermod -d $dir $ed_user`;
                         exit() };
($value_sec == 4) && do {
                         print "enter the password ";
                         $pass = <TSDIN>;`usermod -p $pass $ed_user`;
                         exit() };
($value_sec == 5) && do { 
                        use File::Slurp;
                        my @lines = read_file("/etc/sudoers");
                        write_file("$ed_user   ALL=(ALL:ALL) ALL", @23);
                         exit() };
($value_sec == 2) && do {
                        print "enter the new name for $ed_user:\n";
                        $groupid = <STDIN>;
                        chomp($groupid);
                        `usermod -l $groupid $ed_user`;exit() }; 
                        print("Enter the correct value \n");
           };
 exit()};
    print("Enter the correct value \n");
};


