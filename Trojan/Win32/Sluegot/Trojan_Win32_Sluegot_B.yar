
rule Trojan_Win32_Sluegot_B{
	meta:
		description = "Trojan:Win32/Sluegot.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {6c 65 74 75 73 67 6f } //1 letusgo
		$a_01_1 = {4d 45 52 4f 4e 47 28 30 2e } //1 MERONG(0.
		$a_00_2 = {53 69 72 2c 49 20 67 65 74 20 75 70 2e } //1 Sir,I get up.
		$a_00_3 = {25 73 25 73 26 6d 69 64 3d 25 73 26 70 67 69 64 3d 25 64 } //1 %s%s&mid=%s&pgid=%d
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}