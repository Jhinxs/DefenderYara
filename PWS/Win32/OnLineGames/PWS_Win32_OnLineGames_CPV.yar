
rule PWS_Win32_OnLineGames_CPV{
	meta:
		description = "PWS:Win32/OnLineGames.CPV,SIGNATURE_TYPE_PEHSTR,23 00 23 00 0e 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //10 CreateToolhelp32Snapshot
		$a_01_1 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //10 OpenProcess
		$a_01_2 = {57 72 69 74 65 46 69 6c 65 } //10 WriteFile
		$a_01_3 = {00 4a 75 6d 70 4f 6e } //1
		$a_01_4 = {00 4a 75 6d 70 4f 66 66 } //1 䨀浵佰晦
		$a_01_5 = {48 4d 5f 54 43 4c 57 4f 57 53 4a 5f 49 4e 46 4f } //1 HM_TCLWOWSJ_INFO
		$a_01_6 = {48 4d 5f 4d 45 53 53 57 4f 57 41 47 45 57 5a 48 55 5a 48 55 57 44 4c 4c } //1 HM_MESSWOWAGEWZHUZHUWDLL
		$a_01_7 = {48 4d 5f 4d 45 53 53 57 4f 57 5a 48 55 5a 48 55 44 4c 4c } //1 HM_MESSWOWZHUZHUDLL
		$a_01_8 = {61 73 76 6c 69 75 6c 69 75 33 32 2e 64 6c 6c } //1 asvliuliu32.dll
		$a_01_9 = {77 73 64 67 63 61 78 2e 65 78 65 } //1 wsdgcax.exe
		$a_01_10 = {77 73 6d 73 63 61 78 2e 65 78 65 } //1 wsmscax.exe
		$a_01_11 = {67 64 6d 73 69 33 32 2e 64 6c 6c } //1 gdmsi32.dll
		$a_01_12 = {77 73 6d 73 63 7a 78 2e 64 6c 6c } //1 wsmsczx.dll
		$a_01_13 = {61 73 76 7a 68 75 7a 68 75 33 32 2e 64 6c 6c } //1 asvzhuzhu32.dll
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=35
 
}