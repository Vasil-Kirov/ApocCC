import os
import sys
from os.path import isdir
import subprocess
from time import time

from colorama import Fore
from colorama import Style

def remove_file():
    if os.path.isfile('a.exe'):
        os.remove('a.exe')

def remove_newlines(string):
    string = string.replace('\n', '')
    string = string.replace('\r', '')
    return string

def get_absolute_paths(directory):
    paths = list()
    for dirpath,_,filenames in os.walk(directory):
        for f in filenames:
            if f.endswith('.apoc'):
                paths.append(os.path.abspath(os.path.join(dirpath, f)))

    return paths;



os.chdir('tests/output')
files = get_absolute_paths('..')

os.system('')

backend = 'LLVM'
if 'custom' in sys.argv or 'Custom' in sys.argv:
    backend = 'Fast'

only_suite = False
if 'suite' in sys.argv:
    only_suite = True

# This loop doesn't do anything now
for idx in range(0, 1):
    for file in files:
        if only_suite and 'c_test_translate' not in file:
            continue

        expecting_str = False
        expected_output = str()
        with open(file) as f:
            first_line = f.readline()
            expression = first_line[3:]
            if expression[0] == 's':
                expecting_str = True
                expected_output = remove_newlines(first_line[5:])
            else:
                expected_output = str(eval(expression))

        command_line = ['apoc', file]
        command_line += ['--backend', backend]
        command_line += ['--out']
        command_line += ['a.exe']
        start_time = time()
        process = subprocess.Popen(command_line, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        process.wait()
        end_time = time()

        #if not os.path.isfile('a.exe'):
            #print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file} No Output\n');

        if process.stderr is not None and process.stdout is not None:
            subprocess_stderr = str(process.stderr.read().decode('utf-8'))
            subprocess_stdout = str(process.stdout.read().decode('utf-8')) 

            if subprocess_stderr.find('FATAL') != -1 or subprocess_stderr.find('ERROR') != -1:
                print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file} Time: {end_time - start_time:.2f}\nOutput: {subprocess_stderr}\n')
                remove_file()
                continue

            if subprocess_stdout.find('FATAL') != -1 or subprocess_stdout.find('ERROR') != -1:
                print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file} Time: {end_time - start_time:.2f}\nOutput: {subprocess_stderr}\n')
                remove_file()
                continue

            if len(subprocess_stdout) == 0:
                print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file} CRASHED')
                remove_file()
                continue

        if not os.path.isfile('a.exe'):
            continue

        # Run the compiled program
        command_line = ['a.exe']
        process = subprocess.Popen(command_line, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        process.wait()

        if expecting_str:
            if process.stdout is not None:
                out = remove_newlines(str(process.stdout.read().decode('utf-8')))
                if out == expected_output:
                    print(f'{Fore.GREEN}[✓]OK {Style.RESET_ALL}{file} Time: {end_time - start_time:.2f}')
                else:
                    print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file} Got: {out} Expected: {expected_output}')

            else:
                print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file} No STDOUT output! Expected: {expected_output}')
            
            continue;

        output = str(process.returncode)
        if output == expected_output:
            print(f'{Fore.GREEN}[✓]OK {Style.RESET_ALL}{file} Time: {end_time - start_time:.2f}')
        else:
            print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file}\nOutput: {output}\nExpected: {expected_output} Time: {end_time - start_time:.2f}')

        remove_file()





