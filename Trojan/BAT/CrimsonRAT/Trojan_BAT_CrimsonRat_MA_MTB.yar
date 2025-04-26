
rule Trojan_BAT_CrimsonRat_MA_MTB{
	meta:
		description = "Trojan:BAT/CrimsonRat.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_03_0 = {13 0e 11 0e 16 1f 2d 9d 11 0e 6f ?? ?? ?? 0a 17 9a 0a 00 06 19 17 6f ?? ?? ?? 0a 0a 06 18 } //5
		$a_01_1 = {62 64 64 33 66 39 61 65 2d 61 39 39 31 2d 34 62 35 33 2d 62 63 38 30 2d 39 61 62 38 62 64 37 36 39 36 31 63 } //1 bdd3f9ae-a991-4b53-bc80-9ab8bd76961c
		$a_01_2 = {69 6e 6a 61 76 74 65 5f 6d 6e 72 2e 50 72 6f 70 65 72 74 69 65 73 } //1 injavte_mnr.Properties
		$a_01_3 = {73 63 61 72 65 65 6e 53 69 7a 65 } //1 scareenSize
		$a_01_4 = {72 65 6d 61 6f 76 65 5f 66 69 6c 65 } //1 remaove_file
		$a_01_5 = {75 73 61 65 72 5f 69 6e 66 6f } //1 usaer_info
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=10
 
}