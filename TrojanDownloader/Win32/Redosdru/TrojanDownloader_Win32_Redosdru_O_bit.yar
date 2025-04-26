
rule TrojanDownloader_Win32_Redosdru_O_bit{
	meta:
		description = "TrojanDownloader:Win32/Redosdru.O!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b 55 0c 03 55 f0 8b 45 08 03 45 f8 8a 0a 32 08 8b 55 0c 03 55 f0 88 0a } //1
		$a_03_1 = {fe ff ff 4b c6 85 ?? fe ff ff 6f c6 85 ?? fe ff ff 74 c6 85 ?? fe ff ff 68 c6 85 ?? fe ff ff 65 c6 85 ?? fe ff ff 72 c6 85 ?? fe ff ff 35 c6 85 ?? fe ff ff 39 c6 85 ?? fe ff ff 39 c6 85 ?? fe ff ff 00 } //1
		$a_03_2 = {33 d2 66 8b 11 81 fa 4d 5a 00 00 74 07 33 c0 e9 bc 01 00 00 8b 45 ?? 8b 4d ?? 03 48 3c 89 4d ?? 8b 55 ?? 81 3a 50 45 00 00 74 07 33 c0 } //1
		$a_01_3 = {44 6c 6c 46 75 55 70 67 72 61 64 72 73 } //1 DllFuUpgradrs
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}