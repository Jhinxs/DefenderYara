
rule Trojan_BAT_Kryptik_UL_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.UL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_03_0 = {1f 61 32 0a 06 1f 7a fe 02 16 fe 01 2b 01 16 0b 07 2c 1d [0-02] 06 1f 6d fe 02 0c 08 2c 09 [0-02] 06 1f 0d 59 0a [0-02] 2b 07 [0-02] 06 1f 0d 58 0a } //10
		$a_03_1 = {16 0d 09 2c 1d [0-02] 06 1f 4d fe 02 13 04 11 04 2c 09 [0-02] 06 1f 0d 59 0a [0-02] 2b 07 [0-02] 06 1f 0d 58 0a [0-02] 06 d1 13 05 2b 00 11 05 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10) >=20
 
}