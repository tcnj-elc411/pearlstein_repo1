#!/bin/csh

echo


foreach name ( `cat "${ELC411_ROOT}/pearlstein_repo1/student_unames"` )
    pushd "${ELC411_ROOT}/${name}"
    echo "Username: ${name}"
    git commit -m "Graded" "*"
    echo
    echo
    popd
end


echo

