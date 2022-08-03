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
	compiler_args = '-g -O0 -Wall -DDEBUG'

elif sys.argv[1] == 'release':
	print('--- RELEASE ---')
	compiler_args = '-O3 -Wall'

elif sys.argv[1] == 'bounds':
	print('--- BOUNDS ---')
	compiler_args = '-O0 -Wall -fsanitize=address'

llvm_flags = r"-fno-exceptions -std=c++14 -D_CRT_SECURE_NO_DEPRECATE -D_CRT_SECURE_NO_WARNINGS -D_CRT_NONSTDC_NO_DEPRECATE -D_CRT_NONSTDC_NO_WARNINGS -D_SCL_SECURE_NO_DEPRECATE -D_SCL_SECURE_NO_WARNINGS -DUNICODE -D_UNICODE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS"

linker_args = ""
if sys.platform == "win32":
	linker_args = "-luser32 -lShell32.lib -lpsapi.lib -lole32.lib -luuid.lib -ladvapi32.lib"
elif sys.platform == "linux":
	linker_args = llvm_libs
else:
	print(f'Unkown platform {sys.platform}')
	exit(1)

compiler_args += ' -ffast-math -mavx -Wno-microsoft-enum-forward-reference -Wno-c99-extensions'
compiler_args += ' -D_ITERATOR_DEBUG_LEVEL=0'
includes='-I..\\src -I..\\include'
backend_files = ''
if len(llvm_flags) > 0:
	backend_files = '..\\src\\LLVM_Backend.cpp'
else:
	backend_files = '..\\src\\C_Backend.cpp'

linker_args += r' -lE:/GitClone/llvm-project/llvm/build/Release/lib/*.lib'
linker_args += r' -LE:/GitClone/llvm-project/llvm/build/Release/lib'
includes += r' -IE:/GitClone/llvm-project/llvm/build/include'
includes += r' -IE:/GitClone/llvm-project/llvm/include'

c_command = ['clang++', '-oapoc.exe', '../src/Main.cpp']
c_command += linker_args.split(' ')
c_command += includes.split(' ')
c_command += compiler_args.split(' ')

c_command += llvm_flags.split(' ')

os.chdir('bin')

c_compile = subprocess.Popen(c_command)
c_compile.wait()

print(f'Done, execution took {time.time() - start_time} seconds')
