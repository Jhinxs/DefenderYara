
rule TrojanProxy_Win32_Bedri_A{
	meta:
		description = "TrojanProxy:Win32/Bedri.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {7c 73 30 63 6b 73 39 72 6f 78 [0-01] 7b 2d 2d 2d 7d [0-10] 7c ?? ?? 2d ?? ?? 2d ?? ?? 2d ?? ?? 2d ?? ?? 2d ?? ?? 7c [0-10] 7c } //3
		$a_03_1 = {33 c0 8a 42 02 85 c0 74 ?? 8b 4d ?? 33 d2 8a 51 02 83 fa 02 } //1
		$a_01_2 = {48 74 74 70 2f 31 2e 31 20 34 30 33 20 46 6f 72 62 69 64 64 65 6e 0d 0a 0d 0a 3c 62 6f 64 79 3e 3c 68 31 3e 34 30 33 20 46 6f 72 62 69 64 64 65 6e 3c 2f 68 31 3e 3c 2f 62 6f 64 79 3e 00 00 00 48 54 54 50 2f 31 2e 30 20 32 30 30 20 4f 4b 0d 0a 0d 0a } //1
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}