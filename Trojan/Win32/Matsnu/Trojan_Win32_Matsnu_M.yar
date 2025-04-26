
rule Trojan_Win32_Matsnu_M{
	meta:
		description = "Trojan:Win32/Matsnu.M,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {25 73 7e 25 30 38 78 2d 25 30 34 78 2d 25 30 34 78 2e 70 72 65 } //1 %s~%08x-%04x-%04x.pre
		$a_01_1 = {73 65 6e 64 65 64 3d 25 75 26 65 72 72 6f 72 3d 25 75 26 65 78 65 72 72 3d 25 75 26 } //1 sended=%u&error=%u&exerr=%u&
		$a_01_2 = {e8 09 00 00 00 52 65 67 4d 6f 6e 45 76 00 6a 00 6a 01 6a 00 ff 93 } //1
		$a_01_3 = {e8 0a 00 00 00 2f 25 73 3a 2a 2d 2d 25 73 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}