
rule Adware_Win32_Kavconn_RR_MTB{
	meta:
		description = "Adware:Win32/Kavconn.RR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {b9 c4 9c 61 00 c7 05 ?? ?? ?? ?? 40 00 00 00 8b 39 83 c1 04 33 c7 81 f9 c4 9d 61 00 72 f1 } //1
		$a_00_1 = {68 00 00 00 c0 68 f4 9a 61 00 ff 55 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}