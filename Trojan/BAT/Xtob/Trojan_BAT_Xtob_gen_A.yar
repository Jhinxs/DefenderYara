
rule Trojan_BAT_Xtob_gen_A{
	meta:
		description = "Trojan:BAT/Xtob.gen!A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {28 48 00 00 0a 13 12 11 09 12 04 7b 4e 00 00 04 12 05 7b aa 00 00 04 1e 58 6e 28 47 00 00 0a 11 12 11 12 8e 69 14 6f 15 00 00 06 26 12 05 12 01 7c 73 00 00 04 7b 7d 00 00 04 12 01 7c 73 00 00 04 7b 7a 00 00 04 58 7d ad 00 00 04 11 0b 12 04 7b 4f 00 00 04 12 05 6f 25 00 00 06 26 11 0c 12 04 7b 4f 00 00 04 6f 29 00 00 06 26 2a 09 38 31 fd ff ff 03 38 4b fd ff ff 11 0d 38 6a fd ff ff 11 0d 38 82 fd ff ff 11 06 38 c5 fd ff ff 02 38 c4 fd ff ff 26 38 e3 fd ff ff 11 07 38 e1 fd ff ff 26 38 fe fd ff ff 11 08 38 fc fd ff ff } //1
		$a_01_1 = {7e 23 00 00 04 39 1b 00 00 00 7e 24 00 00 04 20 e8 03 00 00 5a 28 1e 00 00 0a } //1
		$a_01_2 = {6f 06 00 00 0a 73 07 00 00 0a 0a 73 08 00 00 0a 0b 28 09 00 00 0a 0c 38 47 00 00 00 06 1f 20 6f 0a 00 00 0a 6f 0b 00 00 0a 08 06 1f 10 6f 0a 00 00 0a 6f 0c 00 00 0a 07 08 6f 0d 00 00 0a 17 73 0e 00 00 0a 0d 09 02 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}