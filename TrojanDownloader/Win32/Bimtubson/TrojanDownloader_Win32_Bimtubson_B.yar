
rule TrojanDownloader_Win32_Bimtubson_B{
	meta:
		description = "TrojanDownloader:Win32/Bimtubson.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {4e 75 6c 6c 73 6f 66 74 20 49 6e 73 74 61 6c 6c 20 53 79 73 74 65 6d } //1 Nullsoft Install System
		$a_03_1 = {65 78 65 63 2e 64 6c 6c ?? ?? ?? ?? 5c 69 65 70 73 65 74 75 70 2e 65 78 65 00 6f 70 65 6e ?? ?? ?? ?? 5c 53 63 61 63 68 65 2e 65 78 65 00 2d 70 } //1
		$a_01_2 = {53 63 61 63 68 65 2e 65 78 65 00 33 30 30 30 00 6f 70 65 6e } //1 捓捡敨攮數㌀〰0灯湥
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}