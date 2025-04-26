
rule Trojan_Win32_Midie_NM_MTB{
	meta:
		description = "Trojan:Win32/Midie.NM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {68 a0 0f 00 00 ff 30 83 c7 ?? e8 22 17 00 00 59 59 85 c0 74 0c 46 83 fe ?? 7c d2 33 c0 } //5
		$a_01_1 = {4d 00 4a 00 50 00 47 00 43 00 2e 00 54 00 4d 00 50 00 } //1 MJPGC.TMP
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}