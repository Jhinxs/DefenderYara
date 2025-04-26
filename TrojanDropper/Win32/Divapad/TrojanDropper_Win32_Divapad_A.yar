
rule TrojanDropper_Win32_Divapad_A{
	meta:
		description = "TrojanDropper:Win32/Divapad.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 "
		
	strings :
		$a_01_0 = {5c 5c 2e 5c 47 6c 6f 62 61 6c 5c 69 70 5f 66 77 } //2 \\.\Global\ip_fw
		$a_01_1 = {5c 44 52 49 56 45 52 53 5c 69 70 5f 66 77 2e 73 79 73 } //2 \DRIVERS\ip_fw.sys
		$a_01_2 = {6b 61 73 70 65 72 73 6b 79 } //1 kaspersky
		$a_01_3 = {6c 69 76 65 75 70 64 61 74 65 } //1 liveupdate
		$a_01_4 = {66 72 65 65 61 76 } //1 freeav
		$a_01_5 = {61 76 67 61 74 65 } //1 avgate
		$a_01_6 = {eb 53 6a 00 8d 4d f4 51 ff 75 fc 53 ff 75 fc 53 68 08 21 24 43 50 } //2
		$a_01_7 = {66 a5 a4 8b 75 fc 66 89 46 14 66 ff 45 d6 33 c0 40 89 46 16 66 89 46 1a 83 c6 1c 33 c0 8b fe ab } //2
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2) >=10
 
}