
rule Backdoor_BAT_Quasarat_A_bit{
	meta:
		description = "Backdoor:BAT/Quasarat.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {00 64 65 73 63 72 65 76 65 61 62 63 00 } //1
		$a_01_1 = {5c 52 65 6d 6f 74 65 5c 51 75 61 73 61 72 52 41 54 2d 6d 61 73 74 65 72 } //1 \Remote\QuasarRAT-master
		$a_01_2 = {00 64 65 73 63 72 65 76 65 00 } //1 搀獥牣癥e
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}