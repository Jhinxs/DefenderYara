
rule Trojan_Win32_Flopa_FSG_MSR{
	meta:
		description = "Trojan:Win32/Flopa.FSG!MSR,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {57 45 4c 43 4f 4d 45 20 54 4f 20 46 4c 4f 50 41 20 54 52 4f 4a 41 4e } //2 WELCOME TO FLOPA TROJAN
		$a_01_1 = {48 00 4b 00 43 00 55 00 3a 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 6c 00 61 00 73 00 73 00 65 00 73 00 5c 00 6d 00 73 00 2d 00 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //1 HKCU:\Software\Classes\ms-settings\shell\open\command
		$a_81_2 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 2c 20 43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 54 65 6d 70 5c 68 65 6c 6c 2e 65 78 65 } //1 explorer.exe, C:\Program Files\Temp\hell.exe
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //1 DisableRegistryTools
		$a_81_4 = {50 4f 54 41 54 4f 45 53 2e 74 78 74 } //1 POTATOES.txt
	condition:
		((#a_81_0  & 1)*2+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1+(#a_01_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}