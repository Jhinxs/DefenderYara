
rule Trojan_BAT_HiveMon_AAPR_MTB{
	meta:
		description = "Trojan:BAT/HiveMon.AAPR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 20 00 01 00 00 6f ?? 00 00 0a 00 07 06 6f ?? 00 00 0a 00 07 18 6f ?? 00 00 0a 00 07 6f ?? 00 00 0a 02 16 02 8e 69 6f ?? 00 00 0a 0c 08 0d 2b 00 09 2a } //4
		$a_01_1 = {46 4a 44 43 54 56 57 56 58 45 42 43 4f 4c 43 54 51 45 53 46 55 4d 48 44 50 4e 4d 51 4b 43 4f 54 4e 4e 48 44 4c 56 47 42 } //1 FJDCTVWVXEBCOLCTQESFUMHDPNMQKCOTNNHDLVGB
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}