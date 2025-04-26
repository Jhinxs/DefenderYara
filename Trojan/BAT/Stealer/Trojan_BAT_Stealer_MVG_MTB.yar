
rule Trojan_BAT_Stealer_MVG_MTB{
	meta:
		description = "Trojan:BAT/Stealer.MVG!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {45 6d 62 65 64 64 65 64 53 51 4c 69 74 65 44 65 6d 6f 2e 65 78 65 } //1 EmbeddedSQLiteDemo.exe
		$a_01_1 = {62 69 6f 73 74 61 72 } //1 biostar
		$a_01_2 = {76 61 63 75 75 6d 5f 64 62 } //1 vacuum_db
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}