
rule TrojanDownloader_Win32_Banload_AYE{
	meta:
		description = "TrojanDownloader:Win32/Banload.AYE,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {24 31 74 33 5f 40 73 70 61 6d 40 } //1 $1t3_@spam@
		$a_01_1 = {2f 00 78 00 6d 00 6c 00 2f 00 6a 00 6f 00 6e 00 2f 00 79 00 66 00 63 00 73 00 78 00 66 00 64 00 2e 00 7a 00 69 00 70 00 } //1 /xml/jon/yfcsxfd.zip
		$a_01_2 = {5c 00 79 00 66 00 63 00 73 00 78 00 66 00 64 00 2e 00 65 00 78 00 65 00 } //1 \yfcsxfd.exe
		$a_03_3 = {8b 45 f8 8b 08 ff 51 34 33 d2 8b 45 f8 e8 ?? ?? ?? ?? 8b 45 f8 83 c0 54 8b 15 ?? ?? ?? ?? e8 ?? ?? ?? ?? 6a 00 b9 bf 28 00 00 ba } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}