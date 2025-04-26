
rule TrojanDownloader_Win32_Kuluoz_D_{
	meta:
		description = "TrojanDownloader:Win32/Kuluoz.D!!Kuluoz.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {c6 40 01 68 8b 4d ?? 03 8d ?? ?? ff ff 8b 55 ?? 89 51 02 8b 45 ?? 03 85 ?? ?? ff ff c6 40 06 c3 } //1
		$a_01_1 = {3c 6b 6e 6f 63 6b 3e 3c 69 64 3e 25 73 3c 2f 69 64 3e } //1 <knock><id>%s</id>
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}