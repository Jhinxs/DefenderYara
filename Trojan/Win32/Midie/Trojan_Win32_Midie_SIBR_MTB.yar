
rule Trojan_Win32_Midie_SIBR_MTB{
	meta:
		description = "Trojan:Win32/Midie.SIBR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {65 70 74 6f 77 67 6d 66 2e 64 6c 6c } //1 eptowgmf.dll
		$a_03_1 = {50 6a 40 68 ?? ?? ?? ?? 8d 8d ?? ?? ?? ?? 51 ff 15 ?? ?? ?? ?? b9 00 00 00 00 8a 84 0d 90 1b 01 81 f9 90 1b 00 74 ?? [0-08] 34 ?? 04 ?? [0-05] 2c ?? [0-08] 04 ?? 34 ?? 88 84 0d 90 1b 01 83 c1 01 90 18 8a 84 0d 90 1b 01 81 f9 90 1b 00 90 18 b0 00 b9 00 00 00 00 8d 95 90 1b 01 ff d2 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}