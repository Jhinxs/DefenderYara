
rule Trojan_Win32_CobaltStrike_MA_MTB{
	meta:
		description = "Trojan:Win32/CobaltStrike.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 fc 83 c0 01 89 45 fc 83 7d fc ?? 73 14 8b 4d fc 0f be 54 0d e0 83 f2 44 8b 45 fc 88 54 05 e0 eb dd } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_CobaltStrike_MA_MTB_2{
	meta:
		description = "Trojan:Win32/CobaltStrike.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {ff 77 04 ff d6 59 85 c0 59 0f 84 ?? ?? ?? ?? 68 ?? ?? ?? ?? ff 77 04 ff d6 59 85 c0 59 0f 84 ?? ?? ?? ?? 68 ?? ?? ?? ?? ff 77 04 ff d6 59 85 c0 59 0f 84 ?? ?? ?? ?? 68 ?? ?? ?? ?? ff 77 04 ff d6 59 85 c0 59 0f 84 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win32_CobaltStrike_MA_MTB_3{
	meta:
		description = "Trojan:Win32/CobaltStrike.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 03 00 00 "
		
	strings :
		$a_01_0 = {34 00 33 00 2e 00 31 00 33 00 38 00 2e 00 33 00 30 00 2e 00 37 00 36 00 } //3 43.138.30.76
		$a_01_1 = {2f 00 6c 00 6f 00 67 00 67 00 69 00 6e 00 67 00 2e 00 62 00 69 00 6e 00 } //3 /logging.bin
		$a_01_2 = {83 bc 24 88 00 00 00 08 8d 4c 24 74 6a 00 0f 43 4c 24 78 6a 50 51 50 ff 15 } //2
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2) >=8
 
}
rule Trojan_Win32_CobaltStrike_MA_MTB_4{
	meta:
		description = "Trojan:Win32/CobaltStrike.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {8d 4a 01 89 08 8b 4c 90 90 [0-01] 89 ca c1 ea [0-01] 23 90 90 [0-02] 00 00 31 ca 89 d0 c1 e0 [0-01] 25 [0-04] 31 d0 89 c1 c1 e1 [0-01] 81 e1 [0-04] 31 c1 89 c8 c1 e8 [0-01] 31 c8 } //1
		$a_01_1 = {62 72 6f 6b 65 6e 20 70 69 70 65 } //1 broken pipe
		$a_01_2 = {63 6f 6e 6e 65 63 74 69 6f 6e 20 61 62 6f 72 74 65 64 } //1 connection aborted
		$a_01_3 = {6f 77 6e 65 72 20 64 65 61 64 } //1 owner dead
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}