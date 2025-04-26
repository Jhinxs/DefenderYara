
rule Trojan_Win32_Ekstak_GMI_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.GMI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 03 00 00 "
		
	strings :
		$a_01_0 = {8b 45 fc 83 c4 14 48 89 35 9c fa 46 00 5f 5e a3 98 fa 46 00 5b c9 c3 } //10
		$a_03_1 = {56 53 ff 15 ?? ?? ?? ?? a1 ?? 01 47 00 89 35 ?? fa 46 00 8b fe 38 18 } //10
		$a_80_2 = {53 34 42 41 4d 50 6c 61 79 65 72 2e 65 78 65 } //S4BAMPlayer.exe  1
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*10+(#a_80_2  & 1)*1) >=21
 
}