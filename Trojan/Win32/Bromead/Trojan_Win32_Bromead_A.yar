
rule Trojan_Win32_Bromead_A{
	meta:
		description = "Trojan:Win32/Bromead.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0a 00 07 00 00 "
		
	strings :
		$a_01_0 = {68 61 78 6f 72 62 72 64 72 65 61 6d } //1 haxorbrdream
		$a_01_1 = {70 65 72 70 6c 65 78 } //1 perplex
		$a_01_2 = {4f 6e 50 6f 6b 65 44 61 74 61 } //2 OnPokeData
		$a_01_3 = {69 66 20 45 78 69 73 74 20 22 } //2 if Exist "
		$a_01_4 = {43 6f 6e 74 65 6e 74 2d 54 72 61 6e 73 66 65 72 2d 45 6e 63 6f 64 69 6e 67 3a 20 62 69 6e 68 65 78 34 30 } //2 Content-Transfer-Encoding: binhex40
		$a_01_5 = {5c 44 61 64 6f 73 20 64 65 20 61 70 6c 69 63 61 74 69 76 6f 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 41 64 64 72 65 73 73 20 42 6f 6f 6b 5c } //2 \Dados de aplicativos\Microsoft\Address Book\
		$a_01_6 = {40 67 6d 61 69 6c 2e 63 6f 6d } //2 @gmail.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2) >=10
 
}