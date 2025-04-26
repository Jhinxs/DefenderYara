
rule VirTool_BAT_Injector_DU_bit{
	meta:
		description = "VirTool:BAT/Injector.DU!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 91 02 03 02 8e 69 5d 91 61 d2 9c 2a 90 09 0b 00 7e ?? 00 00 04 03 7e ?? 00 00 04 03 } //1
		$a_03_1 = {20 e8 03 00 00 5a 0a 16 90 09 0c 00 73 ?? 00 00 0a 19 1d 6f ?? 00 00 0a } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}