import os
import subprocess
from time import time

from colorama import Fore
from colorama import Style

def get_absolute_paths(directory):
    paths = list()
    for dirpath,_,filenames in os.walk(directory):
        if str(dirpath).endswith('..'):
            for f in filenames:
                paths.append(os.path.abspath(os.path.join(dirpath, f)))

    return paths;



os.chdir('tests/output')
files = get_absolute_paths('..')

os.system('')

for idx in range(0, 2):
    backend = '';
    if idx == 0:
        backend = 'LLVM'
        print("LLVM Backend:")
    else:
        backend = 'Fast'
        print("Custom Backend:")
    for file in files:
        expected_output = str()
        with open(file) as f:
            first_line = f.readline()
            expression = first_line[3:]
            expected_output = str(eval(expression))

        command_line = ['apoc', file]
        command_line += ['--backend', backend]
        command_line += ['--out']
        command_line += ['a.exe']
        start_time = time()
        process = subprocess.Popen(command_line, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        process.wait()
        end_time = time()
        if process.stderr is not None and process.stdout is not None:
            subprocess_stderr = str(process.stderr.read().decode('utf-8'))
            subprocess_stdout = str(process.stdout.read().decode('utf-8')) 

            if subprocess_stderr.find('FATAL') != -1 or subprocess_stderr.find('ERROR') != -1:
                print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file} Time: {end_time - start_time:.2f}\nOutput: {subprocess_stderr}\n')
                continue

            if subprocess_stdout.find('FATAL') != -1 or subprocess_stdout.find('ERROR') != -1:
                print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file} Time: {end_time - start_time:.2f}\nOutput: {subprocess_stderr}\n')
                continue

            if len(subprocess_stdout) == 0:
                print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file} CRASHED')
                continue


        command_line = ['a.exe']
        process = subprocess.Popen(command_line, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        process.wait()
        output = str(process.returncode)
        if output == expected_output:
            print(f'{Fore.GREEN}[✓]OK {Style.RESET_ALL}{file} Time: {end_time - start_time:.2f}')
        else:
            print(f'{Fore.RED}[✗]FAIL {Style.RESET_ALL}{file}\nOutput: {output}\nExpected: {expected_output} Time: {end_time - start_time:.2f}')


