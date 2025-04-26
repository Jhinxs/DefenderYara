
rule TrojanDownloader_Win32_Vifuls_A{
	meta:
		description = "TrojanDownloader:Win32/Vifuls.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_03_0 = {2e 74 6d 70 [0-40] 2e 65 78 65 } //2
		$a_03_1 = {73 73 7a 7a 7a [0-40] 4b 42 [0-40] 2e 65 78 65 } //2
		$a_03_2 = {74 65 78 74 2f 68 74 6d 6c [0-02] 2a 2f 2a [0-10] 4d 6f 7a 69 6c 6c 61 2f 33 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 49 6e 64 79 20 4c 69 62 72 61 72 79 29 } //2
		$a_01_3 = {51 30 41 31 38 31 35 45 42 32 45 46 32 50 } //2 Q0A1815EB2EF2P
		$a_01_4 = {68 74 70 63 6c 74 } //2 htpclt
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=8
 
}