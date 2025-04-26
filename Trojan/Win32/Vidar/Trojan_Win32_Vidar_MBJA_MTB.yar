
rule Trojan_Win32_Vidar_MBJA_MTB{
	meta:
		description = "Trojan:Win32/Vidar.MBJA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {6f 75 71 65 70 62 71 67 72 72 6c 77 67 72 74 76 74 77 6f 72 77 6c 72 7a 6a 79 6f 76 6c 65 6b 73 64 6c 69 71 68 68 70 69 74 73 61 6b 63 73 79 74 77 67 71 78 67 75 72 66 74 76 62 77 63 61 65 61 66 78 67 72 75 61 6f 61 76 73 67 63 62 74 63 6a 66 7a 73 76 74 6b 69 72 6a 77 61 69 6e 66 6e 65 } //1 ouqepbqgrrlwgrtvtworwlrzjyovleksdliqhhpitsakcsytwgqxgurftvbwcaeafxgruaoavsgcbtcjfzsvtkirjwainfne
		$a_01_1 = {6e 77 71 62 7a 6a 7a 70 63 6c 62 7a 6b 72 63 6b 65 63 6d 64 63 6e 75 69 6f 78 62 6c 72 73 6d 64 79 76 79 66 74 6f 73 6e } //1 nwqbzjzpclbzkrckecmdcnuioxblrsmdyvyftosn
		$a_01_2 = {67 62 63 69 79 6e 78 61 6e 70 72 72 6d 69 73 75 72 65 6a 72 69 73 6e 75 67 66 6c 76 70 70 73 61 64 77 79 6c 61 63 66 74 74 6e 6e 6b 65 69 63 74 67 79 7a 6a 61 7a 00 00 67 79 70 64 63 79 68 6d 72 6a 68 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}