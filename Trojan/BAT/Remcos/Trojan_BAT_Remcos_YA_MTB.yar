
rule Trojan_BAT_Remcos_YA_MTB{
	meta:
		description = "Trojan:BAT/Remcos.YA!MTB,SIGNATURE_TYPE_PEHSTR,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {67 65 74 5f 42 6c 6f 63 6b 53 69 7a 65 } //1 get_BlockSize
		$a_01_1 = {67 65 74 5f 4b 65 79 53 69 7a 65 } //1 get_KeySize
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_3 = {4d 69 63 72 6f 73 6f 66 74 2e 56 69 73 75 61 6c 42 61 73 69 63 2e 43 6f 6d 70 69 6c 65 72 53 65 72 76 69 63 65 73 } //1 Microsoft.VisualBasic.CompilerServices
		$a_01_4 = {53 79 73 74 65 6d 2e 57 65 62 2e 53 65 72 76 69 63 65 73 2e 50 72 6f 74 6f 63 6f 6c 73 2e 53 6f 61 70 48 74 74 70 43 6c 69 65 6e 74 50 72 6f 74 6f 63 6f 6c } //1 System.Web.Services.Protocols.SoapHttpClientProtocol
		$a_01_5 = {53 48 41 31 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 SHA1CryptoServiceProvider
		$a_01_6 = {6f 75 74 43 6f 6d 70 69 6c 65 64 2e 65 78 65 } //1 outCompiled.exe
		$a_01_7 = {43 72 65 61 74 65 5f 5f 49 6e 73 74 61 6e 63 65 5f 5f } //1 Create__Instance__
		$a_01_8 = {53 79 73 74 65 6d 2e 43 6f 64 65 44 6f 6d 2e 43 6f 6d 70 69 6c 65 72 } //1 System.CodeDom.Compiler
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}