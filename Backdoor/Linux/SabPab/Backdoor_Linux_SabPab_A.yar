
rule Backdoor_Linux_SabPab_A{
	meta:
		description = "Backdoor:Linux/SabPab.A,SIGNATURE_TYPE_MACHOHSTR_EXT,0e 00 0c 00 06 00 00 "
		
	strings :
		$a_01_0 = {4c 69 62 72 61 72 79 2f 4c 61 75 6e 63 68 41 67 65 6e 74 73 2f } //1 Library/LaunchAgents/
		$a_00_1 = {72 75 6e 61 74 6c 6f 61 64 } //1 runatload
		$a_00_2 = {53 65 6e 64 45 76 65 6e 74 54 6f 53 79 73 74 65 6d 45 76 65 6e 74 73 57 69 74 68 50 61 72 61 6d 65 74 65 72 73 } //2 SendEventToSystemEventsWithParameters
		$a_00_3 = {53 61 66 61 72 69 2f 34 31 39 2e 33 } //2 Safari/419.3
		$a_00_4 = {25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 } //2 %02X-%02X-%02X-%02X-%02X-%02X
		$a_00_5 = {f7 e9 d1 fa 89 c8 c1 f8 1f } //6
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_00_5  & 1)*6) >=12
 
}