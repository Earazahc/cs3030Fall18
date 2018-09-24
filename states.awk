# AWK Script
BEGIN { FS = ","}   # Field seperator
{
    print $4", "$1","$2","$3
}
