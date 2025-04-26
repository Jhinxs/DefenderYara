
rule Ransom_Win32_Badbetm_PA_MTB{
	meta:
		description = "Ransom:Win32/Badbetm.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {48 4f 57 20 54 4f 20 44 45 43 52 59 50 54 20 59 4f 55 52 20 46 49 4c 45 53 } //1 HOW TO DECRYPT YOUR FILES
		$a_01_1 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 vssadmin delete shadows /all /quiet
		$a_01_2 = {4c 6f 63 61 6c 5c 52 75 73 74 42 61 63 6b 74 72 61 63 65 4d 75 74 65 78 } //1 Local\RustBacktraceMutex
		$a_01_3 = {5c 52 65 63 6f 76 65 72 20 66 69 6c 65 73 2e 68 74 61 } //1 \Recover files.hta
		$a_01_4 = {2e 43 52 50 54 44 } //1 .CRPTD
		$a_01_5 = {77 65 76 74 75 74 69 6c 20 63 6c 20 22 25 31 22 5c 73 74 61 72 74 5f 61 66 74 65 72 2e 62 61 74 } //1 wevtutil cl "%1"\start_after.bat
		$a_01_6 = {5c 72 65 6c 65 61 73 65 5c 64 65 70 73 5c 75 6e 74 69 74 6c 65 64 2e 70 64 62 } //1 \release\deps\untitled.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}