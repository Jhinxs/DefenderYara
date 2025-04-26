
rule VirTool_Win32_Vbinder_CL{
	meta:
		description = "VirTool:Win32/Vbinder.CL,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {78 00 70 00 72 00 65 00 5c 00 78 00 70 00 72 00 65 00 2e 00 76 00 62 00 70 00 } //1 xpre\xpre.vbp
		$a_01_1 = {73 00 76 00 72 00 2c 00 61 00 76 00 67 00 75 00 70 00 73 00 76 00 63 00 2c 00 6e 00 76 00 63 00 70 00 6c 00 2c 00 7a 00 6f 00 6e 00 65 00 61 00 6c 00 61 00 72 00 6d 00 2c 00 7a 00 6c 00 63 00 6c 00 69 00 65 00 6e 00 74 00 2c 00 76 00 73 00 63 00 61 00 6e 00 2c 00 76 00 69 00 72 00 75 00 73 00 2c 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 } //1 svr,avgupsvc,nvcpl,zonealarm,zlclient,vscan,virus,firewal
		$a_01_2 = {54 00 56 00 71 00 51 00 41 00 41 00 4d 00 41 00 41 00 41 00 41 00 45 00 41 00 41 00 41 00 41 00 } //1 TVqQAAMAAAAEAAAA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}