
rule TrojanSpy_BAT_Keylogger_H{
	meta:
		description = "TrojanSpy:BAT/Keylogger.H,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {55 30 56 4d 52 55 4e 55 49 43 6f 67 52 6c 4a 50 54 53 42 74 62 33 70 66 62 47 39 6e 61 57 35 7a 4f 77 3d 3d } //1 U0VMRUNUICogRlJPTSBtb3pfbG9naW5zOw==
		$a_01_1 = {64 48 68 30 61 57 35 6d 5a 57 4e 30 5a 57 52 51 51 30 6c 75 5a 6d 38 3d } //1 dHh0aW5mZWN0ZWRQQ0luZm8=
		$a_01_2 = {55 47 46 7a 63 33 64 76 63 6d 52 7a 49 47 39 6d 49 41 3d 3d } //1 UGFzc3dvcmRzIG9mIA==
		$a_01_3 = {52 57 31 70 63 33 4e 68 63 6e 6b 67 55 32 4e 79 5a 57 56 75 63 32 68 76 64 43 42 76 5a 6a 6f 67 } //1 RW1pc3NhcnkgU2NyZWVuc2hvdCBvZjog
		$a_01_4 = {63 6d 56 6e 5a 57 52 70 64 41 3d 3d 0c 63 48 4a 76 59 32 56 34 63 41 3d 3d 0c 62 58 4e 6a 62 32 35 6d 61 57 63 3d 0c 64 32 6c 79 5a 58 4e 6f 59 58 4a 72 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}