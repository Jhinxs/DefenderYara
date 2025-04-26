
rule TrojanSpy_BAT_Noon_SU_MTB{
	meta:
		description = "TrojanSpy:BAT/Noon.SU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {00 07 08 18 5b 02 08 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a d2 9c 00 08 18 58 0c 08 06 fe 04 0d 09 2d dd } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}