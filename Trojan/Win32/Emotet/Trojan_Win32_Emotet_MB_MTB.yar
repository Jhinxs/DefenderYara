
rule Trojan_Win32_Emotet_MB_MTB{
	meta:
		description = "Trojan:Win32/Emotet.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 0c b7 03 4c 24 28 51 e8 ?? ?? ?? ?? 83 c4 ?? 3b 44 24 2c 74 1f 83 c6 ?? 3b 74 24 14 72 e1 } //1
		$a_03_1 = {33 d2 8b c1 f7 f7 8a 5c 0c ?? 0f b6 c3 83 c1 01 0f b6 14 2a 03 d6 03 c2 33 d2 be ?? ?? ?? ?? f7 f6 81 f9 90 1b 01 8b f2 8a 44 34 ?? 88 44 0c ?? 88 5c 34 ?? 72 c9 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Emotet_MB_MTB_2{
	meta:
		description = "Trojan:Win32/Emotet.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {64 66 61 64 71 6b 69 6f 76 } //1 dfadqkiov
		$a_01_1 = {64 66 61 6f 6f 70 64 71 6b 69 6f 76 } //1 dfaoopdqkiov
		$a_01_2 = {64 67 63 67 68 64 } //1 dgcghd
		$a_01_3 = {67 67 76 64 77 } //1 ggvdw
		$a_01_4 = {43 6f 6d 70 75 74 65 72 47 72 61 70 68 69 63 73 2e 64 6c 6c } //1 ComputerGraphics.dll
		$a_01_5 = {4e 6f 4e 65 74 43 6f 6e 6e 65 63 74 44 69 73 63 6f 6e 6e 65 63 74 } //1 NoNetConnectDisconnect
		$a_01_6 = {47 65 74 44 69 73 6b 46 72 65 65 53 70 61 63 65 41 } //1 GetDiskFreeSpaceA
		$a_01_7 = {4c 6f 63 6b 46 69 6c 65 } //1 LockFile
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
rule Trojan_Win32_Emotet_MB_MTB_3{
	meta:
		description = "Trojan:Win32/Emotet.MB!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {6b d2 65 0f b6 c9 03 d1 8a 48 01 40 84 c9 75 f0 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}