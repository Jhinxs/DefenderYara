
rule Trojan_Win32_QQPass_GB_bit{
	meta:
		description = "Trojan:Win32/QQPass.GB!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 45 78 70 6f 72 65 72 2e 65 78 65 } //2 C:\Program Files\Exporer.exe
		$a_01_1 = {26 71 71 70 61 73 73 77 6f 72 64 3d } //1 &qqpassword=
		$a_01_2 = {3f 71 71 6e 75 6d 62 65 72 3d } //1 ?qqnumber=
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}