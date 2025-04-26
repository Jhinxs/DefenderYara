
rule Backdoor_BAT_Tounper_A_MTB{
	meta:
		description = "Backdoor:BAT/Tounper.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {55 00 70 00 6c 00 6f 00 61 00 64 00 69 00 6e 00 67 00 20 00 7b 00 30 00 7d 00 20 00 74 00 6f 00 20 00 7b 00 31 00 7d 00 } //1 Uploading {0} to {1}
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 59 00 61 00 6e 00 64 00 65 00 78 00 5c 00 50 00 75 00 6e 00 74 00 6f 00 20 00 53 00 77 00 69 00 74 00 63 00 68 00 65 00 72 00 5c 00 } //1 Software\Yandex\Punto Switcher\
		$a_01_2 = {63 61 72 64 6e 75 6d 62 65 72 68 79 70 68 65 6e 73 } //1 cardnumberhyphens
		$a_01_3 = {79 61 6e 64 65 78 6e 75 6d 62 65 72 } //1 yandexnumber
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}