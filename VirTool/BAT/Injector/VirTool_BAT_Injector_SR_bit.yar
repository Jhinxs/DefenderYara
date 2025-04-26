
rule VirTool_BAT_Injector_SR_bit{
	meta:
		description = "VirTool:BAT/Injector.SR!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {17 da 11 04 da 03 11 04 91 ?? 61 ?? 11 04 ?? 8e b7 5d 91 61 9c 11 04 17 d6 } //1
		$a_01_1 = {49 00 4e 00 53 00 45 00 52 00 54 00 20 00 49 00 4e 00 54 00 4f 00 20 00 73 00 74 00 6f 00 63 00 6b 00 20 00 56 00 41 00 4c 00 55 00 45 00 53 00 28 00 27 00 73 00 73 00 73 00 61 00 27 00 29 00 } //1 INSERT INTO stock VALUES('sssa')
		$a_03_2 = {50 00 6e 00 67 00 [0-30] 4e 00 61 00 6d 00 65 00 [0-10] 54 00 6f 00 4c 00 6f 00 77 00 65 00 72 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}