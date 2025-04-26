
rule Trojan_Win32_PSWStealer_GZT_MTB{
	meta:
		description = "Trojan:Win32/PSWStealer.GZT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_02_0 = {8b 4c 24 10 8b 44 24 0c 33 d2 f7 f1 8b d8 8b 44 24 ?? f7 f1 8b f0 8b c3 f7 64 24 ?? 8b c8 8b c6 f7 64 24 ?? 03 d1 eb 47 8b c8 8b 5c 24 ?? 8b 54 24 ?? 8b 44 24 ?? d1 e9 d1 db d1 ea d1 d8 0b c9 75 ?? f7 f3 8b f0 f7 64 24 ?? 8b c8 8b 44 24 ?? f7 e6 03 d1 72 } //10
		$a_01_1 = {67 6f 6f 2e 67 6c 2f 76 54 37 69 64 67 } //1 goo.gl/vT7idg
		$a_80_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 } //URLDownloadToFile  1
	condition:
		((#a_02_0  & 1)*10+(#a_01_1  & 1)*1+(#a_80_2  & 1)*1) >=12
 
}