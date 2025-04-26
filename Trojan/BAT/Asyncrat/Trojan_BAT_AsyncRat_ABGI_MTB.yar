
rule Trojan_BAT_AsyncRat_ABGI_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.ABGI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {7e 24 00 00 04 18 9a 28 38 00 00 0a 7e 25 00 00 04 28 38 00 00 0a 28 24 01 00 06 28 8d 00 00 06 28 51 00 00 0a 80 26 00 00 04 20 0c 00 00 00 28 af 00 00 06 3a 13 ff ff ff 26 20 08 00 00 00 38 08 ff ff ff } //1
		$a_01_1 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 46 00 69 00 6c 00 65 00 2e 00 53 00 74 00 61 00 72 00 74 00 55 00 50 00 2e 00 72 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 ProgramFile.StartUP.resources
		$a_01_2 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 46 00 69 00 6c 00 65 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 2e 00 72 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 ProgramFile.Resources.resources
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}