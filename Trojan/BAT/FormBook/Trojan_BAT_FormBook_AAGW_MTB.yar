
rule Trojan_BAT_FormBook_AAGW_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AAGW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_03_0 = {72 01 00 00 70 28 ?? 00 00 0a 0a 06 28 ?? 00 00 06 0b 07 02 28 ?? 00 00 06 0c 2b 00 08 2a } //3
		$a_01_1 = {43 00 59 00 74 00 7a 00 48 00 4c 00 6b 00 72 00 48 00 41 00 6b 00 52 00 61 00 6c 00 69 00 7a 00 75 00 4c 00 39 00 54 00 71 00 62 00 56 00 69 00 4e 00 32 00 70 00 66 00 33 00 67 00 5a 00 75 00 71 00 6a 00 63 00 53 00 46 00 53 00 48 00 38 00 2f 00 30 00 77 00 3d 00 } //1 CYtzHLkrHAkRalizuL9TqbViN2pf3gZuqjcSFSH8/0w=
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_3 = {43 00 72 00 65 00 61 00 74 00 65 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=6
 
}