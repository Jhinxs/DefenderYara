
rule TrojanDownloader_BAT_Saweoeq_A{
	meta:
		description = "TrojanDownloader:BAT/Saweoeq.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_00_0 = {2f 00 66 00 65 00 64 00 6f 00 72 00 65 00 6e 00 6b 00 6f 00 2f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 69 00 6e 00 69 00 } //1 /fedorenko/install.ini
		$a_00_1 = {00 54 45 4d 50 00 41 55 54 4f 52 55 4e 00 64 65 73 63 74 6f 70 00 } //1 吀䵅P啁佔啒N敤捳潴p
		$a_02_2 = {3a 00 2f 00 2f 00 73 00 34 00 76 00 65 00 2e 00 72 00 75 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2f 00 73 00 34 00 76 00 65 00 5f 00 61 00 64 00 73 00 ?? ?? 2e 00 65 00 78 00 65 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*2) >=4
 
}