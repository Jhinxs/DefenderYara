
rule Trojan_Win32_Adclicker{
	meta:
		description = "Trojan:Win32/Adclicker,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 15 00 00 "
		
	strings :
		$a_01_0 = {62 61 69 64 75 62 61 2e 44 4c 4c } //4 baiduba.DLL
		$a_01_1 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 69 65 73 65 74 2e 69 6e 69 } //4 C:\WINDOWS\system32\ieset.ini
		$a_01_2 = {72 65 66 75 72 6c 3d } //2 refurl=
		$a_01_3 = {65 78 69 64 3d } //2 exid=
		$a_01_4 = {72 65 67 55 52 4c 3d } //2 regURL=
		$a_01_5 = {73 65 6f 3d } //2 seo=
		$a_01_6 = {73 6d 73 69 64 3d } //2 smsid=
		$a_01_7 = {3d 61 69 79 75 } //4 =aiyu
		$a_01_8 = {77 77 77 2e 31 33 31 33 37 37 2e 63 6f 6d 3f 61 63 63 65 63 74 } //2 www.131377.com?accect
		$a_01_9 = {61 73 69 61 66 69 6e 64 2e 63 6f 6d 2f 67 6f 2f 67 } //2 asiafind.com/go/g
		$a_01_10 = {73 68 6f 70 2e 37 63 76 2e 63 6f 6d 2f 69 6e 64 65 78 2e 70 68 70 3f 61 73 73 74 66 72 6f 6d 3d } //2 shop.7cv.com/index.php?asstfrom=
		$a_01_11 = {63 6e 74 2e 7a 68 61 6f 70 69 6e 2e 63 6f 6d 2f 4d 61 72 6b 65 74 2f 77 68 6f 6c 65 5f 63 6f 75 6e 74 65 72 2e 6a 73 70 3f 73 69 64 3d } //2 cnt.zhaopin.com/Market/whole_counter.jsp?sid=
		$a_01_12 = {66 3d 68 74 74 70 3a 2f 2f 77 77 77 2e 6e 65 74 78 62 6f 79 2e 63 6f 6d 2f } //2 f=http://www.netxboy.com/
		$a_01_13 = {68 74 74 70 3a 2f 2f 67 6f 2e 35 38 2e 63 6f 6d 2f 3f 66 3d } //2 http://go.58.com/?f=
		$a_01_14 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6e 6f 77 2e 63 6e 2f 3f 53 43 50 4d 43 49 44 3d } //2 http://www.now.cn/?SCPMCID=
		$a_01_15 = {77 77 77 2e 6a 6f 79 6f 2e 63 6f 6d 2f 64 65 66 61 75 6c 74 2e 61 73 70 3f 73 6f 75 72 63 65 3d 61 64 34 61 6c 6c } //2 www.joyo.com/default.asp?source=ad4all
		$a_01_16 = {75 6e 69 6f 6e 2e 39 39 6a 6b 2e 63 6f 6d 2f 78 66 32 30 30 2f 63 6c 69 63 6b 2e 61 73 70 3f 75 3d 31 26 75 6e 61 6d 65 3d } //2 union.99jk.com/xf200/click.asp?u=1&uname=
		$a_01_17 = {77 77 77 2e 31 33 31 33 37 37 2e 63 6f 6d 3f 61 63 63 65 63 74 3d } //2 www.131377.com?accect=
		$a_01_18 = {77 77 77 2e 63 6e 63 61 72 64 2e 63 6f 6d 2f 63 6e 6c 69 6e 6b 2e 61 73 70 3f } //2 www.cncard.com/cnlink.asp?
		$a_01_19 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 3a 2f 2f 77 77 77 2e 68 61 6f 73 6f 66 74 2e 6e 65 74 2f } //5 Referer: http://www.haosoft.net/
		$a_01_20 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 3a 2f 2f 77 77 77 2e 6e 65 74 78 62 6f 79 2e 63 6f 6d 2f } //5 Referer: http://www.netxboy.com/
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*4+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*4+(#a_01_8  & 1)*2+(#a_01_9  & 1)*2+(#a_01_10  & 1)*2+(#a_01_11  & 1)*2+(#a_01_12  & 1)*2+(#a_01_13  & 1)*2+(#a_01_14  & 1)*2+(#a_01_15  & 1)*2+(#a_01_16  & 1)*2+(#a_01_17  & 1)*2+(#a_01_18  & 1)*2+(#a_01_19  & 1)*5+(#a_01_20  & 1)*5) >=22
 
}
rule Trojan_Win32_Adclicker_2{
	meta:
		description = "Trojan:Win32/Adclicker,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 19 00 00 "
		
	strings :
		$a_01_0 = {2f 75 70 64 61 74 65 2f 71 71 2e 64 6c 6c } //2 /update/qq.dll
		$a_01_1 = {43 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 31 30 32 38 5c 71 71 64 6c 6c 73 2e 64 6c 6c } //2 C:\windows\system32\1028\qqdlls.dll
		$a_01_2 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 69 65 73 65 74 2e 69 6e 69 } //2 C:\WINDOWS\system32\ieset.ini
		$a_01_3 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 69 65 62 68 6f 73 65 74 2e 69 6e 69 } //2 C:\WINDOWS\system32\iebhoset.ini
		$a_01_4 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 62 61 69 64 75 62 61 5c 62 61 69 64 75 62 61 2e 64 6c 6c } //2 C:\WINDOWS\baiduba\baiduba.dll
		$a_01_5 = {2f 75 70 64 61 74 65 2f 6e 65 77 63 6c 69 63 6b 75 70 64 61 74 65 2e 65 78 65 } //2 /update/newclickupdate.exe
		$a_01_6 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 61 70 70 6c 6f 67 5c 6e 65 74 75 73 65 72 33 32 2e 6c 73 } //2 C:\WINDOWS\system32\applog\netuser32.ls
		$a_01_7 = {2f 75 70 64 61 74 65 2f 6e 65 74 75 73 65 72 33 32 2e 64 6c 6c } //2 /update/netuser32.dll
		$a_01_8 = {76 61 72 20 61 64 5f 75 72 6c 20 3d } //2 var ad_url =
		$a_01_9 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 77 77 77 2e 35 31 36 32 36 2e 6e 65 74 } //2 User-Agent: www.51626.net
		$a_01_10 = {63 68 6b 5f 69 64 3d 27 } //2 chk_id='
		$a_01_11 = {2f 64 6f 77 6e 6d 6d 2f } //2 /downmm/
		$a_01_12 = {2f 61 64 5f 62 63 61 73 74 2f 68 74 6d 6c 5f 73 68 6f 77 2e 6a 73 3f 61 3d } //2 /ad_bcast/html_show.js?a=
		$a_01_13 = {69 6e 73 74 61 6c 6c 68 6f 6f 6b } //2 installhook
		$a_01_14 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 52 67 53 65 63 74 42 6b 2e 30 30 31 } //2 C:\WINDOWS\system32\RgSectBk.001
		$a_01_15 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 73 68 61 64 6f 77 } //2 C:\WINDOWS\system32\shadow
		$a_01_16 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 4e 54 2e 53 59 53 } //2 C:\WINDOWS\system32\drivers\NT.SYS
		$a_01_17 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 6e 74 64 69 73 6b 2e 73 79 73 } //2 C:\WINDOWS\system32\drivers\ntdisk.sys
		$a_01_18 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 4c 53 52 43 53 59 53 2e 53 59 53 } //2 C:\WINDOWS\system32\drivers\LSRCSYS.SYS
		$a_01_19 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 78 73 62 69 64 65 2e 73 79 73 } //2 C:\WINDOWS\system32\drivers\xsbide.sys
		$a_01_20 = {5f 61 64 76 69 64 3d } //2 _advid=
		$a_01_21 = {26 5f 75 6e 69 6f 6e 69 64 3d } //2 &_unionid=
		$a_01_22 = {26 5f 73 69 74 65 69 64 3d } //2 &_siteid=
		$a_01_23 = {62 61 69 62 75 5f 70 67 } //2 baibu_pg
		$a_01_24 = {2f 62 64 75 6e 2e 62 73 63 3f 74 6e 3d } //2 /bdun.bsc?tn=
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2+(#a_01_9  & 1)*2+(#a_01_10  & 1)*2+(#a_01_11  & 1)*2+(#a_01_12  & 1)*2+(#a_01_13  & 1)*2+(#a_01_14  & 1)*2+(#a_01_15  & 1)*2+(#a_01_16  & 1)*2+(#a_01_17  & 1)*2+(#a_01_18  & 1)*2+(#a_01_19  & 1)*2+(#a_01_20  & 1)*2+(#a_01_21  & 1)*2+(#a_01_22  & 1)*2+(#a_01_23  & 1)*2+(#a_01_24  & 1)*2) >=20
 
}
rule Trojan_Win32_Adclicker_3{
	meta:
		description = "Trojan:Win32/Adclicker,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {67 6f 6f 67 6c 65 2e 63 6e 2f 73 65 61 72 63 68 3f } //1 google.cn/search?
		$a_01_2 = {67 61 6d 65 79 65 73 2e 63 6f 6d } //1 gameyes.com
		$a_01_3 = {49 45 48 65 6c 70 65 72 2e 64 6c 6c } //1 IEHelper.dll
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 65 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 } //1 Software\Microsoft\Windows\CurrentVersion\explorer\Browser Helper Objects
		$a_01_5 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //1 UnhookWindowsHookEx
		$a_01_6 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 GetClipboardData
		$a_01_7 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
rule Trojan_Win32_Adclicker_4{
	meta:
		description = "Trojan:Win32/Adclicker,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {67 6f 6f 67 6c 65 2e 63 6f 6d } //1 google.com
		$a_01_1 = {72 65 70 6c 2e 64 6c 6c } //1 repl.dll
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c 7b 46 46 46 46 46 46 46 46 2d 42 42 42 42 2d 34 31 34 36 2d 38 36 46 44 2d 41 37 32 32 45 38 41 42 33 34 38 39 7d } //1 Software\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{FFFFFFFF-BBBB-4146-86FD-A722E8AB3489}
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_4 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //1 GetWindowsDirectoryA
		$a_01_5 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}