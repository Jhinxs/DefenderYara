
rule Trojan_Win32_Qakbot_GF_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {89 18 8b 45 c4 03 45 a4 89 45 a0 e8 ?? ?? ?? ?? 8b 5d a0 2b d8 e8 ?? ?? ?? ?? 03 d8 8b 45 d8 33 18 89 5d a0 8b 45 a0 8b 55 d8 89 02 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Qakbot_GF_MTB_2{
	meta:
		description = "Trojan:Win32/Qakbot.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {3d c0 03 00 00 90 18 0f b7 c1 2b c2 83 c0 ?? 2b d8 83 df 00 8b 06 05 70 a0 07 01 89 06 83 c6 04 83 6c 24 ?? 01 a3 ?? ?? ?? ?? 8b 44 24 ?? 75 } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Qakbot_GF_MTB_3{
	meta:
		description = "Trojan:Win32/Qakbot.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {02 d8 81 c1 a8 a1 02 01 89 0d ?? ?? ?? ?? 89 0a 0f b6 cb 66 2b 0d ?? ?? ?? ?? 66 2b ce 66 8b f1 8b ca 8b 15 ?? ?? ?? ?? 83 c1 04 ff 4c 24 ?? 66 89 35 ?? ?? ?? ?? 89 4c 24 ?? 0f 85 } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Qakbot_GF_MTB_4{
	meta:
		description = "Trojan:Win32/Qakbot.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {0f b6 c9 f7 d9 2b c8 03 d9 8b 0d [0-04] 89 1d [0-04] 8b 84 11 [0-04] 05 0c f5 04 01 a3 [0-04] 89 84 11 [0-04] 83 c2 04 8b 35 [0-04] 8b 1d [0-04] 81 fa 83 11 00 00 73 ?? 8a 0d [0-04] eb } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Qakbot_GF_MTB_5{
	meta:
		description = "Trojan:Win32/Qakbot.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_02_0 = {8b 45 dc 03 45 b0 03 45 ec [0-1e] 31 ?? a1 [0-04] 83 c0 04 a3 [0-04] 83 45 ec 04 8b 45 ec 3b 45 e4 72 } //10
		$a_00_1 = {f3 ab 89 d1 83 e1 03 f3 aa 5f c3 } //1
		$a_00_2 = {fd f3 a5 89 c1 83 e1 03 83 c6 03 83 c7 03 f3 a4 fc 5f 5e c3 } //1
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=11
 
}
rule Trojan_Win32_Qakbot_GF_MTB_6{
	meta:
		description = "Trojan:Win32/Qakbot.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {8a ca 81 c6 88 3c 03 01 8b 54 24 [0-01] 2a ca 80 c1 [0-01] 89 35 [0-04] 89 b4 2b [0-04] 83 c5 04 8b 1d [0-04] 0f b6 c1 66 2b c3 89 6c 24 [0-01] 66 03 f8 66 89 7c 24 [0-01] 81 fd 4e 0a 00 00 73 [0-01] 8b 6c 24 [0-01] e9 } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Qakbot_GF_MTB_7{
	meta:
		description = "Trojan:Win32/Qakbot.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {81 c2 50 01 07 01 8b 44 24 [0-01] 2b c3 89 15 [0-04] 2b 05 [0-04] 66 a3 [0-04] 89 94 2e [0-04] 83 c5 04 a1 [0-04] 0f b7 3d [0-04] 83 c0 [0-01] 8b 15 [0-04] 03 d7 03 d0 89 54 24 [0-01] 89 15 [0-04] 81 fd 4b 26 00 00 73 } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Qakbot_GF_MTB_8{
	meta:
		description = "Trojan:Win32/Qakbot.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {29 c9 09 c1 89 8b [0-04] 8b 4d ?? 8f 45 ?? 8b 4d ?? f3 a4 b9 ff ff [0-02] 89 4d ?? 31 c9 33 8b [0-04] 89 c8 8b 4d ?? 56 c7 04 [0-05] 8f 83 [0-04] 21 8b [0-04] 57 8b bb [0-04] 50 8f 45 ?? 01 7d ?? ff 75 ?? 58 5f ff e0 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Qakbot_GF_MTB_9{
	meta:
		description = "Trojan:Win32/Qakbot.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 06 00 00 "
		
	strings :
		$a_02_0 = {03 45 fc 88 1c 30 8b 4d f8 83 c1 01 89 4d f8 eb [0-0f] 8b e5 5d c3 } //10
		$a_02_1 = {be ac 00 00 a1 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 8d 94 01 ?? ?? ?? ?? 89 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 2d be ac 00 00 a3 ?? ?? ?? ?? a1 ?? ?? ?? ?? 5d c3 90 0a 3c 00 c7 05 } //10
		$a_80_2 = {52 65 67 4f 70 65 6e 4b 65 79 41 } //RegOpenKeyA  10
		$a_80_3 = {4b 4c 49 4f 59 32 34 30 4c 68 4b 37 76 73 6f 5a 43 54 4a 6f 55 57 34 56 4f 4c 59 62 4b 4c 78 65 6b 34 4e 70 53 7a 53 54 6c 50 6a 7a 39 52 33 77 } //KLIOY240LhK7vsoZCTJoUW4VOLYbKLxek4NpSzSTlPjz9R3w  10
		$a_80_4 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //VirtualAlloc  1
		$a_80_5 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //VirtualAllocEx  1
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_80_2  & 1)*10+(#a_80_3  & 1)*10+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1) >=31
 
}