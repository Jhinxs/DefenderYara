
rule Worm_Win32_Koobface_AV{
	meta:
		description = "Worm:Win32/Koobface.AV,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {2f 2e 73 79 73 2e 70 68 70 } //2 /.sys.php
		$a_01_1 = {73 63 61 6e 20 64 6f 6d 61 69 6e 20 61 74 74 65 6d 70 74 } //2 scan domain attempt
		$a_01_2 = {59 61 68 6f 6f 20 6d 6c 6f 67 69 6e 20 62 65 67 69 6e } //1 Yahoo mlogin begin
		$a_01_3 = {66 6f 72 6d 5b 69 64 5d } //1 form[id]
		$a_01_4 = {43 72 65 61 74 65 49 45 20 32 20 62 65 67 69 6e } //1 CreateIE 2 begin
		$a_01_5 = {63 72 79 70 74 65 64 20 63 6f 64 65 20 64 65 74 65 63 74 65 64 } //1 crypted code detected
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}