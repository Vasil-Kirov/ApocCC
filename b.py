import sys
import os
import time
import subprocess

start_time = time.time()

os.system('cls')


llvm_libs = ""
llvm_include = ""
compiler_args = ""

if len(sys.argv) == 1 or sys.argv[1] == 'debug':
	print('--- DEBUG ---')
	compiler_args = '-g -O0 -Wall -DDEBUG'

elif sys.argv[1] == 'release':
	print('--- RELEASE ---')
	compiler_args = '-O3 -Wall -DRELEASE'

elif sys.argv[1] == 'bounds':
	print('--- BOUNDS ---')
	compiler_args = '-O0 -Wall -DDEBUG -fsanitize=address'

if len(sys.argv) == 3 and sys.argv[2].lower() == 'llvm_be':
	print("Oh god what have you done")
	llvm_libs = ""
	with open('LLVM_LIBS.txt', "r") as f:
		llvm_libs = f.read().replace('\n', ' ')

	llvm_include = ' -IE:\\GitClone\\llvm-project\\llvm\\include'

linker_args = ""
if sys.platform == "win32":
	linker_args = "-luser32 -lShell32.lib" + llvm_libs
elif sys.platform == "linux":
	linker_args = llvm_libs
else:
	print(f'Unkown platform {sys.platform}')
	exit(1)
compiler_args = compiler_args + '-ffast-math -mavx -Wno-microsoft-enum-forward-reference -Wno-c99-extensions'
includes='-I..\\src -I..\\include' + llvm_include
backend_files = ''
if len(llvm_include) > 0:
	backend_files = '..\\src\\LLVM_Backend.cpp'
else:
	backend_files = '..\\src\\C_Backend.cpp'


cmd = ['clang', '-oapoc.exe', '../src/Main.c']
cmd += linker_args.split(' ')
cmd += includes.split(' ')
cmd += backend_files.split(' ')
cmd += compiler_args.split(' ')


os.chdir('bin')
process = subprocess.Popen(cmd)

process.wait()
print(f'Done, execution took {time.time() - start_time} seconds')
