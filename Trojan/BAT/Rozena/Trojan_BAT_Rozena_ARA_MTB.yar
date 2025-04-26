
rule Trojan_BAT_Rozena_ARA_MTB{
	meta:
		description = "Trojan:BAT/Rozena.ARA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {06 07 02 07 91 03 61 d2 9c 07 17 58 0b 07 02 8e 69 32 ed } //2
		$a_01_1 = {53 68 65 6c 6c 63 6f 64 65 52 75 6e 6e 65 72 5f 65 76 61 73 69 6f 6e 2e 70 64 62 } //2 ShellcodeRunner_evasion.pdb
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}
rule Trojan_BAT_Rozena_ARA_MTB_2{
	meta:
		description = "Trojan:BAT/Rozena.ARA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {25 49 06 07 06 8e 69 5d 93 61 d1 53 00 07 17 58 0b 07 02 8e 69 fe 04 0c 08 2d dd } //2
		$a_80_1 = {3a 2f 2f 6a 63 78 6a 67 2e 66 75 6e 2f 74 65 73 74 2f 64 65 5f 73 68 65 6c 6c 63 6f 64 65 } //://jcxjg.fun/test/de_shellcode  2
	condition:
		((#a_01_0  & 1)*2+(#a_80_1  & 1)*2) >=4
 
}
rule Trojan_BAT_Rozena_ARA_MTB_3{
	meta:
		description = "Trojan:BAT/Rozena.ARA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {07 08 02 08 91 06 08 06 8e 69 5d 91 61 d2 9c 00 08 17 58 0c 08 02 8e 69 fe 04 0d 09 2d e1 } //2
		$a_80_1 = {49 6e 76 6f 6b 65 53 68 65 6c 6c 63 6f 64 65 63 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //InvokeShellcodecurrentProcess  1
	condition:
		((#a_01_0  & 1)*2+(#a_80_1  & 1)*1) >=3
 
}
rule Trojan_BAT_Rozena_ARA_MTB_4{
	meta:
		description = "Trojan:BAT/Rozena.ARA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {06 09 06 09 91 1f 22 59 1f 4a 61 20 ff 00 00 00 5f d2 9c 09 17 58 0d 09 06 8e 69 32 e3 } //2
		$a_01_1 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 4e 75 6d 61 } //1 VirtualAllocExNuma
		$a_01_2 = {43 72 65 61 74 65 54 68 72 65 61 64 } //1 CreateThread
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}
rule Trojan_BAT_Rozena_ARA_MTB_5{
	meta:
		description = "Trojan:BAT/Rozena.ARA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {16 0a 2b 21 00 02 06 8f ?? ?? ?? 01 25 71 ?? ?? ?? 01 03 06 03 8e 69 5d 91 61 d2 81 ?? ?? ?? 01 00 06 17 58 0a 06 02 8e 69 fe 04 0c 08 2d d5 02 0b 2b 00 07 2a } //2
		$a_01_1 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //1 VirtualAlloc
		$a_01_2 = {43 72 65 61 74 65 54 68 72 65 61 64 } //1 CreateThread
		$a_01_3 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 } //1 WaitForSingleObject
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}
rule Trojan_BAT_Rozena_ARA_MTB_6{
	meta:
		description = "Trojan:BAT/Rozena.ARA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {00 08 11 0a 08 11 0a 91 19 8d ?? ?? ?? 01 25 d0 ?? ?? ?? 04 28 ?? ?? ?? 0a 11 0a 19 5d 91 61 d2 9c 00 11 0a 17 58 13 0a 11 0a 08 8e 69 fe 04 13 0b 11 0b 2d cb } //2
		$a_00_1 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //2 SELECT * FROM AntivirusProduct
		$a_00_2 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 } //2 Windows Defender
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2) >=6
 
}