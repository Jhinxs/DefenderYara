
rule Worm_Win32_Mydoom_PA_MTB{
	meta:
		description = "Worm:Win32/Mydoom.PA!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 63 74 66 6d 65 6e 2e 65 78 65 } //1 :\WINDOWS\SYSTEM32\ctfmen.exe
		$a_01_1 = {3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 73 6d 6e 73 73 2e 65 78 65 } //1 :\WINDOWS\SYSTEM32\smnss.exe
		$a_01_2 = {3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 73 61 74 6f 72 6e 61 73 2e 64 6c 6c } //1 :\WINDOWS\SYSTEM32\satornas.dll
		$a_01_3 = {3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 67 72 63 6f 70 79 2e 64 6c 6c } //1 :\WINDOWS\SYSTEM32\grcopy.dll
		$a_01_4 = {61 75 74 6f 73 74 61 72 74 5f 62 6f 74 } //1 autostart_bot
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}