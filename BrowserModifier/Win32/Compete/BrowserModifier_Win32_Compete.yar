
rule BrowserModifier_Win32_Compete{
	meta:
		description = "BrowserModifier:Win32/Compete,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {6f 70 65 72 61 74 65 64 20 62 79 20 43 6f 6d 70 65 74 65 2c 20 49 6e 63 2e } //1 operated by Compete, Inc.
		$a_01_1 = {6f 70 65 6e 20 68 74 74 70 3a 2f 2f 63 6f 6e 73 75 6d 65 72 69 6e 70 75 74 2e 63 6f 6d 2f 70 72 69 76 61 63 79 } //1 open http://consumerinput.com/privacy
		$a_01_2 = {24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //1 $$\wininit.ini
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_Compete_2{
	meta:
		description = "BrowserModifier:Win32/Compete,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {3f 24 6d 66 33 40 5f 4e 56 43 43 68 72 6f 6d 65 41 63 74 69 76 61 74 69 6f 6e 4d 65 74 68 6f 64 40 40 50 41 4b 56 3f 24 43 43 6f 6d 50 74 72 40 55 49 55 49 41 75 74 6f 6d 61 74 69 6f 6e 45 6c 65 6d 65 6e 74 40 40 40 41 54 4c } //1 ?$mf3@_NVCChromeActivationMethod@@PAKV?$CComPtr@UIUIAutomationElement@@@ATL
		$a_01_1 = {40 56 43 41 63 74 69 76 61 74 69 6f 6e 43 6f 6e 74 72 6f 6c 6c 65 72 40 40 40 64 65 74 61 69 6c 40 } //1 @VCActivationController@@@detail@
		$a_01_2 = {43 00 6f 00 6e 00 73 00 75 00 6d 00 65 00 72 00 20 00 49 00 6e 00 70 00 75 00 74 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 61 00 64 00 64 00 65 00 64 00 20 00 74 00 6f 00 20 00 43 00 68 00 72 00 6f 00 6d 00 65 00 2e 00 } //1 Consumer Input has been added to Chrome.
		$a_01_3 = {43 00 49 00 20 00 43 00 68 00 72 00 6f 00 6d 00 65 00 20 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 4e 00 6f 00 74 00 69 00 63 00 65 00 } //1 CI Chrome Install Notice
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}