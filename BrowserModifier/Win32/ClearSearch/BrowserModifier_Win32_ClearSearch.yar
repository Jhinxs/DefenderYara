
rule BrowserModifier_Win32_ClearSearch{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 6c 72 53 72 63 68 5f 43 6f 6e 6e 65 63 74 } //4 ClrSrch_Connect
		$a_01_1 = {63 73 41 4f 4c 6c 64 72 } //3 csAOLldr
		$a_01_2 = {49 6e 69 74 49 6e 73 74 61 6e 63 65 } //1 InitInstance
		$a_01_3 = {54 65 72 6d 49 6e 73 74 61 6e 63 65 } //1 TermInstance
		$a_01_4 = {43 6c 72 53 72 63 68 5f 44 69 73 63 6f 6e 6e 65 63 74 } //4 ClrSrch_Disconnect
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*3+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*4) >=9
 
}
rule BrowserModifier_Win32_ClearSearch_2{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 63 73 69 65 5f 75 73 62 5f 63 61 6d 70 61 69 67 6e 73 2e } //3 /csie_usb_campaigns.
		$a_01_1 = {53 74 61 72 74 69 6e 67 20 55 52 4c 53 69 64 65 42 61 72 20 50 72 6f 63 65 73 73 } //3 Starting URLSideBar Process
		$a_01_2 = {55 53 42 20 4d 61 74 63 68 } //3 USB Match
		$a_01_3 = {63 3a 5c 63 73 69 65 5f 64 65 62 75 67 2e 74 78 74 } //3 c:\csie_debug.txt
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3) >=12
 
}
rule BrowserModifier_Win32_ClearSearch_3{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 61 69 74 5f 46 6f 72 5f 4f 6e 6c 69 6e 65 } //2 Wait_For_Online
		$a_00_1 = {53 4f 46 54 57 41 52 45 5c 43 6c 72 53 63 68 } //2 SOFTWARE\ClrSch
		$a_00_2 = {70 72 6f 6d 6f 3d 25 64 } //2 promo=%d
		$a_01_3 = {42 49 20 69 6e 73 74 61 6c 6c 65 72 } //2 BI installer
		$a_01_4 = {68 74 74 70 3a 2f 2f 73 64 73 2e 63 6c 72 73 63 68 2e 63 6f 6d 2f } //2 http://sds.clrsch.com/
	condition:
		((#a_01_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=10
 
}
rule BrowserModifier_Win32_ClearSearch_4{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 73 74 61 74 75 73 2e 71 63 6b 61 64 73 2e 63 6f 6d 2f } //3 http://status.qckads.com/
		$a_01_1 = {68 74 74 70 3a 2f 2f 73 64 73 2e 71 63 6b 61 64 73 2e 63 6f 6d 2f 73 69 64 65 73 65 61 72 63 68 2f } //3 http://sds.qckads.com/sidesearch/
		$a_01_2 = {63 73 69 65 5f 73 72 63 68 72 75 6c 65 2e 64 61 74 } //3 csie_srchrule.dat
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 4c 59 43 4f 53 5c 53 69 64 65 73 65 61 72 63 68 } //3 SOFTWARE\LYCOS\Sidesearch
		$a_01_4 = {2f 70 72 6f 6d 6f 3d 25 64 26 67 75 69 64 3d 25 73 } //3 /promo=%d&guid=%s
		$a_01_5 = {63 3a 5c 63 73 69 65 5f 64 65 62 75 67 2e 74 78 74 } //3 c:\csie_debug.txt
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_00_3  & 1)*3+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3) >=15
 
}
rule BrowserModifier_Win32_ClearSearch_5{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 08 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 43 6c 72 53 63 68 } //2 SOFTWARE\ClrSch
		$a_01_1 = {43 6c 72 53 63 68 55 6e 69 6e 73 74 61 6c 6c } //3 ClrSchUninstall
		$a_01_2 = {4c 79 63 6f 73 5c 49 45 61 67 65 6e 74 } //2 Lycos\IEagent
		$a_00_3 = {43 53 49 45 2e 44 4c 4c } //3 CSIE.DLL
		$a_00_4 = {49 45 5f 43 6c 72 53 63 68 2e 44 4c 4c } //3 IE_ClrSch.DLL
		$a_00_5 = {43 6c 72 53 63 68 4c 6f 61 64 65 72 } //3 ClrSchLoader
		$a_01_6 = {63 6c 72 73 63 68 2e 63 6f 6d 2f 6c 6f 61 64 65 72 } //3 clrsch.com/loader
		$a_01_7 = {52 65 64 69 72 65 63 74 73 20 74 6f 20 63 65 72 74 61 69 6e 20 73 69 74 65 73 20 62 61 73 65 64 20 6f 6e 20 77 68 65 72 65 20 79 6f 75 20 62 72 6f 77 73 65 } //-5 Redirects to certain sites based on where you browse
	condition:
		((#a_00_0  & 1)*2+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_00_3  & 1)*3+(#a_00_4  & 1)*3+(#a_00_5  & 1)*3+(#a_01_6  & 1)*3+(#a_01_7  & 1)*-5) >=15
 
}
rule BrowserModifier_Win32_ClearSearch_6{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 "
		
	strings :
		$a_01_0 = {43 4c 45 41 52 53 45 41 52 43 48 2e 44 4c 4c } //2 CLEARSEARCH.DLL
		$a_01_1 = {43 6c 72 53 72 63 68 5f 43 6f 6e 6e 65 63 74 } //2 ClrSrch_Connect
		$a_01_2 = {43 6c 72 53 72 63 68 5f 44 69 73 63 6f 6e 6e 65 63 74 } //2 ClrSrch_Disconnect
		$a_01_3 = {43 6c 72 53 72 63 68 5f 49 73 43 6f 6e 6e 65 63 74 65 64 } //2 ClrSrch_IsConnected
		$a_01_4 = {63 6c 65 61 72 20 73 65 61 72 63 68 20 76 65 72 73 69 6f 6e } //2 clear search version
		$a_01_5 = {63 6c 65 61 72 73 65 61 72 63 68 20 76 65 72 73 69 6f 6e } //2 clearsearch version
		$a_01_6 = {25 73 3f 67 75 69 64 3d 25 73 26 66 63 3d 25 64 26 70 3d 25 64 26 76 3d 25 64 } //2 %s?guid=%s&fc=%d&p=%d&v=%d
		$a_01_7 = {68 74 74 70 3a 2f 2f 72 25 64 2e 63 6c 72 73 63 68 2e 63 6f 6d 2f } //2 http://r%d.clrsch.com/
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2) >=10
 
}
rule BrowserModifier_Win32_ClearSearch_7{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 07 00 00 "
		
	strings :
		$a_01_0 = {52 65 73 6f 6c 76 65 72 20 72 65 74 75 72 6e 65 64 20 34 30 34 } //1 Resolver returned 404
		$a_01_1 = {52 65 73 6f 6c 76 65 72 20 72 65 74 75 72 6e 65 64 20 6e 6f 20 64 61 74 61 } //1 Resolver returned no data
		$a_01_2 = {63 6c 72 73 63 68 3a 75 72 6c } //3 clrsch:url
		$a_01_3 = {25 73 3f 67 75 69 64 3d 25 73 26 61 64 64 72 3d 25 73 26 73 74 3d 25 64 26 65 67 3d 25 64 26 70 3d 25 64 26 76 65 72 3d 25 64 } //2 %s?guid=%s&addr=%s&st=%d&eg=%d&p=%d&ver=%d
		$a_01_4 = {68 74 74 70 3a 2f 2f 72 25 64 2e 63 6c 72 73 63 68 2e 63 6f 6d 2f 69 65 2f } //3 http://r%d.clrsch.com/ie/
		$a_01_5 = {63 3a 5c 63 73 69 65 5f 64 65 62 75 67 2e 74 78 74 } //3 c:\csie_debug.txt
		$a_01_6 = {47 6f 76 65 72 6e 6f 72 20 48 69 74 20 2d 20 41 74 74 65 6d 70 74 20 4c 6f 73 74 } //2 Governor Hit - Attempt Lost
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3+(#a_01_3  & 1)*2+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3+(#a_01_6  & 1)*2) >=12
 
}
rule BrowserModifier_Win32_ClearSearch_8{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 09 00 00 "
		
	strings :
		$a_01_0 = {67 6f 6f 64 41 4f 4c 2e 44 4c } //1 goodAOL.DL
		$a_01_1 = {63 73 41 4f 4c 6c 64 72 2e 65 78 } //2 csAOLldr.ex
		$a_01_2 = {54 69 6d 65 20 74 6f 20 77 61 6b 65 20 75 70 2c 20 63 75 72 72 65 6e 74 20 74 69 6d 65 20 69 73 20 25 64 2e } //1 Time to wake up, current time is %d.
		$a_01_3 = {53 6c 65 65 70 69 6e 67 20 66 6f 72 20 25 6c 64 20 6d 69 6c 6c 69 2d 73 65 63 6f 6e 64 73 20 2e 2e 2e } //1 Sleeping for %ld milli-seconds ...
		$a_01_4 = {41 5f 43 6c 65 61 72 53 65 61 72 63 68 2e 44 4c 4c } //2 A_ClearSearch.DLL
		$a_01_5 = {43 54 41 4f 4c 4c 44 52 2e 45 58 45 } //3 CTAOLLDR.EXE
		$a_01_6 = {43 53 42 42 } //1 CSBB
		$a_01_7 = {43 6c 65 61 6e 75 70 5f 4f 6c 64 5f 41 4f 4c 5f 50 6c 75 67 69 6e 73 } //1 Cleanup_Old_AOL_Plugins
		$a_01_8 = {43 53 41 4f 4c 4c 44 52 2e 45 58 45 } //3 CSAOLLDR.EXE
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*3+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*3) >=14
 
}
rule BrowserModifier_Win32_ClearSearch_9{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 07 00 00 "
		
	strings :
		$a_01_0 = {7b 39 34 37 45 36 44 35 41 2d 34 42 39 46 2d 34 43 46 34 2d 39 31 42 33 2d 35 36 32 43 41 38 44 30 33 33 31 33 7d } //4 {947E6D5A-4B9F-4CF4-91B3-562CA8D03313}
		$a_01_1 = {43 53 41 50 2e 44 4c 4c } //1 CSAP.DLL
		$a_01_2 = {43 53 42 42 2e 44 4c 4c } //1 CSBB.DLL
		$a_00_3 = {43 53 49 45 2e 44 4c 4c } //1 CSIE.DLL
		$a_00_4 = {49 45 5f 43 4c 52 53 43 48 2e 44 4c 4c } //3 IE_CLRSCH.DLL
		$a_01_5 = {45 78 63 6c 75 64 65 64 20 70 72 6f 6d 6f 20 63 6f 64 65 20 23 33 20 2d 20 6e 6f 74 20 69 6e 73 74 61 6c 6c 69 6e 67 20 49 45 2e } //2 Excluded promo code #3 - not installing IE.
		$a_01_6 = {43 6f 75 6c 64 20 6e 6f 74 20 64 65 6c 65 74 65 20 63 75 72 72 65 6e 74 20 74 68 77 61 72 74 65 72 20 70 6c 75 67 2d 69 6e 21 20 20 41 62 6f 72 74 69 6e 67 20 69 6e 73 74 61 6c 6c 2e } //1 Could not delete current thwarter plug-in!  Aborting install.
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*3+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1) >=11
 
}
rule BrowserModifier_Win32_ClearSearch_10{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 09 00 00 "
		
	strings :
		$a_01_0 = {4c 79 63 6f 73 5c 49 45 61 67 65 6e 74 } //3 Lycos\IEagent
		$a_01_1 = {68 74 74 70 3a 2f 2f 73 74 61 74 75 73 2e 63 6c 72 73 63 68 2e 63 6f 6d 2f 6c 6f 61 64 65 72 2f } //4 http://status.clrsch.com/loader/
		$a_00_2 = {43 6c 72 53 63 68 4c 6f 61 64 65 72 } //3 ClrSchLoader
		$a_00_3 = {43 53 49 45 2e 44 4c 4c } //2 CSIE.DLL
		$a_00_4 = {49 45 5f 43 6c 72 53 63 68 2e 44 4c 4c } //2 IE_ClrSch.DLL
		$a_01_5 = {7b 30 30 30 30 30 30 30 30 2d 30 30 30 30 2d 30 30 30 30 2d 30 30 30 30 2d 30 30 30 30 30 30 30 30 30 32 32 31 7d } //1 {00000000-0000-0000-0000-000000000221}
		$a_01_6 = {7b 37 45 35 33 43 31 42 31 2d 34 39 46 30 2d 34 39 38 42 2d 42 30 46 38 2d 42 34 42 42 46 39 32 34 41 34 41 43 7d } //2 {7E53C1B1-49F0-498B-B0F8-B4BBF924A4AC}
		$a_01_7 = {7b 30 30 30 30 30 30 30 30 2d 30 30 30 30 2d 30 30 30 30 2d 30 30 30 30 2d 30 30 30 30 30 30 30 30 30 32 34 30 7d } //1 {00000000-0000-0000-0000-000000000240}
		$a_01_8 = {7b 39 34 37 45 36 44 35 41 2d 34 42 39 46 2d 34 43 46 34 2d 39 31 42 33 2d 35 36 32 43 41 38 44 30 33 33 31 33 7d } //2 {947E6D5A-4B9F-4CF4-91B3-562CA8D03313}
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*4+(#a_00_2  & 1)*3+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*2+(#a_01_7  & 1)*1+(#a_01_8  & 1)*2) >=14
 
}
rule BrowserModifier_Win32_ClearSearch_11{
	meta:
		description = "BrowserModifier:Win32/ClearSearch,SIGNATURE_TYPE_PEHSTR,0f 00 0e 00 11 00 00 "
		
	strings :
		$a_01_0 = {73 6f 66 74 77 61 72 65 5c 67 72 69 70 5c } //1 software\grip\
		$a_01_1 = {30 30 30 30 30 30 30 30 2d 30 30 30 30 2d } //1 00000000-0000-
		$a_01_2 = {53 70 69 64 65 72 20 46 6f 75 6e 64 } //1 Spider Found
		$a_01_3 = {43 00 6c 00 65 00 61 00 72 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 20 00 } //1 Clear Search 
		$a_01_4 = {45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5f 00 53 00 65 00 72 00 76 00 65 00 72 00 } //1 Explorer_Server
		$a_01_5 = {26 00 61 00 64 00 64 00 72 00 3d 00 25 00 73 00 26 00 73 00 74 00 3d 00 25 00 64 00 26 00 65 00 67 00 3d 00 25 00 64 00 } //1 &addr=%s&st=%d&eg=%d
		$a_01_6 = {25 00 73 00 3f 00 67 00 75 00 69 00 64 00 3d 00 25 00 73 00 26 00 } //1 %s?guid=%s&
		$a_01_7 = {2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 73 00 75 00 6c 00 74 00 73 00 2e 00 61 00 73 00 70 00 78 00 3f 00 71 00 3d 00 25 00 73 00 } //1 .com/results.aspx?q=%s
		$a_01_8 = {72 00 65 00 66 00 65 00 72 00 65 00 72 00 3a 00 20 00 25 00 73 00 } //1 referer: %s
		$a_01_9 = {5c 49 6e 70 72 6f 63 53 65 72 76 65 72 33 32 } //1 \InprocServer32
		$a_01_10 = {41 70 61 72 74 6d 65 6e 74 } //1 Apartment
		$a_01_11 = {54 68 72 65 61 64 69 6e 67 4d 6f 64 65 6c } //1 ThreadingModel
		$a_01_12 = {52 65 73 6f 6c 76 65 72 20 47 6f 76 65 72 6e 6f 72 20 48 69 74 } //1 Resolver Governor Hit
		$a_01_13 = {5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 } //1 \Explorer\Browser Helper Objects
		$a_01_14 = {52 4f 4e 53 69 64 65 42 61 72 } //1 RONSideBar
		$a_01_15 = {55 52 4c 53 69 64 65 42 61 72 } //1 URLSideBar
		$a_01_16 = {43 79 63 6c 65 20 25 64 20 43 61 6d 70 61 69 67 6e } //1 Cycle %d Campaign
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1) >=14
 
}