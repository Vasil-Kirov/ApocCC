
import sys
import os
import time
import subprocess


start_time = time.time()

os.system('cls')


llvm_flags = ""
compiler_args = ""

if len(sys.argv) == 1 or sys.argv[1] == 'debug':
	print('--- DEBUG ---')
	compiler_args = ' -Zi -Od -Wall -DDEBUG'

elif sys.argv[1] == 'release':
	print('--- RELEASE ---')
	compiler_args = ' -O2 -Wall'

elif sys.argv[1] == 'bounds':
	print('--- BOUNDS ---')
	compiler_args = ' -Od -Wall -fsanitize=address'

if len(sys.argv) == 3 and sys.argv[2].lower() == 'llvm_be':
	print("Oh god what have you done")
	

linker_args = ""
if sys.platform == "win32":
	linker_args = " /link user32.lib Shell32.lib"
elif sys.platform == "linux":
	linker_args = llvm_libs
else:
	print(f'Unkown platform {sys.platform}')
	exit(1)
compiler_args += ' /fp:fast /nologo'
compiler_args += ' -D_ITERATOR_DEBUG_LEVEL=0 -w -msse4.1'
includes=' -I..\\src -I..\\include'
linker_args += r' E:\GitClone\llvm-project\llvm\build\Release\lib\*.lib'


command = 'clang-cl ../src/Main.cpp'
command += compiler_args + llvm_flags + includes + linker_args

os.chdir('bin')
os.system(command)

print(f'Done, execution took {time.time() - start_time} seconds')
