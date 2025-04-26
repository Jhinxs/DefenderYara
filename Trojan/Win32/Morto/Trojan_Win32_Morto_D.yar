
rule Trojan_Win32_Morto_D{
	meta:
		description = "Trojan:Win32/Morto.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {53 59 53 54 45 4d 5c 57 70 61 00 } //1
		$a_01_1 = {66 75 6e 63 74 69 6f 6e 20 77 69 6e 28 29 7b 74 68 69 73 2e 6c 6f 63 61 74 69 6f 6e 3d 22 22 3b 74 68 69 73 2e 68 72 65 66 3d 22 22 3b 74 68 69 73 2e 6f 70 65 6e 3d 77 6f 70 65 6e 3b 7d 66 75 6e 63 74 69 6f 6e 20 77 6f 70 65 6e 28 73 31 2c 73 32 2c 73 33 29 7b 74 68 69 73 2e 6c 6f 63 61 74 69 6f 6e 3d 73 31 3b 7d 76 61 72 20 77 69 6e 64 6f 77 3d 6e 65 77 20 77 69 6e 28 29 3b 76 61 72 20 6c 6f 63 61 74 69 6f 6e 3d 6e 65 77 20 77 69 6e 28 29 3b 66 75 6e 63 74 69 6f 6e 20 47 65 74 28 29 7b 72 65 74 75 72 6e 20 77 69 6e 64 6f 77 2e 6c 6f 63 61 74 69 6f 6e 2b 6c 6f 63 61 74 69 6f 6e 2e 68 72 65 66 3b 7d 3b } //1 function win(){this.location="";this.href="";this.open=wopen;}function wopen(s1,s2,s3){this.location=s1;}var window=new win();var location=new win();function Get(){return window.location+location.href;};
		$a_03_2 = {47 6c 6f 62 61 6c 5c 5f 4d 4f 54 4f [0-05] 5f } //1
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}