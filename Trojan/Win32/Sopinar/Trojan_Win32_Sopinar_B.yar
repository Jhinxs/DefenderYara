
rule Trojan_Win32_Sopinar_B{
	meta:
		description = "Trojan:Win32/Sopinar.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {81 3c 31 22 11 22 11 75 ?? c7 04 31 } //1
		$a_01_1 = {7b 38 36 31 65 34 64 38 61 2d 31 36 38 62 2d 34 62 39 30 2d 61 30 34 66 2d 33 34 66 37 32 65 65 37 30 31 65 30 7d } //1 {861e4d8a-168b-4b90-a04f-34f72ee701e0}
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}