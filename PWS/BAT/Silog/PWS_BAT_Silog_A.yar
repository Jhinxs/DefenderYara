
rule PWS_BAT_Silog_A{
	meta:
		description = "PWS:BAT/Silog.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {2d 00 2d 00 2d 00 2d 00 20 00 53 00 69 00 6c 00 65 00 6e 00 74 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 2d 00 20 00 52 00 65 00 70 00 6f 00 72 00 74 00 65 00 64 00 20 00 4c 00 6f 00 67 00 73 00 20 00 2d 00 2d 00 2d 00 2d 00 } //1 ---- Silent Logger - Reported Logs ----
		$a_01_1 = {53 74 65 61 6c 65 72 52 75 6e 6e 65 72 } //1 StealerRunner
		$a_01_2 = {4b 65 79 6c 6f 67 67 65 72 54 69 6d 65 72 } //1 KeyloggerTimer
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}