
rule Backdoor_BAT_Maslioc_A{
	meta:
		description = "Backdoor:BAT/Maslioc.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {7c 00 64 00 64 00 6f 00 73 00 5f 00 6f 00 6e 00 } //1 |ddos_on
		$a_01_1 = {7c 00 44 00 6f 00 53 00 63 00 72 00 65 00 65 00 6e 00 } //1 |DoScreen
		$a_01_2 = {7c 00 48 00 61 00 72 00 64 00 77 00 61 00 72 00 65 00 42 00 6f 00 6f 00 74 00 } //1 |HardwareBoot
		$a_01_3 = {7c 00 50 00 6f 00 6c 00 69 00 7a 00 65 00 69 00 5f 00 4f 00 4e 00 } //1 |Polizei_ON
		$a_01_4 = {7c 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 5f 00 4f 00 46 00 46 00 } //1 |Firewall_OFF
		$a_01_5 = {41 64 64 54 6f 41 75 74 6f 72 75 6e } //1 AddToAutorun
		$a_01_6 = {53 74 72 65 73 73 65 72 5f 4f 4e } //1 Stresser_ON
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}