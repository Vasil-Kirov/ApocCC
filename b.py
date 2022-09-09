import sys
import os
import time
import subprocess

start_time = time.time()

os.system('cls')


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
	print('--- ONLY IR ---')
	compiler_args += ' -DONLY_IR'

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

# compiler_args += os.popen('llvm-config.exe --cppflags --cxxflags --libs all').read()


llvm_version = 14

if llvm_version == 14:
    print("--- LLVM 14 ---")
    linker_args += r' -LE:/GitClone/llvm-14/lib'
    includes += r' -IE:/GitClone/llvm-14/include'

elif llvm_version == 15:
    print("--- LLVM 15 ---")
    linker_args += r' -LE:/GitClone/llvm-project/llvm/build/Release/lib'
    includes += r' -IE:/GitClone/llvm-project/llvm/build/include'
    includes += r' -IE:/GitClone/llvm-project/llvm/include'

llvm_libs = r' -lLLVMWindowsManifest.lib -lLLVMWindowsDriver.lib -lLLVMXRay.lib -lLLVMLibDriver.lib -lLLVMDlltoolDriver.lib -lLLVMCoverage.lib -lLLVMLineEditor.lib -lLLVMXCoreDisassembler.lib -lLLVMXCoreCodeGen.lib -lLLVMXCoreDesc.lib -lLLVMXCoreInfo.lib -lLLVMX86TargetMCA.lib -lLLVMX86Disassembler.lib -lLLVMX86AsmParser.lib -lLLVMX86CodeGen.lib -lLLVMX86Desc.lib -lLLVMX86Info.lib -lLLVMWebAssemblyDisassembler.lib -lLLVMWebAssemblyAsmParser.lib -lLLVMWebAssemblyCodeGen.lib -lLLVMWebAssemblyDesc.lib -lLLVMWebAssemblyUtils.lib -lLLVMWebAssemblyInfo.lib -lLLVMVEDisassembler.lib -lLLVMVEAsmParser.lib -lLLVMVECodeGen.lib -lLLVMVEDesc.lib -lLLVMVEInfo.lib -lLLVMSystemZDisassembler.lib -lLLVMSystemZAsmParser.lib -lLLVMSystemZCodeGen.lib -lLLVMSystemZDesc.lib -lLLVMSystemZInfo.lib -lLLVMSparcDisassembler.lib -lLLVMSparcAsmParser.lib -lLLVMSparcCodeGen.lib -lLLVMSparcDesc.lib -lLLVMSparcInfo.lib -lLLVMRISCVDisassembler.lib -lLLVMRISCVAsmParser.lib -lLLVMRISCVCodeGen.lib -lLLVMRISCVDesc.lib -lLLVMRISCVInfo.lib -lLLVMPowerPCDisassembler.lib -lLLVMPowerPCAsmParser.lib -lLLVMPowerPCCodeGen.lib -lLLVMPowerPCDesc.lib -lLLVMPowerPCInfo.lib -lLLVMNVPTXCodeGen.lib -lLLVMNVPTXDesc.lib -lLLVMNVPTXInfo.lib -lLLVMMSP430Disassembler.lib -lLLVMMSP430AsmParser.lib -lLLVMMSP430CodeGen.lib -lLLVMMSP430Desc.lib -lLLVMMSP430Info.lib -lLLVMMipsDisassembler.lib -lLLVMMipsAsmParser.lib -lLLVMMipsCodeGen.lib -lLLVMMipsDesc.lib -lLLVMMipsInfo.lib -lLLVMLanaiDisassembler.lib -lLLVMLanaiCodeGen.lib -lLLVMLanaiAsmParser.lib -lLLVMLanaiDesc.lib -lLLVMLanaiInfo.lib -lLLVMHexagonDisassembler.lib -lLLVMHexagonCodeGen.lib -lLLVMHexagonAsmParser.lib -lLLVMHexagonDesc.lib -lLLVMHexagonInfo.lib -lLLVMBPFDisassembler.lib -lLLVMBPFAsmParser.lib -lLLVMBPFCodeGen.lib -lLLVMBPFDesc.lib -lLLVMBPFInfo.lib -lLLVMAVRDisassembler.lib -lLLVMAVRAsmParser.lib -lLLVMAVRCodeGen.lib -lLLVMAVRDesc.lib -lLLVMAVRInfo.lib -lLLVMARMDisassembler.lib -lLLVMARMAsmParser.lib -lLLVMARMCodeGen.lib -lLLVMARMDesc.lib -lLLVMARMUtils.lib -lLLVMARMInfo.lib -lLLVMAMDGPUTargetMCA.lib -lLLVMAMDGPUDisassembler.lib -lLLVMAMDGPUAsmParser.lib -lLLVMAMDGPUCodeGen.lib -lLLVMAMDGPUDesc.lib -lLLVMAMDGPUUtils.lib -lLLVMAMDGPUInfo.lib -lLLVMAArch64Disassembler.lib -lLLVMAArch64AsmParser.lib -lLLVMAArch64CodeGen.lib -lLLVMAArch64Desc.lib -lLLVMAArch64Utils.lib -lLLVMAArch64Info.lib -lLLVMOrcJIT.lib -lLLVMMCJIT.lib -lLLVMJITLink.lib -lLLVMInterpreter.lib -lLLVMExecutionEngine.lib -lLLVMRuntimeDyld.lib -lLLVMOrcTargetProcess.lib -lLLVMOrcShared.lib -lLLVMDWP.lib -lLLVMDebugInfoGSYM.lib -lLLVMOption.lib -lLLVMObjectYAML.lib -lLLVMObjCopy.lib -lLLVMMCA.lib -lLLVMMCDisassembler.lib -lLLVMLTO.lib -lLLVMPasses.lib -lLLVMCFGuard.lib -lLLVMCoroutines.lib -lLLVMObjCARCOpts.lib -lLLVMipo.lib -lLLVMVectorize.lib -lLLVMLinker.lib -lLLVMInstrumentation.lib -lLLVMFrontendOpenMP.lib -lLLVMFrontendOpenACC.lib -lLLVMExtensions.lib -lLLVMDWARFLinker.lib -lLLVMGlobalISel.lib -lLLVMMIRParser.lib -lLLVMAsmPrinter.lib -lLLVMSelectionDAG.lib -lLLVMCodeGen.lib -lLLVMIRReader.lib -lLLVMAsmParser.lib -lLLVMInterfaceStub.lib -lLLVMFileCheck.lib -lLLVMFuzzMutate.lib -lLLVMTarget.lib -lLLVMScalarOpts.lib -lLLVMInstCombine.lib -lLLVMAggressiveInstCombine.lib -lLLVMTransformUtils.lib -lLLVMBitWriter.lib -lLLVMAnalysis.lib -lLLVMProfileData.lib -lLLVMSymbolize.lib -lLLVMDebugInfoPDB.lib -lLLVMDebugInfoMSF.lib -lLLVMDebugInfoDWARF.lib -lLLVMObject.lib -lLLVMTextAPI.lib -lLLVMMCParser.lib -lLLVMMC.lib -lLLVMDebugInfoCodeView.lib -lLLVMBitReader.lib -lLLVMFuzzerCLI.lib -lLLVMCore.lib -lLLVMRemarks.lib -lLLVMBitstreamReader.lib -lLLVMBinaryFormat.lib -lLLVMTableGen.lib -lLLVMSupport.lib -lLLVMDemangle.lib'
linker_args += llvm_libs

c_command = ['clang++', '-oapoc.exe', '../src/Main.cpp']
#c_command = ['clang-cl', '-oapoc.exe', '../src/Main.cpp']
c_command += linker_args.split(' ')
c_command += includes.split(' ')
c_command += compiler_args.split(' ')
c_command += llvm_flags.split(' ')

os.chdir('bin')

c_compile = subprocess.Popen(c_command)
c_compile.wait()

print(f'Done, execution took {time.time() - start_time} seconds')
