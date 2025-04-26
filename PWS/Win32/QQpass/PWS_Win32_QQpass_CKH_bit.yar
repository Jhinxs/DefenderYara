
rule PWS_Win32_QQpass_CKH_bit{
	meta:
		description = "PWS:Win32/QQpass.CKH!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {71 71 2e 65 78 65 37 38 36 34 36 34 36 30 32 41 33 46 33 46 } //2 qq.exe786464602A3F3F
		$a_01_1 = {53 65 6e 64 53 4d 53 41 63 74 69 76 65 } //1 SendSMSActive
		$a_03_2 = {41 63 74 69 6f 6e 3d 41 64 64 55 73 65 72 26 53 65 72 76 65 72 3d [0-08] 26 55 73 65 72 3d [0-10] 26 50 61 73 73 3d } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}