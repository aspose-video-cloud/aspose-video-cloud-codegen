del /S /Q "c:\tmp\csharp"
java -jar codegen\swagger-codegen-cli-2.3.0.jar generate -i spec\asposeforcloud_video_csharp.json -l csharp -t codegen\Templates\csharp -o c:/tmp/csharp/ -c codegen\config.json 

codegen\Tools\SplitCSharpCodeFile.exe C:\tmp\csharp\src\Aspose.Video.Cloud.Sdk\Api\VideoApi.cs C:\tmp\csharp\src\Aspose.Video.Cloud.Sdk\Model\Requests\

del /S /Q "SDKs\NET\Aspose.Video.Cloud.Sdk\Model"
del /S /Q "SDKs\NET\Aspose.Video.Cloud.Sdk\Api\VideoApi.cs"

xcopy "c:\tmp\csharp\src\Aspose.Video.Cloud.Sdk\Model" "SDKs\NET\Aspose.Video.Cloud.Sdk\Model" /E
xcopy "c:\tmp\csharp\src\Aspose.Video.Cloud.Sdk\Api" "SDKs\NET\Aspose.Video.Cloud.Sdk\Api" /E