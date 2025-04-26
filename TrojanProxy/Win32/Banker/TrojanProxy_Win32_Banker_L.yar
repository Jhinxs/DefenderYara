
rule TrojanProxy_Win32_Banker_L{
	meta:
		description = "TrojanProxy:Win32/Banker.L,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {5c 4d 6f 7a 69 6c 6c 61 5c 46 69 72 65 66 6f 78 5c 70 72 6f 66 69 6c 65 73 2e 69 6e 69 } //1 \Mozilla\Firefox\profiles.ini
		$a_02_1 = {2e 70 61 63 [0-10] 75 73 65 72 5f 70 72 65 66 [0-10] 6e 65 74 77 6f 72 6b 2e 70 72 6f 78 79 2e 74 79 70 65 } //1
		$a_02_2 = {5c 70 72 65 66 73 2e 6a 73 [0-10] 75 73 65 72 5f 70 72 65 66 28 22 6e 65 74 77 6f 72 6b 2e 70 72 6f 78 79 2e 61 75 74 6f 63 6f 6e 66 69 67 5f 75 72 6c } //1
		$a_00_3 = {45 6e 61 62 6c 65 48 74 74 70 31 5f 31 } //1 EnableHttp1_1
		$a_00_4 = {42 4c 52 3d 41 54 54 } //1 BLR=ATT
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}