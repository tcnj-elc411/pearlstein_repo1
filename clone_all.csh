#!/bin/csh

echo

pushd $ELC411_ROOT

foreach name ( `cat ${ELC411_ROOT}/pearlstein_repo1/student_unames` )
    echo "Username: ${name}"
    git clone "git@github.com:tcnj-elc411/${name}"

    echo
    echo
end

popd

echo

