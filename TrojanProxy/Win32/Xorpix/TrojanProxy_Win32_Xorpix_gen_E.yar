
rule TrojanProxy_Win32_Xorpix_gen_E{
	meta:
		description = "TrojanProxy:Win32/Xorpix.gen!E,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {03 5d 0c 8a 06 eb ?? [0-02] 30 07 90 90 47 46 3b fb 74 0d 8a 06 84 c0 75 f1 8b 75 10 8a 06 eb ea } //1
		$a_00_1 = {64 6c 6c 2e 64 6c 6c 00 70 72 6f 63 31 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}