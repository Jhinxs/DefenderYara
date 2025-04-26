
rule VirTool_BAT_CeeInject_WP_bit{
	meta:
		description = "VirTool:BAT/CeeInject.WP!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {25 00 74 00 65 00 6d 00 70 00 25 00 5c 00 61 00 67 00 64 00 6e 00 6f 00 74 00 66 00 72 00 73 00 68 00 69 00 74 00 2e 00 62 00 61 00 74 00 } //1 %temp%\agdnotfrshit.bat
		$a_01_1 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 } //1 \Microsoft\Windows\Start Menu\Programs\Startup\
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}