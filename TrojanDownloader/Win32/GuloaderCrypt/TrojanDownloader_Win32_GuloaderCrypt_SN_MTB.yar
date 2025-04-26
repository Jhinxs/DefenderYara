
rule TrojanDownloader_Win32_GuloaderCrypt_SN_MTB{
	meta:
		description = "TrojanDownloader:Win32/GuloaderCrypt.SN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {f8 fc ff d0 fc e8 ?? ?? ?? ?? 83 75 ?? 00 b9 00 00 00 00 83 34 24 00 83 04 24 00 ff 34 0a fc fc 81 34 24 ?? ?? ?? ?? 83 34 24 00 83 6d ?? 00 8f 04 08 83 34 24 00 fc 83 e9 fc 83 45 ?? 00 ff 45 ?? ff 4d ?? 81 f9 ?? ?? ?? ?? 75 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule TrojanDownloader_Win32_GuloaderCrypt_SN_MTB_2{
	meta:
		description = "TrojanDownloader:Win32/GuloaderCrypt.SN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_02_0 = {ff 32 0f 38 0b e3 0f 38 0b e3 83 c2 04 0f 38 01 e3 0f 38 01 e3 bb ?? ?? ?? ?? 0f 38 08 e3 0f 38 01 e3 31 1c 24 90 90 0f 38 01 e3 8f 04 01 90 90 0f 38 0b e3 40 0f 38 0b e3 0f 38 08 e3 40 0f 38 08 e3 0f 38 0b e3 40 90 90 0f 38 08 e3 40 0f 38 08 e3 0f 38 0b e3 be ?? ?? ?? ?? 0f 38 08 e3 0f 38 01 e3 39 f0 } //4
	condition:
		((#a_02_0  & 1)*4) >=4
 
}