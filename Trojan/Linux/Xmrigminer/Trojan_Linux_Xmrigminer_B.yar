
rule Trojan_Linux_Xmrigminer_B{
	meta:
		description = "Trojan:Linux/Xmrigminer.B,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 6f 00 6c 00 2e 00 6d 00 69 00 6e 00 65 00 78 00 6d 00 72 00 2e 00 63 00 6f 00 6d 00 } //5 pool.minexmr.com
		$a_00_1 = {2d 00 75 00 20 00 } //1 -u 
		$a_00_2 = {2d 00 42 00 } //1 -B
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=6
 
}