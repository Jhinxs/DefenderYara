
rule Trojan_BAT_SnakeKeylogger_NEF_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.NEF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {24 36 31 45 46 38 32 36 42 2d 42 35 39 38 2d 34 33 46 37 2d 39 37 30 46 2d 43 31 38 31 35 44 33 45 35 31 35 41 } //1 $61EF826B-B598-43F7-970F-C1815D3E515A
		$a_01_1 = {3d 57 4c 47 32 50 48 4c 52 } //1 =WLG2PHLR
		$a_01_2 = {46 4b 53 4c 63 42 50 41 3d } //1 FKSLcBPA=
		$a_01_3 = {52 00 53 00 41 00 50 00 53 00 53 00 } //1 RSAPSS
		$a_01_4 = {43 00 30 00 47 00 4b 00 53 00 4d 00 4b 00 49 00 50 00 41 00 37 00 58 00 38 00 57 00 4c 00 } //1 C0GKSMKIPA7X8WL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}