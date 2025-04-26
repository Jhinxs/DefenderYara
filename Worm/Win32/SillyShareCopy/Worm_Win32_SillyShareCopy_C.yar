
rule Worm_Win32_SillyShareCopy_C{
	meta:
		description = "Worm:Win32/SillyShareCopy.C,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_00_0 = {41 63 63 65 70 74 2d 4c 61 6e 67 75 61 67 65 3a 20 7a 68 2d 63 6e } //1 Accept-Language: zh-cn
		$a_01_1 = {5c 41 6c 77 69 6c 20 53 6f 66 74 77 61 72 65 5c } //1 \Alwil Software\
		$a_01_2 = {5c 50 72 65 76 78 31 5c } //1 \Prevx1\
		$a_01_3 = {4e 6f 72 74 6f 6e 20 53 79 73 74 65 6d 57 6f 72 6b 73 } //1 Norton SystemWorks
		$a_01_4 = {46 54 43 6c 65 61 6e 65 72 53 68 65 6c 6c } //1 FTCleanerShell
		$a_01_5 = {5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c } //1 \Explorer\Browser Helper Objects\
		$a_00_6 = {4e 6f 44 72 69 76 65 54 79 70 65 41 75 74 6f 52 75 6e } //1 NoDriveTypeAutoRun
		$a_00_7 = {41 75 74 6f 52 75 6e 2e 69 6e 66 } //1 AutoRun.inf
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=7
 
}