
rule Trojan_Win32_Vflooder_YA_MTB{
	meta:
		description = "Trojan:Win32/Vflooder.YA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 6f 6e 74 65 6e 74 2d 44 69 73 70 6f 73 69 74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d 22 66 69 6c 65 22 3b 20 66 69 6c 65 6e 61 6d 65 3d 22 31 2e 65 78 65 22 } //1 Content-Disposition: form-data; name="file"; filename="1.exe"
		$a_01_1 = {2f 00 76 00 74 00 61 00 70 00 69 00 2f 00 76 00 32 00 2f 00 66 00 69 00 6c 00 65 00 2f 00 73 00 63 00 61 00 6e 00 } //1 /vtapi/v2/file/scan
		$a_01_2 = {2f 00 70 00 69 00 64 00 6f 00 72 00 61 00 73 00 36 00 } //1 /pidoras6
		$a_01_3 = {74 00 77 00 69 00 74 00 74 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 } //1 twitter.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}