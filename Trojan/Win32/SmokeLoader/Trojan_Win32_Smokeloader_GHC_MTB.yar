
rule Trojan_Win32_Smokeloader_GHC_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.GHC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {a3 5e b0 38 c7 44 24 ?? 46 30 42 6c c7 44 24 ?? 08 00 9b 44 c7 44 24 ?? b9 b1 c2 45 c7 44 24 ?? 2c eb 0e 7c c7 44 24 ?? 3d 1c 36 22 c7 44 24 ?? c2 9e 83 44 c7 44 24 ?? ee 2b d8 59 c7 44 24 ?? 5d b4 9b 4c c7 44 24 ?? 8c 86 28 22 c7 44 24 ?? 48 a2 2c 39 c7 44 24 ?? aa 93 62 7c c7 44 24 ?? ec a7 c6 42 c7 44 24 ?? 95 9f 4d 2e c7 44 24 ?? b0 1d 78 4c } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}