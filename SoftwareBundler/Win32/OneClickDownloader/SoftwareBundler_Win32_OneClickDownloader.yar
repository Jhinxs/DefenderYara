
rule SoftwareBundler_Win32_OneClickDownloader{
	meta:
		description = "SoftwareBundler:Win32/OneClickDownloader,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 1d 00 05 00 00 "
		
	strings :
		$a_01_0 = {31 43 6c 69 63 6b 44 6f 77 6e 6c 6f 61 64 65 72 } //3 1ClickDownloader
		$a_01_1 = {59 6f 6e 74 6f 6f 49 45 43 6c 69 65 6e 74 2e 64 6c 6c } //3 YontooIEClient.dll
		$a_01_2 = {2c 20 49 20 61 67 72 65 65 20 74 6f 20 74 68 65 20 59 6f 6e 74 6f 6f 20 70 72 69 76 61 63 79 20 70 6f 6c 69 63 79 20 26 26 20 74 65 72 6d 73 20 6f 66 20 73 65 72 76 69 63 65 2e } //7 , I agree to the Yontoo privacy policy && terms of service.
		$a_01_3 = {68 74 74 70 3a 2f 2f 77 77 77 2e 79 6f 6e 74 6f 6f 2e 63 6f 6d 2f 50 72 69 76 61 63 79 50 6f 6c 69 63 79 2e 61 73 70 78 } //7 http://www.yontoo.com/PrivacyPolicy.aspx
		$a_01_4 = {44 72 6f 70 44 6f 77 6e 44 65 61 6c 73 20 69 73 20 61 20 66 65 61 74 75 72 65 20 6f 66 20 59 6f 6e 74 6f 6f 2c 20 61 20 62 72 6f 77 73 65 72 20 61 64 64 2d 6f 6e 20 74 68 61 74 20 65 6e 68 61 6e 63 65 20 73 69 74 65 73 20 77 69 74 68 20 76 61 72 69 6f 75 73 20 66 65 61 74 75 72 65 73 2e 20 41 6c 6f 6e 67 20 77 69 74 68 20 44 72 6f 70 44 6f 77 6e 44 65 61 6c 73 2c 20 45 61 73 } //9 DropDownDeals is a feature of Yontoo, a browser add-on that enhance sites with various features. Along with DropDownDeals, Eas
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*7+(#a_01_3  & 1)*7+(#a_01_4  & 1)*9) >=29
 
}