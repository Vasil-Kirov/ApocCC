import sys
import os
import time
import subprocess

start_time = time.time()

os.system('clear')


llvm_flags = ""
compiler_args = ""

if 'release' in sys.argv:
	print('--- RELEASE ---')
	compiler_args = '-O3 -Wall'

elif 'bounds' in sys.argv:
	print('--- BOUNDS ---')
	compiler_args = '-O0 -Wall -fsanitize=address'
else:
	print('--- DEBUG ---')
	compiler_args = '-g -O0 -Wall -DDEBUG'

if 'ir' in sys.argv:
	print('--- IR ---')
	compiler_args += ' -DONLY_IR'

llvm_flags = r"-fno-exceptions -std=c++14 -D_CRT_SECURE_NO_DEPRECATE -D_CRT_SECURE_NO_WARNINGS -D_CRT_NONSTDC_NO_DEPRECATE -D_CRT_NONSTDC_NO_WARNINGS -D_SCL_SECURE_NO_DEPRECATE -D_SCL_SECURE_NO_WARNINGS -DUNICODE -D_UNICODE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS"

linker_args = ""
if sys.platform == "win32":
	linker_args = "-luser32 -lShell32.lib -lpsapi.lib -lole32.lib -luuid.lib -ladvapi32.lib"
elif sys.platform == "linux":
    compiler_args += ' -DCM_LINUX'
else:
	print(f'Unkown platform {sys.platform}')
	exit(1)

compiler_args += ' -ffast-math -mavx -Wno-microsoft-enum-forward-reference -Wno-c99-extensions'
compiler_args += ' -D_ITERATOR_DEBUG_LEVEL=0'
includes='-I../src -I../include'

compiler_args += os.popen('llvm-config --cppflags --cxxflags --libs all').read()

c_command = ['clang++', '-oapoc', '../src/Main.cpp']
c_command += linker_args.split(' ')
c_command += includes.split(' ')
c_command += compiler_args.replace('\n', ' ').split(' ')
#c_command += llvm_flags.split(' ')

os.chdir('bin')

c_compile = subprocess.Popen(c_command)
c_compile.wait()

print(f'Done, execution took {time.time() - start_time} seconds')
