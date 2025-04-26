
rule Trojan_Win32_Redosdru_C{
	meta:
		description = "Trojan:Win32/Redosdru.C,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0b 00 04 00 00 "
		
	strings :
		$a_03_0 = {8b 54 24 04 8a 1c 11 80 c3 ?? 88 1c 11 8b 54 24 04 8a 1c 11 80 f3 ?? 88 1c 11 41 3b c8 7c e1 } //5
		$a_01_1 = {6a 02 6a 00 68 00 fc ff ff 56 ff 15 } //5
		$a_02_2 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 74 20 2f 69 6d [0-08] 2e 65 78 65 } //1
		$a_00_3 = {71 6d 67 72 2e 64 6c 6c 00 5c 44 72 69 76 65 72 73 } //1
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*5+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=11
 
}
rule Trojan_Win32_Redosdru_C_2{
	meta:
		description = "Trojan:Win32/Redosdru.C,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0a 00 08 00 00 "
		
	strings :
		$a_03_0 = {8b 54 24 04 8a 1c 11 80 c3 ?? 88 1c 11 8b 54 24 04 8a 1c 11 80 f3 ?? 88 1c 11 41 3b c8 7c e1 } //5
		$a_01_1 = {6a 02 6a 00 68 00 fc ff ff 56 ff 15 } //5
		$a_03_2 = {6a 7c 53 e8 ?? ?? 00 00 8b f0 83 c4 08 85 f6 0f 84 ?? ?? 00 00 83 c3 06 c6 06 00 } //2
		$a_01_3 = {3d 00 00 20 03 73 0d 6a 02 6a 00 6a 00 53 ff 15 } //1
		$a_03_4 = {8a 14 01 80 f2 ?? 88 10 40 4d 75 f4 } //1
		$a_01_5 = {25 73 5c 25 64 5f 72 65 73 2e 74 6d 70 } //1 %s\%d_res.tmp
		$a_01_6 = {47 68 30 73 74 20 55 70 64 61 74 65 } //1 Gh0st Update
		$a_01_7 = {25 73 5c 25 73 65 78 2e 64 6c 6c } //1 %s\%sex.dll
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*5+(#a_03_2  & 1)*2+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=10
 
}