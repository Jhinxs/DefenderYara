
rule Trojan_BAT_AveMaria_NEEB_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NEEB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 09 00 00 "
		
	strings :
		$a_01_0 = {41 33 44 44 33 43 43 44 44 46 39 44 45 30 43 44 39 32 43 34 35 36 35 32 45 34 46 35 35 37 43 33 43 44 34 43 39 44 46 32 35 41 41 41 33 37 36 45 44 38 45 38 42 42 30 43 46 35 39 32 45 32 34 36 } //5 A3DD3CCDDF9DE0CD92C45652E4F557C3CD4C9DF25AAA376ED8E8BB0CF592E246
		$a_01_1 = {42 72 67 79 5f 44 61 61 6e 67 5f 42 75 6b 69 64 5f 4d 49 53 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //5 Brgy_Daang_Bukid_MIS.Resources.resources
		$a_01_2 = {46 47 40 41 42 43 44 45 46 66 } //5 FG@ABCDEFf
		$a_01_3 = {4d 79 2e 4d 79 50 72 6f 6a 65 63 74 2e 46 6f 72 6d 73 } //2 My.MyProject.Forms
		$a_01_4 = {54 61 72 67 65 74 49 6e 76 6f 63 61 74 69 6f 6e 45 78 63 65 70 74 69 6f 6e } //2 TargetInvocationException
		$a_01_5 = {34 53 79 73 74 65 6d 2e 57 65 62 2e 53 65 72 76 69 63 65 73 2e 50 72 6f 74 6f 63 6f 6c 73 2e 53 6f 61 70 48 74 74 70 43 6c 69 65 6e 74 50 72 6f 74 6f 63 6f 6c } //2 4System.Web.Services.Protocols.SoapHttpClientProtocol
		$a_01_6 = {53 79 73 74 65 6d 2e 57 69 6e 64 6f 77 73 2e 46 6f 72 6d 73 2e 46 6f 72 6d } //2 System.Windows.Forms.Form
		$a_01_7 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //2 InvokeMember
		$a_01_8 = {73 65 74 5f 56 69 73 69 62 6c 65 } //2 set_Visible
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2) >=27
 
}