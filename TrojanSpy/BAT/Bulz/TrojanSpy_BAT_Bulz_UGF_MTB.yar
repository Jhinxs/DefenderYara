
rule TrojanSpy_BAT_Bulz_UGF_MTB{
	meta:
		description = "TrojanSpy:BAT/Bulz.UGF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {13 04 11 04 09 6f ?? ?? ?? 0a 00 08 6f ?? ?? ?? 0a 0d 00 09 14 fe 03 13 05 11 05 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}