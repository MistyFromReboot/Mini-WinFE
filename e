[1mdiff --git a/Projects/WinFE/Core/verify.script b/Projects/WinFE/Core/verify.script[m
[1mindex 36073d8..c28eab5 100644[m
[1m--- a/Projects/WinFE/Core/verify.script[m
[1m+++ b/Projects/WinFE/Core/verify.script[m
[36m@@ -4,8 +4,8 @@[m [mDescription=This is set as hidden and will be executed from another project scri[m
 Selected=False[m
 Level=-2[m
 Author=Misty[m
[31m-Version=20220524[m
[31m-Date=2022-05-24[m
[32m+[m[32mVersion=20220605[m[41m[m
[32m+[m[32mDate=2022-06-05[m[41m[m
 [m
 [boot.wim][m
 Echo,"Checking boot.wim for required information (build number, architecture, etc)..."[m
[36m@@ -203,11 +203,7 @@[m [mIf,%CodeBase%,Equal,10.0.16299,Set,%ERROR%,1[m
 If,%CodeBase%,Equal,10.0.17134,Set,%ERROR%,1[m
 If,%CodeBase%,Equal,10.0.17763,Set,%ERROR%,1[m
 If,%CodeBase%,Equal,10.0.18362,Set,%ERROR%,1[m
[31m-If,%CODEBASE%,Equal,10.0.18363,Set,%ERROR%,1[m
 If,%CODEBASE%,Equal,10.0.19041,Set,%ERROR%,1[m
[31m-If,%CODEBASE%,Equal,10.0.19042,Set,%ERROR%,1[m
[31m-If,%CODEBASE%,Equal,10.0.19043,Set,%ERROR%,1[m
[31m-If,%CODEBASE%,Equal,10.0.19044,Set,%ERROR%,1[m
 If,%CODEBASE%,Equal,10.0.22000,Set,%ERROR%,1[m
 If,%ERROR%,Equal,0,Begin[m
   Set,%Officially.Supported.OS%,NO,Global[m
[1mdiff --git a/Projects/WinFE/Finalise/winfe.script b/Projects/WinFE/Finalise/winfe.script[m
[1mindex 787d5f4..39047e2 100644[m
[1m--- a/Projects/WinFE/Finalise/winfe.script[m
[1m+++ b/Projects/WinFE/Finalise/winfe.script[m
[36m@@ -6,8 +6,8 @@[m [mLocked=True[m
 Mandatory=True[m
 Level=8[m
 Author=Misty[m
[31m-Version=20220528[m
[31m-Date=2022-05-28[m
[32m+[m[32mVersion=20220605[m[41m[m
[32m+[m[32mDate=2022-06-05[m[41m[m
 Credits=Colin Ramsden, Karl Morton, Royal Meier[m
 Interface=Interface1[m
 [m
[36m@@ -133,11 +133,7 @@[m [mIf,%CODEBASE%,Equal,10.0.16299,Set,%Settings%,3[m
 If,%CODEBASE%,Equal,10.0.17134,Set,%Settings%,3[m
 If,%CODEBASE%,Equal,10.0.17763,Set,%Settings%,3[m
 If,%CODEBASE%,Equal,10.0.18362,Set,%Settings%,3[m
[31m-If,%CODEBASE%,Equal,10.0.18363,Set,%Settings%,3[m
 If,%CODEBASE%,Equal,10.0.19041,Set,%Settings%,3[m
[31m-If,%CODEBASE%,Equal,10.0.19042,Set,%Settings%,3[m
[31m-If,%CODEBASE%,Equal,10.0.19043,Set,%Settings%,3[m
[31m-If,%CODEBASE%,Equal,10.0.19044,Set,%Settings%,3[m
 If,%CODEBASE%,Equal,10.0.22000,Set,%Settings%,3[m
 Set,%CONTINUE%,No[m
 If,%Settings%,Equal,0,Begin[m
[1mdiff --git a/Projects/WinFE/script.project b/Projects/WinFE/script.project[m
[1mindex 52c041f..31c9eed 100644[m
[1m--- a/Projects/WinFE/script.project[m
[1m+++ b/Projects/WinFE/script.project[m
[36m@@ -4,8 +4,8 @@[m [mSourceDir=[m
 TargetDir=[m
 Description=Windows Forensic Environment. [m
 Author=Misty[m
[31m-Version=20220528[m
[31m-Date=2022-05-28[m
[32m+[m[32mVersion=20220605[m[41m[m
[32m+[m[32mDate=2022-06-05[m[41m[m
 Locked=true[m
 Selected=None[m
 Mandatory=true[m
[36m@@ -30,7 +30,7 @@[m [mProject=Mini-WinFE[m
 %Target_system32%=%TargetDir%\WINDOWS\System32[m
 %USECACHE%=NEVER[m
 %CODEBASE%=unchecked[m
[31m-%PROJECT.DATE%=2022-05-28[m
[32m+[m[32m%PROJECT.DATE%=2022-06-05[m[41m[m
 %PROJECT.NAME%=Mini-WinFE[m
 %LANG3%=en-US[m
 %USE.TOOLS%=YES[m
[1mdiff --git a/readme.files/WinFE.css b/readme.files/WinFE.css[m
[1mindex e392a44..c6a3bdd 100644[m
[1m--- a/readme.files/WinFE.css[m
[1m+++ b/readme.files/WinFE.css[m
[36m@@ -16,7 +16,13 @@[m [mpadding-left: 30px;[m
 align: justify[m
 }[m
 [m
[32m+[m[32m.iso {[m[41m[m
[32m+[m[32mfont-size: 12px;[m[41m [m
[32m+[m[32m}[m[41m[m
 [m
[32m+[m[32m.anomaly {[m[41m[m
[32m+[m[32mbackground-color:#03fce7;[m[41m[m
[32m+[m[32m}[m[41m[m
 [m
 .file {[m
 color: slategrey;[m
[36m@@ -74,6 +80,6 @@[m [mcolor:mediumblue;[m
 table, th, td {[m
      border: 1px solid black;[m
    border-collapse: collapse;[m
[31m-    padding: 15px;[m
[32m+[m[32m    padding: 5px;[m[41m[m
 } [m
 [m
[1mdiff --git a/readme.files/acknowledgements.htm b/readme.files/acknowledgements.htm[m
[1mindex f5a10a1..f4df27f 100644[m
[1m--- a/readme.files/acknowledgements.htm[m
[1m+++ b/readme.files/acknowledgements.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm" selected="selected">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -123,6 +124,6 @@[m [mAnd a special thanks to the PEBakery Team members. This includes (in no particul[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html>[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m[m
 [m
  [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/builder.htm b/readme.files/builder.htm[m
[1mindex 1914bdb..dcadd68 100644[m
[1m--- a/readme.files/builder.htm[m
[1m+++ b/readme.files/builder.htm[m
[36m@@ -27,6 +27,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -92,5 +93,5 @@[m [mScreenshot of the <font class="file">Mini-WinFE</font> project running in <font[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html>[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m[m
  [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/diskmgr.htm b/readme.files/diskmgr.htm[m
[1mindex 5d09d33..561ba3e 100644[m
[1m--- a/readme.files/diskmgr.htm[m
[1m+++ b/readme.files/diskmgr.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm" selected="selected">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -180,4 +181,4 @@[m [mAnd below is the prompt displayed when selecting the <font class="file">Online</[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html> [m
\ No newline at end of file[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/instructions_pebakery.htm b/readme.files/instructions_pebakery.htm[m
[1mindex 7b5450c..6a9461d 100644[m
[1m--- a/readme.files/instructions_pebakery.htm[m
[1m+++ b/readme.files/instructions_pebakery.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -380,5 +381,5 @@[m [mA number of <font class="file">Applications</font> .scripts have an option to <f[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html>[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m[m
  [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/links.htm b/readme.files/links.htm[m
[1mindex a7b79ae..d3aae38 100644[m
[1m--- a/readme.files/links.htm[m
[1m+++ b/readme.files/links.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm" selected="selected">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -81,4 +82,4 @@[m [mDetail when selecting the <font class="file">Code</font> button. Click on <font[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html> [m
\ No newline at end of file[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/menu_system.htm b/readme.files/menu_system.htm[m
[1mindex 716ef88..2daa4c3 100644[m
[1m--- a/readme.files/menu_system.htm[m
[1m+++ b/readme.files/menu_system.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -174,4 +175,4 @@[m [mScreenshot of <font class="file">LaunchBar</font> running in <font class="file">[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html> [m
\ No newline at end of file[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/multiboot.htm b/readme.files/multiboot.htm[m
[1mindex da14d6f..25e8e19 100644[m
[1m--- a/readme.files/multiboot.htm[m
[1m+++ b/readme.files/multiboot.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -559,5 +560,5 @@[m [mpause[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html>[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m[m
  [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/not_in_wim.htm b/readme.files/not_in_wim.htm[m
[1mindex 9730a51..ed1c4a3 100644[m
[1m--- a/readme.files/not_in_wim.htm[m
[1m+++ b/readme.files/not_in_wim.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -156,5 +157,5 @@[m [mRunning the <font class="file">Find Programs</font> menu option will run a batch[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html>[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m[m
  [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/options.htm b/readme.files/options.htm[m
[1mindex 0a082dc..331511a 100644[m
[1m--- a/readme.files/options.htm[m
[1m+++ b/readme.files/options.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -205,5 +206,5 @@[m [mThis setting is ignored in <font class="file">WinPE</font> 5.x if system RAM is[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html>[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m[m
  [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/packages.htm b/readme.files/packages.htm[m
[1mindex 0aed53b..a232823 100644[m
[1m--- a/readme.files/packages.htm[m
[1m+++ b/readme.files/packages.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -100,4 +101,4 @@[m [mAfter entering/selecting a valid PATH, click on the <font class="file">Run Scrip[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html> [m
\ No newline at end of file[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/postconfig.htm b/readme.files/postconfig.htm[m
[1mindex 9444f8b..84165b0 100644[m
[1m--- a/readme.files/postconfig.htm[m
[1m+++ b/readme.files/postconfig.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -93,5 +94,5 @@[m [mThe <font class="file">PostConfig</font> &gt; <font class="file">Advanced Option[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html>[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m[m
  [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/project.htm b/readme.files/project.htm[m
[1mindex 9827813..64f2f80 100644[m
[1m--- a/readme.files/project.htm[m
[1m+++ b/readme.files/project.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -828,6 +829,6 @@[m [mThe scripts in this section cannot be executed during the build process and is d[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html>[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m[m
 [m
  [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/quick_pebakery.htm b/readme.files/quick_pebakery.htm[m
[1mindex e05ba95..78351c5 100644[m
[1m--- a/readme.files/quick_pebakery.htm[m
[1m+++ b/readme.files/quick_pebakery.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm" selected="selected">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -160,4 +161,4 @@[m [mThat's it. Provided the <font color="red">MediaCreation</font><font color="blue"[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html> [m
\ No newline at end of file[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/uefi.htm b/readme.files/uefi.htm[m
[1mindex 98abb4e..1b61f7b 100644[m
[1m--- a/readme.files/uefi.htm[m
[1m+++ b/readme.files/uefi.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -258,5 +259,5 @@[m [mand EFI Partitions</a></li>[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html>[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m[m
  [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/usage.htm b/readme.files/usage.htm[m
[1mindex 67de402..2299ce2 100644[m
[1m--- a/readme.files/usage.htm[m
[1m+++ b/readme.files/usage.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm" selected="selected">Quick Start - run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -290,4 +291,4 @@[m [mPlease ensure that you validate your <font class="file">Mini-WinFE</font> build[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html> [m
\ No newline at end of file[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/usb.htm b/readme.files/usb.htm[m
[1mindex 993a0ca..3d05044 100644[m
[1m--- a/readme.files/usb.htm[m
[1m+++ b/readme.files/usb.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -268,4 +269,4 @@[m [mAs an alternative to using <font class="file">DiskPart</font> or <font class="fi[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html> [m
\ No newline at end of file[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/winfe.htm b/readme.files/winfe.htm[m
[1mindex 300dfa3..f3e164f 100644[m
[1m--- a/readme.files/winfe.htm[m
[1m+++ b/readme.files/winfe.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -51,47 +52,12 @@[m [mThe Windows Forensic Environment (a.k.a. <font class="file">WinFE</font>) is a W[m
 [m
 [m
 <p>[m
[31m-<font class="file">WinFE</font> does not appear to be available as a commercial product from Microsoft. It is however relatively easy to create <font class="file">WinFE</font> for personal use from freely available tools. <font class="file">WinFE</font> is in essence a Windows Preinstallation Environment (<font class="file">WinPE</font>) with two minor registry edits that are applied to ensure that any hard disks are not automatically mounted during the <font class="file">WinPE</font>/<font class="file">WinFE</font> boot process - minimising the risk of the contamination of data/evidence. <font class="file">WinFE</font> is a lightweight version of Windows that can be used for many tasks - it is a complete, standalone operating system and will work independently of any other operating systems already installed.[m
[31m-[m
[31m-</p>[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-<p>[m
[31m-Troy Larson, Senior Forensic Examiner of Microsoft©, is credited with creating the Windows Forensic Environment. A Guide to Basic Computer Forensics is available <a class="external" target="_blank" href="http://download.microsoft.com/documents/uk/technet/downloads/technetmagazine/CompForensicsUKdesFIN2.pdf">here</a> and is worth reading for those new to the subject. [m
[31m-</p>[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-<p>[m
[31m-Tests utilsing <font class="file">WinFE</font> based on <font class="file">WinPE</font> versions 3.*, 4.* and 5.* are documented <a class="external" target="_blank" href="http://mistyprojects.co.uk/documents/WinFE/winfe.htm">here</a>. Based on the results, a recommendation is made to use <font class="file">WinFE</font> based on <font class="file">WinPE</font> 4.0 or newer, with the <i>SanPolicy</i> set as <b>3</b>. Based on results this appears to provide robust protection from any writes to the disk(s) being carried out. It is however possible with all versions of <font class="file">WinFE</font> to manually override write protection so care should be taken. Please note that the experiments did not include testing <font class="file">WinPE</font> 5.1 / 10.x builds - based on initial tests these builds appear to function similarly to <font class="file">WinPE</font> 5.0 builds, however this needs validating. [m
[32m+[m[32m<font class="file">WinFE</font> is a software write blocker used to prevent writes to storage devices. Usage may include gathering evidence on systems where hardware cannot be removed, triage investigations, or as an alternative to potentially expensive hardware write blockers.[m[41m [m
 </p>[m
 [m
 [m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
 <p>[m
[31m-It is strongly advised against using <font class="file">WinFE</font> 2.*/3.* without the Write Protect Tool as the simple act of browsing a mounted disk appears to perform a write action - as evidenced by the MD5 checks carried out before and after booting <font class="file">WinFE</font> in the tests. It was not possible to use <font class="file">DiskPart</font> to set a disk as <i>READONLY</i> despite documentation elsewhere stating that this command works. If you must use <font class="file">WinFE</font> based on earlier versions of <font class="file">WinPE</font> (2.*/3.*) then a recommendation is made to use Colin Ramsden's Write Protect Tool (see <a class="external" target="_blank" href="https://www.winfe.net/">here</a>) or <font class="file">DiskMgr</font> (included in the project) to ensure that all internal disks are set as read-only before any further action is carried out - just be aware that a disk signature will be written if one is not already present on the disk. [m
[32m+[m[32mTroy Larson, Senior Forensic Examiner of Microsoft©, is credited with creating the Windows Forensic Environment. <font class="file">WinFE</font> does not appear to be available as a commercial product from Microsoft. It is however relatively easy to create <font class="file">WinFE</font> for personal use from freely available tools. <font class="file">WinFE</font> is in essence a Windows Preinstallation Environment (<font class="file">WinPE</font> - see <a class="internal" target="_blank" href="winpe.htm">here</a>) with two minor registry edits that are applied to ensure that any hard disks are not automatically mounted during the <font class="file">WinPE</font>/<font class="file">WinFE</font> boot process - minimising the risk of the contamination of data/evidence. <font class="file">WinFE</font> is a lightweight version of Windows that can be used for many tasks - it is a complete, standalone operating system and will work independently of any other operating systems already installed.[m[41m[m
 </p>[m
 [m
 [m
[36m@@ -100,55 +66,4 @@[m [mIt is strongly advised against using <font class="file">WinFE</font> 2.*/3.* wit[m
 [m
 [m
 [m
[31m-[m
[31m-<p>[m
[31m-In something as critical as Forensic Examination, <font class="file">WinFE</font> needs validation and testing to ensure that no writes are performed on any evidence disk(s), or to at least be clear in what circumstances writes might be performed. The tests carried out were limited to 32-bit Windows Forensic Environments - other versions may behave differently. [m
[31m-</p>[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-<p>[m
[31m-<b><u>Warning</u></b>[m
[31m-</p>[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-<p>[m
[31m-The tests performed were limited to a virtual environment, however the builds appear to function in the same way on physical hardware. [m
[31m-</p>[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-<p>[m
[31m-There are a number of variables that need to be taken into consideration before using <font class="file">WinFE</font>. The <font class="file">WinFE</font>'s that were used during testing were modified <font class="file">boot.wim</font> files from Windows Installation Media - they were not created using the Windows Automated Installation Kit (<font class="file">WAIK</font>) or the Windows Assessment and Deployment Kit (<font class="file">ADK</font>). <font class="file">WAIK</font> or <font class="file">ADK</font> builds of <font class="file">WinFE</font> can contain different combinations of optional <i>"Packages"</i>, which might affect usage. [m
[31m-</p>[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-<p>[m
[31m-There are reports that dynamic disks are automatically mounted and writable with some builds of <font class="file">WinFE</font> (see <a class="external" target="_blank" href="http://reboot.pro/topic/15883-winfe-dynamic-disk-problem/">here</a> and <a class="external" target="_blank" href="http://reboot.pro/topic/18882-some-questions-and-sanpolicy-values/">here</a>).[m
[31m-</p>[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html> [m
\ No newline at end of file[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m [m
\ No newline at end of file[m
[1mdiff --git a/readme.files/winpe.htm b/readme.files/winpe.htm[m
[1mindex e3fc8fc..7dc41bb 100644[m
[1m--- a/readme.files/winpe.htm[m
[1m+++ b/readme.files/winpe.htm[m
[36m@@ -26,6 +26,7 @@[m
 <option value="quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="usage.htm">Quick Start - Run...</option>  [m
 <option value="diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="links.htm">Download\Links</option>  [m
 <option value="acknowledgements.htm">Acknowledgements</option>  [m
 <option value="" disabled></option> [m
[36m@@ -56,7 +57,7 @@[m [mWhen a computer is running (booted from) a full version of Windows certain files[m
 [m
 [m
 <p class="break3em">[m
[31m-There are two distinct methods for booting <font class="file">WinPE</font> - RAM Boot and Flat Boot. RAM Boot is the most common method and anyone who has installed Windows Vista/7/8/8.1 will already (perhaps unknowingly) have used it. Microsoft recommend a minimum of 512 MB RAM in order to run a RAM booted version of <font class="file">WinPE</font> - in own tests it was possible to boot some versions of <font class="file">WinPE</font> with 256 MB RAM. For more details about RAM and Flat boot <font class="file">WinPE</font> and RAM requirements, please see <a class="external" target="_blank" href="http://mistyprojects.co.uk/documents/WinPE.RAM/winpe.ram.usage.htm">here</a>.[m
[32m+[m[32mThere are two distinct methods for booting <font class="file">WinPE</font> - RAM Boot and Flat Boot. RAM Boot is the most common method and anyone who has installed Windows Vista/7/8/8.1 will already (perhaps unknowingly) have used it. Microsoft recommend a minimum of 512 MB RAM in order to run a RAM booted version of <font class="file">WinPE</font> - in tests it was possible to boot some versions of <font class="file">WinPE</font> with 256 MB RAM. For more details about RAM and Flat boot <font class="file">WinPE</font> and RAM requirements, please see <a class="external" target="_blank" href="http://mistyprojects.co.uk/documents/WinPE.RAM/winpe.ram.usage.htm">here</a>.[m[41m[m
 </p>[m
 [m
 [m
[36m@@ -108,15 +109,14 @@[m [mWindows Operating Systems use a numbering format for identification purposes - t[m
 <p class="break3em">[m
 <font class="file">WinPE</font> versions include -[m
 [m
[31m-<p>[m
 <table style="width:90%">[m
   <col width="15%">[m
[31m-  <col width="30%">[m
[31m-  <col width="55%">[m
[31m-  <tr>[m
[32m+[m[32m  <col width="25%">[m[41m[m
[32m+[m[32m  <col width="60%">[m[41m[m
[32m+[m[32m  <tr style="background-color:#E2A9F3;color:black;">[m[41m[m
     <th>WinPE</th>[m
     <th>Major.Minor.Build</th> [m
[31m-    <th>OS</th> [m
[32m+[m[32m    <th>Windows Operating System source</th>[m[41m [m
   </tr>[m
   <tr>[m
     <td>2.0</td>[m
[36m@@ -161,16 +161,36 @@[m [mWindows Operating Systems use a numbering format for identification purposes - t[m
 [m
 [m
 <p class="break3em">[m
[31m-Following the release of Windows 10, <font class="file">WinPE</font> versions are also identifed by MajorVersion.MinorVersion.Build numbers that correspond with the Windows 10 build from which they were compiled. WinPE 10.0.16299 for example corresponds with Windows 10.0.16299 (aka Version 1709 / Fall Creators Update) -[m
[32m+[m[32mFollowing the release of Windows 10, <font class="file">WinPE</font> versions are identifed by MajorVersion.MinorVersion.Build numbers that generally correspond with the Windows 10 build from which they were compiled. WinPE 10.0.16299 for example corresponds with Windows 10.0.16299 (aka Version 1709 / Fall Creators Update).[m[41m [m
[32m+[m[32m</p>[m[41m[m
[32m+[m[41m[m
[32m+[m[41m[m
[32m+[m[32m<p class="break3em">[m[41m[m
[32m+[m[32mThere are some exceptions to this rule as the <font class="file">WinPE</font> included in Windows 10.0.18362 (May 2019 Update (1903)) and 10.0.18363 (November 2019 Update (1909)) sources are both based on <font class="file">WinPE</font> 10.0.18362.[m[41m [m
[32m+[m[32m</p>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m<p class="break3em">[m[41m[m
[32m+[m[32mAnother example of the same <font class="file">WinPE</font> version being included in multiple Windows sources is <font class="file">WinPE</font> 10.0.19041. The following Windows 10 sources all include/use <font class="file">WinPE</font> 10.0.19041 -[m[41m [m
[32m+[m[32m    <ul>[m[41m[m
[32m+[m	[32m<li>May 2020 Update (10.0.19041 / 2004)</li>[m[41m[m
[32m+[m[32m        <li>October 2020 Update (10.0.19042 / 20H2)</li>[m[41m[m
[32m+[m[32m        <li>May 2021 Update (10.0.19043 / 21H1)</li>[m[41m [m
[32m+[m[32m        <li>November 2021 Update (10.0.19044 / 21H2)</li>[m[41m[m
[32m+[m[32m    </ul>[m[41m[m
[32m+[m[32m</p>[m[41m[m
[32m+[m[41m[m
[32m+[m[41m[m
[32m+[m[32m<p class="break3em">[m[41m[m
[32m+[m[32m<font class="file">WinPE</font> 10.* versions include -[m[41m[m
 [m
 <table style="width:90%">[m
[31m-  <col width="15%">[m
[31m-  <col width="30%">[m
[31m-  <col width="55%">[m
[31m-  <tr>[m
[31m-    <th>Build</th>[m
[31m-    <th>Version</th> [m
[31m-    <th>Name</th> [m
[32m+[m[32m  <col width="20%">[m[41m[m
[32m+[m[32m  <col width="20%">[m[41m[m
[32m+[m[32m  <col width="60%">[m[41m[m
[32m+[m[32m  <tr style="background-color:#E2A9F3;color:black;">[m[41m[m
[32m+[m[32m    <th>WinPE Build</th>[m[41m[m
[32m+[m[32m    <th>WinPE Version</th>[m[41m [m
[32m+[m[32m    <th>Windows Operating System source</th>[m[41m [m
   </tr>[m
   <tr>[m
     <td>10.0.10240</td>[m
[36m@@ -210,34 +230,16 @@[m [mFollowing the release of Windows 10, <font class="file">WinPE</font> versions ar[m
   <tr>[m
     <td>10.0.18362</td>[m
     <td>1903</td>[m
[31m-    <td>May 2019 Update</td> [m
[31m-  </tr>  [m
[31m-  <tr>[m
[31m-    <td>10.0.18363</td>[m
[31m-    <td>1909</td>[m
[31m-    <td>November 2019 Update</td> [m
[32m+[m[32m    <td>May 2019 Update (Windows 10.0.18362 / 1903)<br/>November 2019 Update (10.0.18363 / 1909)</td>[m[41m [m
   </tr>  [m
   <tr>[m
     <td>10.0.19041</td>[m
     <td>2004</td>[m
[31m-    <td>May 2020 Update</td> [m
[31m-  </tr>  [m
[31m-  <tr>[m
[31m-    <td>10.0.19042</td>[m
[31m-    <td>20H2</td>[m
[31m-    <td>October 2020 Update</td> [m
[31m-  </tr>  [m
[31m-  <tr>[m
[31m-    <td>10.0.19043</td>[m
[31m-    <td>21H1</td>[m
[31m-    <td>May 2021 Update</td> [m
[32m+[m[32m    <td>May 2020 Update (10.0.19041 / 2004)[m[41m[m
[32m+[m[32m        <br/>October 2020 Update (10.0.19042 / 20H2)[m[41m[m
[32m+[m[32m        <br/>May 2021 Update (10.0.19043 / 21H1)[m[41m [m
[32m+[m[32m        <br/>November 2021 Update (10.0.19044 / 21H2)</td>[m[41m[m
   </tr>  [m
[31m-  <tr>[m
[31m-    <td>10.0.19044</td>[m
[31m-    <td>21H2</td>[m
[31m-    <td>November 2021 Update</td> [m
[31m-  </tr>  [m
[31m-[m
 </table>[m
 </p>[m
 [m
[36m@@ -249,4 +251,4 @@[m [mThere are 32 bit and 64 bit versions of all of the above <font class="file">WinP[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html> [m
\ No newline at end of file[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m [m
\ No newline at end of file[m
[1mdiff --git a/readme.html b/readme.html[m
[1mindex 94df205..cc3d078 100644[m
[1m--- a/readme.html[m
[1m+++ b/readme.html[m
[36m@@ -32,6 +32,7 @@[m
 <option value="readme.files/quick_pebakery.htm">Quick Start - Build...</option>  [m
 <option value="readme.files/usage.htm">Quick Start - Run...</option>  [m
 <option value="readme.files/diskmgr.htm">DiskMgr</option>  [m
[32m+[m[32m<option value="readme.files/winfe_tests.htm">WinFE Tests</option>[m[41m  [m
 <option value="readme.files/links.htm">Download\Links</option>  [m
 <option value="readme.files/acknowledgements.htm">Acknowledgements</option>   [m
 <option value="" disabled></option> [m
[36m@@ -176,12 +177,17 @@[m [mThis project has been internally tested. Some of the current features include -[m
 [m
 [m
 <ol start="17"><li>[m
[32m+[m[32m<a class="internal" href="readme.files/winfe_tests.htm">WinFE Tests</a> - results from a series of tests exploring circumtances in which unplanned disk writes may occur in <font class="file">WinFE</font>.[m[41m [m
[32m+[m[32m</li></ol>[m[41m[m
[32m+[m[41m[m
[32m+[m[41m[m
[32m+[m[32m<ol start="18"><li>[m[41m[m
 <a class="internal" href="readme.files/links.htm">Download/Links</a>[m
 </li></ol>[m
 [m
 [m
 [m
[31m-<ol start="18"><li>[m
[32m+[m[32m<ol start="19"><li>[m[41m[m
 <a class="internal" href="readme.files/acknowledgements.htm">Acknowledgements</a>[m
 </li></ol>[m
 [m
[36m@@ -189,6 +195,6 @@[m [mThis project has been internally tested. Some of the current features include -[m
 [m
 [m
 [m
[31m-<p class="breaktop"><font class="file">Document date - 28<sup>th</sup> May 2022</font></p></font></body></html>[m
[32m+[m[32m<p class="breaktop"><font class="file">Document date - 5<sup>th</sup> June 2022</font></p></font></body></html>[m[41m[m
 [m
 [m
