#!/bin/csh

echo

foreach name ( `cat student_unames` )
    echo "Username: ${name}"
    git clone "git@github.com:tcnj-elc411/${name}"

    echo
    echo
end

echo

