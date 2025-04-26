
rule Trojan_Win32_Raspberryrobin_RA_MTB{
	meta:
		description = "Trojan:Win32/Raspberryrobin.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {49 6e 69 75 62 79 47 74 72 72 72 72 63 72 } //1 IniubyGtrrrrcr
		$a_01_1 = {50 6f 69 69 6e 46 78 72 63 74 } //1 PoiinFxrct
		$a_01_2 = {4c 6e 66 75 68 54 76 74 63 72 } //1 LnfuhTvtcr
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}