
rule TrojanSpy_BAT_Tregapass_A{
	meta:
		description = "TrojanSpy:BAT/Tregapass.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_80_0 = {68 65 6e 72 69 71 75 65 2e 77 68 65 65 6c 73 40 79 61 68 6f 6f 2e 63 6f 6d } //henrique.wheels@yahoo.com  1
		$a_80_1 = {6c 6f 67 69 6e 70 61 73 73 77 6f 72 64 } //loginpassword  1
		$a_80_2 = {50 68 6c 6d 32 30 31 30 } //Phlm2010  1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1) >=3
 
}