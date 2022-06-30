#!/bin/bash
clear

compile(){
    if [ "$1" = "" ]; then
        echo "--- DEBUG ---"
        export CompilerFlags="-g -O0 -Wall -DDEBUG"
    elif [ "$1" = "release" ]; then
        echo "--- RELEASE ---";
        export CompilerFlags="-O3 -Wall -DRELEASE";
    elif [ "$1" = "bounds" ]; then
        echo "-- BOUDNS ---"
        export CompilerFlags="-O0 -Wall -DDEBUG -fsanitize=address"
    else
        echo "ERROR: Unkown build type $1"
        return;
    fi

    export LinkerFlags="-lpthread"
    export Includes="--include-directory ../src --include-directory ../include"
    export CompilerFlags="$CompilerFlags -ffast-math -mavx -DCM_LINUX -std=gnu11"
    
    pushd bin
    clang -o apoc $CompilerFlags $Includes ../src/Main.c $LinkerFlags
    popd

    return;
}

compile $1;