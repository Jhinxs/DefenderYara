
rule Trojan_Win32_Skeeyah_Y_MTB{
	meta:
		description = "Trojan:Win32/Skeeyah.Y!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {3a 00 5c 00 53 00 45 00 4e 00 49 00 4e 00 5c 00 56 00 49 00 52 00 55 00 53 00 5c 00 } //1 :\SENIN\VIRUS\
		$a_01_1 = {5c 00 4e 00 6f 00 50 00 6f 00 72 00 6e 00 2e 00 65 00 78 00 65 00 } //1 \NoPorn.exe
		$a_01_2 = {4a 00 41 00 55 00 48 00 49 00 5f 00 50 00 4f 00 52 00 4e 00 4f 00 47 00 52 00 41 00 46 00 49 00 } //1 JAUHI_PORNOGRAFI
		$a_01_3 = {50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //1 Policies\System\DisableRegistryTools
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}