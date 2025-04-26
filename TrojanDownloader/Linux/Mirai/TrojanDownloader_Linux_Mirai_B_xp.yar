
rule TrojanDownloader_Linux_Mirai_B_xp{
	meta:
		description = "TrojanDownloader:Linux/Mirai.B!xp,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {00 47 45 54 20 2f 70 65 69 6e 2e 61 72 6d 37 20 48 54 54 50 } //1 䜀呅⼠数湩愮浲‷呈偔
		$a_00_1 = {62 69 67 62 6f 74 50 65 69 6e } //1 bigbotPein
		$a_00_2 = {47 45 54 20 2f 70 65 69 6e 2e 61 72 6d 37 20 48 54 54 50 2f 31 2e 30 } //1 GET /pein.arm7 HTTP/1.0
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}