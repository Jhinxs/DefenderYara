
rule TrojanDownloader_Win32_Renos_gen_AA{
	meta:
		description = "TrojanDownloader:Win32/Renos.gen!AA,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {40 00 2a 00 5c 00 41 00 44 00 3a 00 5c 00 4d 00 61 00 73 00 74 00 65 00 72 00 5c 00 41 00 44 00 57 00 41 00 52 00 41 00 5f 00 4e 00 45 00 57 00 5c 00 63 00 6f 00 64 00 65 00 63 00 5c 00 43 00 6f 00 64 00 65 00 63 00 2e 00 76 00 62 00 70 00 } //2 @*\AD:\Master\ADWARA_NEW\codec\Codec.vbp
		$a_01_1 = {43 00 6f 00 64 00 65 00 63 00 2e 00 65 00 78 00 65 00 } //1 Codec.exe
		$a_01_2 = {44 78 43 6f 64 65 63 } //1 DxCodec
		$a_01_3 = {4c 49 43 45 4e 53 45 20 41 47 52 45 45 4d 45 4e 54 } //1 LICENSE AGREEMENT
		$a_01_4 = {6c 69 6e 6b 3a 68 74 74 70 3a 2f 2f 64 78 63 6f 64 65 63 2e 63 6f 6d 2f 75 6e 69 6e 73 74 61 6c 6c 2f } //1 link:http://dxcodec.com/uninstall/
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}