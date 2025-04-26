
rule Ransom_Win64_ForeigCrypt_PA_MTB{
	meta:
		description = "Ransom:Win64/ForeigCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_81_0 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 22 6a 75 4c 44 74 71 5a 63 69 71 71 6c 53 66 6e 75 37 37 6f 68 2f 36 5f 45 50 66 38 7a 76 6c 6a 31 6d 48 4e 75 } //5 Go build ID: "juLDtqZciqqlSfnu77oh/6_EPf8zvlj1mHNu
		$a_81_1 = {68 69 6a 61 63 6b 65 64 68 74 74 70 } //1 hijackedhttp
		$a_81_2 = {2e 65 6e 63 72 79 70 74 65 64 } //1 .encrypted
		$a_81_3 = {66 75 63 6b 79 6f 75 6d 61 6c 77 61 72 65 62 79 74 65 73 } //1 fuckyoumalwarebytes
		$a_81_4 = {75 6e 72 65 61 63 68 61 62 6c 65 75 73 65 72 65 6e 76 2e 64 6c 6c } //1 unreachableuserenv.dll
		$a_81_5 = {49 6e 66 2e 62 61 74 2e 63 6d 64 2e 63 6f 6d 2e 63 73 73 2e 65 78 65 2e 67 69 66 2e 68 74 6d 2e 6a 70 67 2e 6d 6a 73 2e 70 64 66 2e 70 6e 67 2e 73 76 67 2e 78 6d 6c } //1 Inf.bat.cmd.com.css.exe.gif.htm.jpg.mjs.pdf.png.svg.xml
	condition:
		((#a_81_0  & 1)*5+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=10
 
}