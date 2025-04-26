
rule Trojan_BAT_Vbato_A{
	meta:
		description = "Trojan:BAT/Vbato.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {2f 00 45 00 52 00 52 00 4f 00 52 00 44 00 49 00 52 00 2f 00 28 00 44 00 49 00 52 00 29 00 2e 00 2a 00 28 00 44 00 49 00 52 00 29 00 2e 00 2e 00 } //1 /ERRORDIR/(DIR).*(DIR)..
		$a_01_1 = {2f 00 52 00 55 00 4e 00 45 00 58 00 45 00 46 00 4c 00 2f 00 } //1 /RUNEXEFL/
		$a_01_2 = {48 00 54 00 54 00 50 00 4d 00 61 00 69 00 6c 00 20 00 55 00 73 00 65 00 72 00 20 00 4e 00 61 00 6d 00 65 00 } //1 HTTPMail User Name
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}