
call b.bat novm
pushd data
call apoc quick_test_2.apoc --no-link
call b.bat
popd
