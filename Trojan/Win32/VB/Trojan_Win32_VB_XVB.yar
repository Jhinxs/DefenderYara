
rule Trojan_Win32_VB_XVB{
	meta:
		description = "Trojan:Win32/VB.XVB,SIGNATURE_TYPE_PEHSTR,16 00 15 00 04 00 00 "
		
	strings :
		$a_01_0 = {44 46 69 6f 69 6f 34 69 35 34 33 36 35 34 36 } //10 DFioio4i5436546
		$a_01_1 = {2d 43 30 30 30 2d 46 44 47 70 34 33 6f 35 34 6f 33 35 34 } //10 -C000-FDGp43o54o354
		$a_01_2 = {5d 00 75 00 6a 00 6a 00 69 00 69 00 60 00 67 00 67 00 24 00 6e 00 74 00 68 00 } //1 ]ujjii`gg$nth
		$a_01_3 = {5d 00 71 00 75 00 67 00 6d 00 69 00 74 00 7c 00 } //1 ]qugmit|
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=21
 
}