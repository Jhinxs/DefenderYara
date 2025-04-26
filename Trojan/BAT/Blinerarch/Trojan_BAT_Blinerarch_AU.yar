
rule Trojan_BAT_Blinerarch_AU{
	meta:
		description = "Trojan:BAT/Blinerarch.AU,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {00 53 65 6e 64 53 4d 53 00 } //5
		$a_01_1 = {53 4d 53 4e 6f 00 43 6f 64 65 00 43 6f 75 6e 74 72 79 49 44 00 41 72 63 68 69 76 65 49 44 00 50 61 72 74 6e 65 72 49 44 } //5 䵓乓o潃敤䌀畯瑮祲䑉䄀捲楨敶䑉倀牡湴牥䑉
		$a_01_2 = {5c 70 72 6f 67 72 61 6d 5c 7a 69 70 61 72 63 68 69 76 65 5f 64 72 6f 70 62 6f 78 5c 63 72 79 70 74 65 72 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 63 72 79 70 74 65 72 2e 70 64 62 } //1 \program\ziparchive_dropbox\crypter\obj\Release\crypter.pdb
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 30 00 78 00 36 00 44 00 37 00 38 00 38 00 30 00 35 00 32 00 3a 00 38 00 31 00 } //1 http://0x6D788052:81
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}