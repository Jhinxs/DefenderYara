
rule Trojan_Win32_DataCompress_A_7zip{
	meta:
		description = "Trojan:Win32/DataCompress.A!7zip,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_00_0 = {37 00 7a 00 2e 00 65 00 78 00 65 00 } //1 7z.exe
		$a_00_1 = {20 00 37 00 7a 00 20 00 } //1  7z 
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1) >=1
 
}