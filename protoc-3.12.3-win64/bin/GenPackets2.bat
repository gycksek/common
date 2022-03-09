protoc.exe -I=./ --csharp_out=./ ./Protocol.proto
IF ERRORLEVEL 1 PAUSE

start ../../../Server/Server/PacketGenerator2/bin/Debug/net6.0/PacketGenerator2.exe ./Protocol.proto

xcopy /Y Protocol.cs "../../../test/test/Assets/Scripts/Packet"
xcopy /Y Protocol.cs "../../../Server/Server/Server/"
xcopy /Y ClientPacketManager2.cs "../../../test/test/Assets/Scripts/Packet"
xcopy /Y ServerPacketManager2.cs "../../../Server/Server/Server/"


rem start ../../PacketGenerator/bin/Debug/net6.0/PacketGenerator.exe ../../PacketGenerator/PDL.xml
rem xcopy /y GenPackets.cs "../../DummyClient"
rem xcopy /y GenPackets.cs "../../Server"
rem xcopy /y GenPackets.cs "../../../../test/test/Assets/Scripts/DummyClient"

rem xcopy /y ClientPacketManager.cs "../../DummyClient"
rem xcopy /y ClientPacketManager.cs "../../../../test/test/Assets/Scripts/DummyClient"
rem xcopy /y ServerPacketManager.cs "../../Server"