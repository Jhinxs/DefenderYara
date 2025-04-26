
rule Trojan_BAT_SnakeKeylogger_SPAK_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.SPAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 00 65 00 76 00 72 00 69 00 6d 00 69 00 63 00 69 00 49 00 6b 00 69 00 4b 00 69 00 73 00 69 00 6e 00 69 00 6e 00 } //1 CevrimiciIkiKisinin
		$a_01_1 = {41 00 4c 00 41 00 4e 00 4c 00 41 00 52 00 49 00 20 00 44 00 4f 00 4c 00 44 00 55 00 52 00 55 00 4e 00 55 00 5a 00 21 00 21 00 21 00 21 00 } //1 ALANLARI DOLDURUNUZ!!!!
		$a_01_2 = {43 00 65 00 76 00 72 00 69 00 6d 00 69 00 63 00 69 00 49 00 6b 00 69 00 4b 00 69 00 73 00 69 00 6e 00 69 00 6e 00 2e 00 52 00 45 00 } //1 CevrimiciIkiKisinin.RE
		$a_01_3 = {43 00 65 00 76 00 72 00 69 00 6d 00 69 00 63 00 69 00 49 00 6b 00 69 00 4b 00 69 00 73 00 69 00 6e 00 69 00 6e 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 CevrimiciIkiKisinin.Properties.Resources
		$a_01_4 = {4d 00 45 00 53 00 41 00 4a 00 4c 00 41 00 52 00 } //1 MESAJLAR
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}