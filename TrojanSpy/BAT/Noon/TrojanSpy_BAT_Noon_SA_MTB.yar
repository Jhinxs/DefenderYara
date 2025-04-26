
rule TrojanSpy_BAT_Noon_SA_MTB{
	meta:
		description = "TrojanSpy:BAT/Noon.SA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {07 11 0c 17 58 11 07 5d 91 13 0d 07 11 0c 91 13 0e 08 11 0c 08 6f 44 00 00 0a 5d 6f 45 00 00 0a 13 0f 11 0e 11 0f 61 11 0d 59 20 00 01 00 00 58 20 ff 00 00 00 5f 13 10 07 11 0c 11 10 d2 9c 00 11 0c 17 58 13 0c 11 0c 11 07 fe 04 13 11 11 11 2d ad } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}