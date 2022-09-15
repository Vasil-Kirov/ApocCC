
import sys
import os
import time
import subprocess


start_time = time.time()

os.system('cls')


include_llvm = True
compiler_args = ""

if 'release' in sys.argv:
	print('--- RELEASE ---')
	compiler_args = ' -O2 -Wall'
else:
	print('--- DEBUG ---')
	compiler_args = ' -Zi -Od -Wall -DDEBUG'

if 'bounds' in sys.argv:
	print('--- BOUNDS ---')
	compiler_args += ' -fsanitize=address'

if 'novm' in sys.argv:
    include_llvm = False
    compiler_args += ' -DNOVM'

if 'ir' in sys.argv:
	compiler_args += ' -DONLY_IR'

linker_args = ""
if sys.platform == "win32":
	linker_args = " /link user32.lib Shell32.lib"
elif sys.platform == "linux":
	linker_args = llvm_libs
else:
	print(f'Unkown platform {sys.platform}')
	exit(1)
compiler_args += ' /fp:fast /nologo /arch:AVX'
compiler_args += ' -D_ITERATOR_DEBUG_LEVEL=0 -w'
includes=' -I..\\src -I..\\include'

compiler_args += ' -Wno-old-style-cast'

os.chdir('bin')

if include_llvm:
    compiler_args += os.popen('llvm-config.exe --cppflags --cxxflags --libs all').read()

c_command = ['clang-cl', '-oapoc.exe', '../src/Main.cpp']
c_command += includes.split(' ')
c_command += compiler_args.split(' ')
c_command += linker_args.split(' ')


c_compile = subprocess.Popen(c_command)
c_compile.wait()


print(f'Done, execution took {time.time() - start_time} seconds')
