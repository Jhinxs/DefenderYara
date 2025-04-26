
rule Trojan_Win32_Beaconpy_A{
	meta:
		description = "Trojan:Win32/Beaconpy.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_00_0 = {5c 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 68 00 75 00 62 00 2e 00 68 00 6f 00 73 00 74 00 2e 00 63 00 6c 00 72 00 2e 00 65 00 78 00 65 00 } //3 \servicehub.host.clr.exe
		$a_02_1 = {65 00 78 00 65 00 63 00 28 00 [0-50] 66 00 72 00 6f 00 6d 00 68 00 65 00 78 00 28 00 } //1
	condition:
		((#a_00_0  & 1)*3+(#a_02_1  & 1)*1) >=4
 
}