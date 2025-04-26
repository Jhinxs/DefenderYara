
rule Backdoor_Win32_Adultcont{
	meta:
		description = "Backdoor:Win32/Adultcont,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 31 39 32 2e 31 36 38 2e 30 2e 31 37 2f 61 64 75 6c 74 63 6f 6e 74 } //1 http://192.168.0.17/adultcont
		$a_01_1 = {41 72 65 61 20 61 64 75 6c 74 69 } //1 Area adulti
		$a_01_2 = {54 68 61 6e 6b 20 79 6f 75 20 66 6f 72 20 75 73 69 6e 67 20 74 68 69 73 20 44 69 61 6c 65 72 } //1 Thank you for using this Dialer
		$a_01_3 = {69 2d 44 69 61 6c 65 72 20 63 6f 6e 6e 65 63 74 69 6f 6e } //1 i-Dialer connection
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}