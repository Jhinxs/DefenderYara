
rule Trojan_Win32_Gozi_SIB_MTB{
	meta:
		description = "Trojan:Win32/Gozi.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {4d 00 53 00 20 00 53 00 68 00 65 00 6c 00 6c 00 20 00 44 00 6c 00 67 00 20 00 32 00 } //1 MS Shell Dlg 2
		$a_00_1 = {47 6f 65 74 69 63 2e 64 6c 6c } //1 Goetic.dll
		$a_03_2 = {8b 75 08 8b 7d 0c 8b 55 10 b1 ?? ac 34 ?? [0-10] 04 ?? [0-10] 2a c1 [0-10] 34 ?? [0-05] 2a c1 34 ?? c0 c8 ?? [0-0a] 32 c1 2a c1 34 ?? c0 c8 ?? 2a c1 32 c1 04 ?? [0-10] c0 c8 ?? [0-5a] aa 4a 0f 85 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}