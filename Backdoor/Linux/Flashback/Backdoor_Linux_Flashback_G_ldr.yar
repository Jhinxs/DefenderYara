
rule Backdoor_Linux_Flashback_G_ldr{
	meta:
		description = "Backdoor:Linux/Flashback.G!ldr,SIGNATURE_TYPE_MACHOHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {55 73 65 72 2d 41 67 65 6e 74 } //1 User-Agent
		$a_01_1 = {68 74 74 70 3a 2f 2f 25 73 25 73 } //1 http://%s%s
		$a_01_2 = {49 4f 53 65 72 76 69 63 65 3a 2f } //1 IOService:/
		$a_01_3 = {49 4f 50 6c 61 74 66 6f 72 6d 55 55 49 44 } //1 IOPlatformUUID
		$a_03_4 = {68 74 74 70 3a 2f 2f [0-02] 2e [0-02] 2e [0-02] 2e [0-02] 2f 73 74 61 74 5f 73 76 63 2f } //1
		$a_03_5 = {89 c8 ba 08 00 00 00 a8 01 74 [0-02] d1 e8 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}