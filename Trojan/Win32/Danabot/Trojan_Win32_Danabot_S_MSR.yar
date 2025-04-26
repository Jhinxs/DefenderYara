
rule Trojan_Win32_Danabot_S_MSR{
	meta:
		description = "Trojan:Win32/Danabot.S!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {73 6e 78 68 6b 2e 64 6c 6c } //1 snxhk.dll
		$a_01_1 = {63 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c } //1 c:\Users\Public\
		$a_01_2 = {2f 70 68 6f 74 6f 2e 70 6e 67 3f 69 64 3d 25 30 2e 32 58 25 30 2e 38 58 25 30 2e 38 58 } //1 /photo.png?id=%0.2X%0.8X%0.8X
		$a_01_3 = {6c 75 74 68 65 61 74 72 65 2e 63 6f 6d } //1 lutheatre.com
		$a_01_4 = {6d 61 6c 6c 65 73 65 6e 65 2e 63 6f 6d } //1 mallesene.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}