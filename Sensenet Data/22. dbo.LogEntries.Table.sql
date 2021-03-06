USE [SensenetPercobaan]
GO
SET IDENTITY_INSERT [dbo].[LogEntries] ON 

INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (1, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 2, N'/Root', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:04.723' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:04</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>2</Id>
    <Path>/Root</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(2)|</OldAcl>
    <NewAcl>+(2)|+(7):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'ded466f3-cbb8-4a9f-94c0-b59fa3b3bf4f')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (2, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1088, N'/Root/(apps)', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.313' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1088</Id>
    <Path>/Root/(apps)</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1088)|</OldAcl>
    <NewAcl>+(1088)|+(1191):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'8d1fbabb-8b11-49e3-92c4-72937767dd5f')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (3, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1090, N'/Root/(apps)/ContentList/DeleteField', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.330' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1090</Id>
    <Path>/Root/(apps)/ContentList/DeleteField</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1090)|</OldAcl>
    <NewAcl>+(1090)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'42877969-966f-4f1b-952a-c04bb13331ff')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (4, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1091, N'/Root/(apps)/ContentList/EditField', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.347' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1091</Id>
    <Path>/Root/(apps)/ContentList/EditField</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1091)|</OldAcl>
    <NewAcl>+(1091)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'3106f944-74bd-4db8-a4f4-d3faa1032851')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (5, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1092, N'/Root/(apps)/ContentList/ExchangeService.asmx', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.367' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1092</Id>
    <Path>/Root/(apps)/ContentList/ExchangeService.asmx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1092)|</OldAcl>
    <NewAcl>+(1092)|+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'2e0967b9-e585-46f3-957b-66cc04c1e1f6')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (6, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1094, N'/Root/(apps)/File/CheckPreviews', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.383' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1094</Id>
    <Path>/Root/(apps)/File/CheckPreviews</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1094)|</OldAcl>
    <NewAcl>+(1094)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'78b864d4-b48c-49f3-bedc-65bd4c78df0f')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (7, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1095, N'/Root/(apps)/File/EditInMicrosoftOffice', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.400' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1095</Id>
    <Path>/Root/(apps)/File/EditInMicrosoftOffice</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1095)|</OldAcl>
    <NewAcl>+(1095)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'ca415715-8bdb-4607-ad75-259cdc2f5ee3')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (8, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1096, N'/Root/(apps)/File/ExportToPdf', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.417' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1096</Id>
    <Path>/Root/(apps)/File/ExportToPdf</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1096)|</OldAcl>
    <NewAcl>+(1096)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'795ab997-b2c7-4b2a-a9b4-6133ac7c942a')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (9, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1097, N'/Root/(apps)/File/GetPageCount', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.433' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1097</Id>
    <Path>/Root/(apps)/File/GetPageCount</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1097)|</OldAcl>
    <NewAcl>+(1097)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'466a2e6f-8439-43a2-b1fd-67d3f88a63da')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (10, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1098, N'/Root/(apps)/File/GetPreviewsFolder', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.447' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1098</Id>
    <Path>/Root/(apps)/File/GetPreviewsFolder</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1098)|</OldAcl>
    <NewAcl>+(1098)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'd486f795-e75c-4613-a7ef-8c6064ef30d7')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (11, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1099, N'/Root/(apps)/File/PreviewAvailable', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.467' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1099</Id>
    <Path>/Root/(apps)/File/PreviewAvailable</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1099)|</OldAcl>
    <NewAcl>+(1099)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'48c5bb4d-2e59-4802-a87c-6a1b859696ea')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (12, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1100, N'/Root/(apps)/File/RegeneratePreviews', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.480' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1100</Id>
    <Path>/Root/(apps)/File/RegeneratePreviews</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1100)|</OldAcl>
    <NewAcl>+(1100)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'1e87b005-140c-44cd-aa71-939a46495055')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (13, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1101, N'/Root/(apps)/File/SetPageCount', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.500' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1101</Id>
    <Path>/Root/(apps)/File/SetPageCount</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1101)|</OldAcl>
    <NewAcl>+(1101)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'5f6bcbd3-2990-4026-9878-9334e4410b7f')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (14, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1102, N'/Root/(apps)/File/SetPreviewStatus', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.513' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1102</Id>
    <Path>/Root/(apps)/File/SetPreviewStatus</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1102)|</OldAcl>
    <NewAcl>+(1102)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'469fde56-4bfa-424f-a3d5-a8fd0b6849c9')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (15, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1103, N'/Root/(apps)/File/UploadResume', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.533' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1103</Id>
    <Path>/Root/(apps)/File/UploadResume</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1103)|</OldAcl>
    <NewAcl>+(1103)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'1a05298f-64ec-4ad9-bc1c-2e1a155fe57d')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (16, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1105, N'/Root/(apps)/Folder/CopyBatch', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.547' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1105</Id>
    <Path>/Root/(apps)/Folder/CopyBatch</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1105)|</OldAcl>
    <NewAcl>+(1105)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'caeefa5f-fb46-48be-8a9c-738d34609724')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (17, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1106, N'/Root/(apps)/Folder/DeleteBatch', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.567' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1106</Id>
    <Path>/Root/(apps)/Folder/DeleteBatch</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1106)|</OldAcl>
    <NewAcl>+(1106)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7f0c68b0-b1f0-4845-b917-812e3eed605b')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (18, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1107, N'/Root/(apps)/Folder/ExportToCsv', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.587' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1107</Id>
    <Path>/Root/(apps)/Folder/ExportToCsv</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1107)|</OldAcl>
    <NewAcl>+(1107)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'3e4916be-5c0e-4dae-b2c9-40c02e4f8208')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (19, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1108, N'/Root/(apps)/Folder/MoveBatch', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.603' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1108</Id>
    <Path>/Root/(apps)/Folder/MoveBatch</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1108)|</OldAcl>
    <NewAcl>+(1108)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'0cca7690-91c3-4e00-9eb8-bec22a855f7c')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (20, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1109, N'/Root/(apps)/Folder/Upload', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.620' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1109</Id>
    <Path>/Root/(apps)/Folder/Upload</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1109)|</OldAcl>
    <NewAcl>+(1109)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'96fe9145-1eac-455d-a79e-b585143aea3e')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (21, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1111, N'/Root/(apps)/GenericContent/AddAllowedChildTypes', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.637' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1111</Id>
    <Path>/Root/(apps)/GenericContent/AddAllowedChildTypes</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1111)|</OldAcl>
    <NewAcl>+(1111)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'12b13485-7d90-4843-83fd-35879dcc5816')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (22, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1112, N'/Root/(apps)/GenericContent/GetRelatedItemsOneLevel', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.653' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1112</Id>
    <Path>/Root/(apps)/GenericContent/GetRelatedItemsOneLevel</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1112)|</OldAcl>
    <NewAcl>+(1112)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7825a302-ef8a-46cb-b582-cfda7331a7f3')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (23, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1113, N'/Root/(apps)/GenericContent/GetRelatedPermissions', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.673' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1113</Id>
    <Path>/Root/(apps)/GenericContent/GetRelatedPermissions</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1113)|</OldAcl>
    <NewAcl>+(1113)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'b26f1603-5f9c-41c7-a57b-344afd8ae343')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (24, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1114, N'/Root/(apps)/GenericContent/GetTemplateScript', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.690' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1114</Id>
    <Path>/Root/(apps)/GenericContent/GetTemplateScript</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1114)|</OldAcl>
    <NewAcl>+(1114)|+(8):_______________________________________________+________________,+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'676465d4-b8b5-4b15-bfcf-7dffe48db75c')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (25, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1115, N'/Root/(apps)/GenericContent/HasPermission', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.707' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1115</Id>
    <Path>/Root/(apps)/GenericContent/HasPermission</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1115)|</OldAcl>
    <NewAcl>+(1115)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'e6697375-7b2e-4617-b4b8-a8f90c9ba3de')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (26, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1116, N'/Root/(apps)/GenericContent/Login', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.723' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1116</Id>
    <Path>/Root/(apps)/GenericContent/Login</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1116)|</OldAcl>
    <NewAcl>+(1116)|+(6):_______________________________________________+________________,+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'be4c27d7-6f3c-4c7b-9655-344634978116')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (27, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1117, N'/Root/(apps)/GenericContent/Logout', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.743' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1117</Id>
    <Path>/Root/(apps)/GenericContent/Logout</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1117)|</OldAcl>
    <NewAcl>+(1117)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'1c1b2fdc-8b9c-4d27-8295-231a299233a8')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (28, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1118, N'/Root/(apps)/GenericContent/MoveTo', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.760' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1118</Id>
    <Path>/Root/(apps)/GenericContent/MoveTo</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1118)|</OldAcl>
    <NewAcl>+(1118)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'a49fcac4-6699-43a5-b428-f540b5f25d6c')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (29, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1119, N'/Root/(apps)/GenericContent/Publish', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.777' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1119</Id>
    <Path>/Root/(apps)/GenericContent/Publish</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1119)|</OldAcl>
    <NewAcl>+(1119)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'cf22d16d-6c02-4f8a-8a18-e5004ee60351')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (30, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1123, N'/Root/(apps)/GenericContent/Reject', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.793' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1123</Id>
    <Path>/Root/(apps)/GenericContent/Reject</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1123)|</OldAcl>
    <NewAcl>+(1123)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'4b0930bd-0fbf-472e-a45e-3eddd4bc071e')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (31, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1124, N'/Root/(apps)/GenericContent/GetRelatedItems', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.813' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1124</Id>
    <Path>/Root/(apps)/GenericContent/GetRelatedItems</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1124)|</OldAcl>
    <NewAcl>+(1124)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'3837ed3d-a97d-4331-8edd-a6004d6878cf')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (32, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1125, N'/Root/(apps)/GenericContent/RemoveAllAspects', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.830' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1125</Id>
    <Path>/Root/(apps)/GenericContent/RemoveAllAspects</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1125)|</OldAcl>
    <NewAcl>+(1125)|+(7):_____________________________________________+_+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'e441ca5c-3603-4fea-8d3c-667dbf65aaba')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (33, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1127, N'/Root/(apps)/GenericContent/RemoveAspects', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.847' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1127</Id>
    <Path>/Root/(apps)/GenericContent/RemoveAspects</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1127)|</OldAcl>
    <NewAcl>+(1127)|+(7):_____________________________________________+_+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'bc1a0583-0f6c-499d-8ba7-b36c74279c74')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (34, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1128, N'/Root/(apps)/GenericContent/RemoveFields', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.863' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1128</Id>
    <Path>/Root/(apps)/GenericContent/RemoveFields</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1128)|</OldAcl>
    <NewAcl>+(1128)|+(7):_____________________________________________+_+___________+++++,+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7b9e8fd5-b8d2-4986-b0b2-ae8ae095556e')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (35, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1130, N'/Root/(apps)/GenericContent/RestoreVersion', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.880' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1130</Id>
    <Path>/Root/(apps)/GenericContent/RestoreVersion</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1130)|</OldAcl>
    <NewAcl>+(1130)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'815eac60-b2b8-455a-84f7-80fc8a1aed34')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (36, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1131, N'/Root/(apps)/GenericContent/RetrieveFields', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.900' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1131</Id>
    <Path>/Root/(apps)/GenericContent/RetrieveFields</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1131)|</OldAcl>
    <NewAcl>+(1131)|+(7):_____________________________________________+_+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'e7ccffc8-48fb-43a6-abc0-ca7e8f743b8c')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (37, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1132, N'/Root/(apps)/GenericContent/Rss', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.917' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1132</Id>
    <Path>/Root/(apps)/GenericContent/Rss</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1132)|</OldAcl>
    <NewAcl>+(1132)|+(8):_______________________________________________+________________,+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'37160f30-03b7-40a0-822a-0b1d5deb64b2')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (38, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1133, N'/Root/(apps)/GenericContent/SaveQuery', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.937' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1133</Id>
    <Path>/Root/(apps)/GenericContent/SaveQuery</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1133)|</OldAcl>
    <NewAcl>+(1133)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7b122360-4c48-4b6d-bd64-4e7e789747ee')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (39, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1134, N'/Root/(apps)/GenericContent/SetPermissions', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.950' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1134</Id>
    <Path>/Root/(apps)/GenericContent/SetPermissions</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1134)|</OldAcl>
    <NewAcl>+(1134)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'9ca93d64-0252-4745-9af2-cfe14aa6ad51')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (40, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1137, N'/Root/(apps)/GenericContent/TakeLockOver', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.970' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1137</Id>
    <Path>/Root/(apps)/GenericContent/TakeLockOver</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1137)|</OldAcl>
    <NewAcl>+(1137)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'15f602ac-d835-4b64-9fcf-58bf2f851a79')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (41, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1138, N'/Root/(apps)/GenericContent/RemoveAllFields', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:19.987' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:19</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1138</Id>
    <Path>/Root/(apps)/GenericContent/RemoveAllFields</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1138)|</OldAcl>
    <NewAcl>+(1138)|+(7):_____________________________________________+_+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'9b5c9a49-4d53-4260-a1ad-748347ee5e7c')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (42, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1139, N'/Root/(apps)/GenericContent/GetRelatedIdentitiesByPermissions', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.007' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1139</Id>
    <Path>/Root/(apps)/GenericContent/GetRelatedIdentitiesByPermissions</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1139)|</OldAcl>
    <NewAcl>+(1139)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'b655315b-ec48-4a37-b581-9d18800a5474')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (43, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1140, N'/Root/(apps)/GenericContent/GetRelatedIdentities', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.023' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1140</Id>
    <Path>/Root/(apps)/GenericContent/GetRelatedIdentities</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1140)|</OldAcl>
    <NewAcl>+(1140)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'5afd23f6-0fde-4d55-bfba-5bedb1451033')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (44, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1142, N'/Root/(apps)/GenericContent/AddAspects', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.043' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1142</Id>
    <Path>/Root/(apps)/GenericContent/AddAspects</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1142)|</OldAcl>
    <NewAcl>+(1142)|+(7):_____________________________________________+_+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'9efb62a2-7b73-4f8a-b0be-7378d20b8ca2')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (45, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1143, N'/Root/(apps)/GenericContent/AddFields', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.060' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1143</Id>
    <Path>/Root/(apps)/GenericContent/AddFields</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1143)|</OldAcl>
    <NewAcl>+(1143)|+(7):_____________________________________________+_+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'c3a61052-c98a-4c1f-afc1-d12a08e08692')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (46, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1144, N'/Root/(apps)/GenericContent/Approve', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.077' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1144</Id>
    <Path>/Root/(apps)/GenericContent/Approve</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1144)|</OldAcl>
    <NewAcl>+(1144)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7b4d331d-9fb2-49a8-927d-b861f75260df')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (47, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1145, N'/Root/(apps)/GenericContent/CheckIn', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.097' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1145</Id>
    <Path>/Root/(apps)/GenericContent/CheckIn</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1145)|</OldAcl>
    <NewAcl>+(1145)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'de8cf2c7-7971-4e31-81c2-ea8652eeb22f')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (48, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1147, N'/Root/(apps)/GenericContent/CheckOut', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.110' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1147</Id>
    <Path>/Root/(apps)/GenericContent/CheckOut</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1147)|</OldAcl>
    <NewAcl>+(1147)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'88e4b1bf-2287-4d40-81ae-0330d2dbcd57')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (49, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1149, N'/Root/(apps)/GenericContent/CopyTo', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.137' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1149</Id>
    <Path>/Root/(apps)/GenericContent/CopyTo</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1149)|</OldAcl>
    <NewAcl>+(1149)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'0ffe59c8-dfa8-43e7-ba3c-ea17fa8dfb26')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (50, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1150, N'/Root/(apps)/GenericContent/Delete', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.150' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1150</Id>
    <Path>/Root/(apps)/GenericContent/Delete</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1150)|</OldAcl>
    <NewAcl>+(1150)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'8d211ad2-163c-4386-998d-0d78a87ed4a5')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (51, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1153, N'/Root/(apps)/GenericContent/FinalizeContent', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.170' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1153</Id>
    <Path>/Root/(apps)/GenericContent/FinalizeContent</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1153)|</OldAcl>
    <NewAcl>+(1153)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7d983c03-1920-4b1a-b6ea-6d880c24c2b2')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (52, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1154, N'/Root/(apps)/GenericContent/ForceUndoCheckOut', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.183' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1154</Id>
    <Path>/Root/(apps)/GenericContent/ForceUndoCheckOut</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1154)|</OldAcl>
    <NewAcl>+(1154)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'b155a190-8d52-423a-8134-c7d94f876305')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (53, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1155, N'/Root/(apps)/GenericContent/GetAllContentTypes', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.200' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1155</Id>
    <Path>/Root/(apps)/GenericContent/GetAllContentTypes</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1155)|</OldAcl>
    <NewAcl>+(1155)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'0f84bb80-8aed-4b0d-b487-88f73b42f4a8')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (54, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1156, N'/Root/(apps)/GenericContent/GetAllowedChildTypesFromCTD', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.217' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1156</Id>
    <Path>/Root/(apps)/GenericContent/GetAllowedChildTypesFromCTD</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1156)|</OldAcl>
    <NewAcl>+(1156)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'd53553e1-ec75-478a-a419-084b684e47e1')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (55, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1157, N'/Root/(apps)/GenericContent/GetAllowedUsers', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.233' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1157</Id>
    <Path>/Root/(apps)/GenericContent/GetAllowedUsers</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1157)|</OldAcl>
    <NewAcl>+(1157)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'6af87e33-d479-4acd-adf7-6fad07ff8e7c')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (56, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1159, N'/Root/(apps)/GenericContent/GetChildrenPermissionInfo', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.247' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1159</Id>
    <Path>/Root/(apps)/GenericContent/GetChildrenPermissionInfo</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1159)|</OldAcl>
    <NewAcl>+(1159)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'efd938e1-56ea-41ba-95d6-99a34cb08fa5')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (57, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1160, N'/Root/(apps)/GenericContent/GetExistingPreviewImages', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.263' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1160</Id>
    <Path>/Root/(apps)/GenericContent/GetExistingPreviewImages</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1160)|</OldAcl>
    <NewAcl>+(1160)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'76734a2b-ca85-4b88-9036-eb27e1650055')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (58, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1161, N'/Root/(apps)/GenericContent/GetNameFromDisplayName', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.280' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1161</Id>
    <Path>/Root/(apps)/GenericContent/GetNameFromDisplayName</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1161)|</OldAcl>
    <NewAcl>+(1161)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'71ee46d4-1c00-48c3-a46f-1d866a5c2594')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (59, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1162, N'/Root/(apps)/GenericContent/GetPermissionInfo', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.297' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1162</Id>
    <Path>/Root/(apps)/GenericContent/GetPermissionInfo</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1162)|</OldAcl>
    <NewAcl>+(1162)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'80af6178-ceb1-4580-bfe4-baacb6615187')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (60, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1163, N'/Root/(apps)/GenericContent/GetPermissionOverview', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.313' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1163</Id>
    <Path>/Root/(apps)/GenericContent/GetPermissionOverview</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1163)|</OldAcl>
    <NewAcl>+(1163)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'f80e86e1-8b3f-46e2-9864-415168b700f8')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (61, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1164, N'/Root/(apps)/GenericContent/GetPermissions', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.330' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1164</Id>
    <Path>/Root/(apps)/GenericContent/GetPermissions</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1164)|</OldAcl>
    <NewAcl>+(1164)|+(7):_____________________________________________+_+___________+++++,+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'ef23688a-e4e8-46de-9555-780ab4650425')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (62, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1165, N'/Root/(apps)/GenericContent/GetPreviewImages', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.347' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1165</Id>
    <Path>/Root/(apps)/GenericContent/GetPreviewImages</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1165)|</OldAcl>
    <NewAcl>+(1165)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'3acf9143-e4b3-4fff-819c-18d2e78a0f37')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (63, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1166, N'/Root/(apps)/GenericContent/GetQueries', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.363' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1166</Id>
    <Path>/Root/(apps)/GenericContent/GetQueries</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1166)|</OldAcl>
    <NewAcl>+(1166)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'6dc3791d-d78f-4326-87a3-c39138cf7bab')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (64, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1167, N'/Root/(apps)/GenericContent/GetQueryBuilderMetadata', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.380' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1167</Id>
    <Path>/Root/(apps)/GenericContent/GetQueryBuilderMetadata</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1167)|</OldAcl>
    <NewAcl>+(1167)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'e19c0958-de55-4b81-9e5a-da6f6362e493')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (65, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1170, N'/Root/(apps)/GenericContent/UndoCheckOut', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.403' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1170</Id>
    <Path>/Root/(apps)/GenericContent/UndoCheckOut</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1170)|</OldAcl>
    <NewAcl>+(1170)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'61740697-0f1c-4ae1-84cb-8f1500a0df42')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (66, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1172, N'/Root/(apps)/Group/AddMembers', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.420' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1172</Id>
    <Path>/Root/(apps)/Group/AddMembers</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1172)|</OldAcl>
    <NewAcl>+(1172)|+(7):_____________________________________________+_+___________+++++,+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'85b796d8-0bc5-4d1c-be5b-5775dfd38eb0')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (67, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1174, N'/Root/(apps)/Group/RemoveMembers', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.437' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1174</Id>
    <Path>/Root/(apps)/Group/RemoveMembers</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1174)|</OldAcl>
    <NewAcl>+(1174)|+(7):_____________________________________________+_+___________+++++,+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'4c018fd7-f0a4-4f1f-9885-0b112ae55a5b')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (68, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1176, N'/Root/(apps)/Image/Thumbnail', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.457' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1176</Id>
    <Path>/Root/(apps)/Image/Thumbnail</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1176)|</OldAcl>
    <NewAcl>+(1176)|+(8):_______________________________________________+________________,+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'a19d5acd-7121-4a8f-ae10-62c2462fa302')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (69, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1178, N'/Root/(apps)/Link/Browse', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.473' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1178</Id>
    <Path>/Root/(apps)/Link/Browse</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1178)|</OldAcl>
    <NewAcl>+(1178)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'532d1ca0-f617-4d20-a0a0-a0f6e53fa5d8')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (70, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1188, N'/Root/(apps)/User/Profile', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.490' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1188</Id>
    <Path>/Root/(apps)/User/Profile</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1188)|</OldAcl>
    <NewAcl>+(1188)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'e9e59073-633c-4ee0-bd04-ae2f6150740b')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (71, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3, N'/Root/IMS', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.507' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3</Id>
    <Path>/Root/IMS</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3)|</OldAcl>
    <NewAcl>+(3)|+(9):_______________________________________________+_________+++++++,+(1193):____________________________________________________+_+__+++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'08e032c9-6ea6-41d3-8a44-68a5946fb7f5')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (72, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 4, N'/Root/IMS/BuiltIn', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.523' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>4</Id>
    <Path>/Root/IMS/BuiltIn</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(4)|</OldAcl>
    <NewAcl>+(4)|+(1194):___________________________________________________________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'1a0c4b27-bebb-4c5f-9722-c13f88aefb0b')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (73, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1189, N'/Root/IMS/BuiltIn/Portal/Admin/Admin.png', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.540' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1189</Id>
    <Path>/Root/IMS/BuiltIn/Portal/Admin/Admin.png</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1189)|</OldAcl>
    <NewAcl>+(1189)|+(8):_______________________________________________+___________+++++,+(6):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'57c0104b-2ae0-4652-bf92-9e38be1ed41e')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (74, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 12, N'/Root/IMS/BuiltIn/Portal/Startup', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.707' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>12</Id>
    <Path>/Root/IMS/BuiltIn/Portal/Startup</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(12)|</OldAcl>
    <NewAcl>+(12)|+(7):____________________________________________________-___________,+(1193):____________________________________________________-___________,+(9):____________________________________________________-___________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'189db651-17db-48a7-9946-d0696ffe211c')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (75, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1199, N'/Root/Localization', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.727' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1199</Id>
    <Path>/Root/Localization</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1199)|</OldAcl>
    <NewAcl>+(1199)|+(1191):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'a706e83c-87bf-44fa-a16a-2f46021bff0d')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (76, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1000, N'/Root/System', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.743' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1000</Id>
    <Path>/Root/System</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1000)|</OldAcl>
    <NewAcl>+(1000)|+(1191):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7019ea3a-793e-4bcd-af2d-3c767f96e04a')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (77, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1003, N'/Root/System/Settings', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.760' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1003</Id>
    <Path>/Root/System/Settings</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1003)|</OldAcl>
    <NewAcl>-(1003)|+(7):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'24ac6350-3b4c-44a5-b9f3-058dd28d260e')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (78, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1226, N'/Root/System/WebRoot', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.780' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1226</Id>
    <Path>/Root/System/WebRoot</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1226)|</OldAcl>
    <NewAcl>-(1226)|+(7):_____________________________________________+++++++++++++++++++,+(1191):______________________________________________++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'3110870a-07b5-4af5-b3db-c22b295a35c7')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (79, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1227, N'/Root/System/WebRoot/binaryhandler.ashx', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.800' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1227</Id>
    <Path>/Root/System/WebRoot/binaryhandler.ashx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1227)|</OldAcl>
    <NewAcl>-(1227)|+(6):_______________________________________________+___________+++++,+(7):_____________________________________________+++++++++++++++++++,+(8):_______________________________________________+___________+++++,+(1191):______________________________________________++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'90785b9f-775e-42ba-813f-35317210845d')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (80, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1228, N'/Root/System/WebRoot/DWS', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.813' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1228</Id>
    <Path>/Root/System/WebRoot/DWS</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1228)|</OldAcl>
    <NewAcl>+(1228)|+(8):_______________________________________________+_______________+</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7262c600-8284-42ac-864a-db41d812e0f7')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (81, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1235, N'/Root/System/WebRoot/vsshandler.ashx', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.830' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1235</Id>
    <Path>/Root/System/WebRoot/vsshandler.ashx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1235)|</OldAcl>
    <NewAcl>+(1235)|+(6):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'8e93eddf-3436-42a2-a091-e4ed97bdb12a')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (82, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1236, N'/Root/Trash', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.850' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1236</Id>
    <Path>/Root/Trash</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1236)|</OldAcl>
    <NewAcl>-(1236)|+(7):_____________________________________________+++++++++++++++++++,+(1194):_______________________________________________+___________+++++,+(1191):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'67ea3053-9deb-47e7-a43b-a82a8c6ef795')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (83, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1239, N'/Root/Trash/(apps)/TrashBag/Restore', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:20.870' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:20</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1239</Id>
    <Path>/Root/Trash/(apps)/TrashBag/Restore</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1239)|</OldAcl>
    <NewAcl>-(1239)|+(7):_____________________________________________+++++++++++++++++++,+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7359f959-d1eb-4b46-a9c5-edbff2381968')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (84, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1064, N'/Root/System/Schema/ContentTypes/GenericContent/Folder/SystemFolder', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:21.083' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:21</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1064</Id>
    <Path>/Root/System/Schema/ContentTypes/GenericContent/Folder/SystemFolder</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1064)|</OldAcl>
    <NewAcl>-(1064)|+(1191):_____________________________________________+++++++++++++++++++,+(7):_____________________________________________+++++++++++++++++++,+(1):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'5bcc4831-8294-484d-902e-574bbe2e5b28')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (85, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1032, N'/Root/System/Schema/ContentTypes/GenericContent/File/ExecutableFile', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:21.087' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:21</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1032</Id>
    <Path>/Root/System/Schema/ContentTypes/GenericContent/File/ExecutableFile</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1032)|</OldAcl>
    <NewAcl>-(1032)|+(1191):_____________________________________________+++++++++++++++++++,+(7):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'de1cb515-071d-4317-a6d3-a465be0da538')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (86, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 2, N'/Root', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:21.087' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:21</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>2</Id>
    <Path>/Root</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(2)|+(7):_____________________________________________+++++++++++++++++++</OldAcl>
    <NewAcl>+(2)|+(7):_____________________________________________+++++++++++++++++++,-(6):_______________________________________________________________+,-(8):_______________________________________________________________+,-(1191):___________________________________________________________+++++,-(1190):___________________________________________________________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'9e5fdfd7-11e6-4fb4-9c4d-d2f1e5a53c19')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (87, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1068, N'/Root/System/Schema/ContentTypes/GenericContent/Folder/Workspace', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:21.090' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:21</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1068</Id>
    <Path>/Root/System/Schema/ContentTypes/GenericContent/Folder/Workspace</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1068)|</OldAcl>
    <NewAcl>+(1068)|+(1194):_______________________________________________________________+</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'5230a88a-1708-455a-9704-6a8a56d01a38')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (88, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1009, N'/Root/System/Schema/ContentTypes/GenericContent/Folder/ContentList', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:21.090' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:21</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1009</Id>
    <Path>/Root/System/Schema/ContentTypes/GenericContent/Folder/ContentList</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1009)|</OldAcl>
    <NewAcl>+(1009)|+(1194):_______________________________________________________________+</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'f0e65362-63e6-4b60-a130-9bcd9a5cafbf')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (89, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1029, N'/Root/System/Schema/ContentTypes/GenericContent/File', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:21.093' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:21</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1029</Id>
    <Path>/Root/System/Schema/ContentTypes/GenericContent/File</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1029)|</OldAcl>
    <NewAcl>+(1029)|+(1194):_______________________________________________________________+</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'82a02c14-81ce-4a18-a143-8351381c0452')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (90, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1021, N'/Root/System/Schema/ContentTypes/GenericContent/ListItem', N'BuiltIn\Admin', CAST(N'2019-08-22T11:52:21.093' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'23456', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'1808', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 11:52:21</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>23456</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>1808</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1021</Id>
    <Path>/Root/System/Schema/ContentTypes/GenericContent/ListItem</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1021)|</OldAcl>
    <NewAcl>+(1021)|+(1194):_______________________________________________________________+</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'f219f255-e5aa-4a56-b496-fd517562eb34')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (91, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1090, N'/Root/(apps)/ContentList/DeleteField', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:06.867' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:06</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1090</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1089</ParentId>
    <Name>DeleteField</Name>
    <DisplayName>$Action,DeleteField</DisplayName>
    <Path>/Root/(apps)/ContentList/DeleteField</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:13.3800Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:13.3800Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>103</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:13.3800Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:13.3800Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>DeleteField</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario></Scenario>
    <ActionTypeName>DeleteFieldAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>_________________________________________________________***___*</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>delete</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'f9fbf91b-1862-4935-8073-2b66a7369fc4')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (92, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1091, N'/Root/(apps)/ContentList/EditField', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:06.947' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:06</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1091</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1089</ParentId>
    <Name>EditField</Name>
    <DisplayName>$Action,EditField</DisplayName>
    <Path>/Root/(apps)/ContentList/EditField</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:13.4300Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:13.4300Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>104</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:13.4300Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:13.4300Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>EditField</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario></Scenario>
    <ActionTypeName>EditFieldAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>_________________________________________________________***___*</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>edit</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'be6ed9c2-6081-4895-bde6-aa9d27fdae7b')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (93, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1109, N'/Root/(apps)/Folder/Upload', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:06.987' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:06</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1109</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1104</ParentId>
    <Name>Upload</Name>
    <DisplayName>$Action,Upload</DisplayName>
    <Path>/Root/(apps)/Folder/Upload</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:14.0900Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:14.0900Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>122</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:14.0900Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:14.0900Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>Upload</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario></Scenario>
    <ActionTypeName>UploadAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>______________________________________________________*____*___*</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>upload</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'ac5c5801-fae4-46a3-aca6-0c05171022b0')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (94, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1144, N'/Root/(apps)/GenericContent/Approve', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:07.033' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:07</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1144</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1110</ParentId>
    <Name>Approve</Name>
    <DisplayName>$Action,Approve</DisplayName>
    <Path>/Root/(apps)/GenericContent/Approve</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:15.1000Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:15.1000Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>157</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:15.1000Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:15.1000Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>Approve</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario>ListItem;ExploreActions;SimpleApprovableListItem</Scenario>
    <ActionTypeName>ApproveAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>_____________________________________________________*___***___*</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>approve</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'4c1d010b-6ee8-4756-bc8a-cf63d312114b')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (95, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1145, N'/Root/(apps)/GenericContent/CheckIn', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:07.077' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:07</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1145</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1110</ParentId>
    <Name>CheckIn</Name>
    <DisplayName>$Action,CheckIn</DisplayName>
    <Path>/Root/(apps)/GenericContent/CheckIn</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:15.1300Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:15.1300Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>158</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:15.1300Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:15.1300Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>CheckIn</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario>ListItem;ExploreActions;SimpleApprovableListItem</Scenario>
    <ActionTypeName>CheckInAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>_________________________________________________________***___*</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>checkin</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'eda99e74-00bc-4168-b5c4-62f18cc28a15')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (96, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1147, N'/Root/(apps)/GenericContent/CheckOut', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:07.120' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:07</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1147</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1110</ParentId>
    <Name>CheckOut</Name>
    <DisplayName>$Action,CheckOut</DisplayName>
    <Path>/Root/(apps)/GenericContent/CheckOut</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:15.1800Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:15.1800Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>160</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:15.1800Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:15.1800Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>CheckOut</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario>ListItem;ExploreActions</Scenario>
    <ActionTypeName>CheckOutAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>_________________________________________________________***___*</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>checkout</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'ed912b31-84a4-46c9-a3e3-fad7056ee782')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (97, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1154, N'/Root/(apps)/GenericContent/ForceUndoCheckOut', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:07.163' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:07</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1154</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1110</ParentId>
    <Name>ForceUndoCheckOut</Name>
    <DisplayName>$Action,ForceUndoCheckOut</DisplayName>
    <Path>/Root/(apps)/GenericContent/ForceUndoCheckOut</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:15.3800Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:15.3800Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>167</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:15.3800Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:15.3800Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>ForceUndoCheckOut</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario>ListItem;ExploreActions</Scenario>
    <ActionTypeName>ForceUndoCheckOutAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>_______________________________________________________*_***___*</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>undocheckout</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'c3090479-0728-4c45-badb-b92f4806b8e6')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (98, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1119, N'/Root/(apps)/GenericContent/Publish', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:07.210' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:07</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1119</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1110</ParentId>
    <Name>Publish</Name>
    <DisplayName>$Action,Publish</DisplayName>
    <Path>/Root/(apps)/GenericContent/Publish</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:14.4000Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:14.4000Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>132</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:14.4000Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:14.4000Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>Publish</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario>ListItem;ExploreActions;SimpleApprovableListItem</Scenario>
    <ActionTypeName>PublishAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>________________________________________________________****___*</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>publish</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7e815d19-9f44-4c48-9f45-b28aa7472404')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (99, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1130, N'/Root/(apps)/GenericContent/RestoreVersion', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:07.253' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:07</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1130</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1110</ParentId>
    <Name>RestoreVersion</Name>
    <DisplayName>$Action,RestoreVersion</DisplayName>
    <Path>/Root/(apps)/GenericContent/RestoreVersion</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:14.7000Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:14.7000Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>143</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:14.7000Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:14.7000Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>RestoreVersion</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario></Scenario>
    <ActionTypeName>RestoreVersionAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>___________________________________________________*_____*______</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>restoreversion</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'b0d99f1a-658e-4183-8558-d878ea9c0902')
GO
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (100, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1134, N'/Root/(apps)/GenericContent/SetPermissions', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:07.300' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:07</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1134</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1110</ParentId>
    <Name>SetPermissions</Name>
    <DisplayName>$Action,SetPermissions</DisplayName>
    <Path>/Root/(apps)/GenericContent/SetPermissions</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:14.8300Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:14.8300Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>147</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:14.8300Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:14.8300Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>SetPermissions</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario>WorkspaceActions;ListItem;ExploreActions</Scenario>
    <ActionTypeName>SetPermissionsAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>________________________________________________**_________*____</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>security</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'6733702a-77e2-432f-9f9e-528762d51f16')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (101, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1170, N'/Root/(apps)/GenericContent/UndoCheckOut', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:07.373' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:07</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1170</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1110</ParentId>
    <Name>UndoCheckOut</Name>
    <DisplayName>$Action,UndoCheckOut</DisplayName>
    <Path>/Root/(apps)/GenericContent/UndoCheckOut</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:16.0100Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:16.0100Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>183</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:16.0100Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:16.0100Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>UndoCheckOut</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario>ListItem;ExploreActions</Scenario>
    <ActionTypeName>UndoCheckOutAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>_________________________________________________________***___*</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>undocheckout</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'788a2b3b-c464-4edf-8c19-8157e831fdf8')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (102, 11006, N'Audit', -1, N'Verbose', N'ContentDeleted', 1239, N'/Root/Trash/(apps)/TrashBag/Restore', N'BuiltIn\Admin', CAST(N'2019-08-22T12:13:07.430' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'ContentDeleted', N'<LogEntry>
  <Timestamp>22/08/2019 12:13:07</Timestamp>
  <Message>ContentDeleted</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11006</EventId>
  <Severity>Verbose</Severity>
  <Title>ContentDeleted</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1239</Id>
    <NodeTypeId>11</NodeTypeId>
    <NodeType>Application</NodeType>
    <ContentListId>0</ContentListId>
    <ContentListTypeId>0</ContentListTypeId>
    <ParentId>1238</ParentId>
    <Name>Restore</Name>
    <DisplayName>$Action,Restore</DisplayName>
    <Path>/Root/Trash/(apps)/TrashBag/Restore</Path>
    <Index>0</Index>
    <CreatingInProgress>false</CreatingInProgress>
    <IsDeleted>false</IsDeleted>
    <CreationDate>2019-08-22 11:52:19.2300Z</CreationDate>
    <ModificationDate>2019-08-22 11:52:19.2300Z</ModificationDate>
    <CreatedById>1</CreatedById>
    <CreatedBy>BuiltIn\Admin</CreatedBy>
    <ModifiedById>1</ModifiedById>
    <ModifiedBy>BuiltIn\Admin</ModifiedBy>
    <VersionId>252</VersionId>
    <Version>V1.0.A</Version>
    <VersionCreationDate>2019-08-22 11:52:19.2300Z</VersionCreationDate>
    <VersionModificationDate>2019-08-22 11:52:19.2300Z</VersionModificationDate>
    <VersionCreatedById>1</VersionCreatedById>
    <VersionCreatedBy>BuiltIn\Admin</VersionCreatedBy>
    <VersionModifiedById>1</VersionModifiedById>
    <VersionModifiedBy>BuiltIn\Admin</VersionModifiedBy>
    <Locked>false</Locked>
    <LockedById>0</LockedById>
    <LockedBy></LockedBy>
    <ETag></ETag>
    <LockType>0</LockType>
    <LockTimeout>0</LockTimeout>
    <LockDate>1753-01-01 00:00:00.0000Z</LockDate>
    <LockToken></LockToken>
    <LastLockUpdate>1753-01-01 00:00:00.0000Z</LastLockUpdate>
    <IsSystem>true</IsSystem>
    <OwnerId>1</OwnerId>
    <Owner>BuiltIn\Admin</Owner>
    <SavingState>Finalized</SavingState>
    <VersioningMode>0</VersioningMode>
    <Hidden>0</Hidden>
    <InheritableVersioningMode>0</InheritableVersioningMode>
    <ApprovingMode>0</ApprovingMode>
    <InheritableApprovingMode>0</InheritableApprovingMode>
    <TrashDisabled>0</TrashDisabled>
    <EnableLifespan>0</EnableLifespan>
    <ValidFrom></ValidFrom>
    <ValidTill></ValidTill>
    <IsTaggable>0</IsTaggable>
    <IsRateable>0</IsRateable>
    <RateStr></RateStr>
    <RateAvg>0.0000</RateAvg>
    <RateCount>0</RateCount>
    <AppName>Restore</AppName>
    <Disabled>0</Disabled>
    <IsModal>0</IsModal>
    <Clear>0</Clear>
    <Scenario>ListItem;ExploreToolbar</Scenario>
    <ActionTypeName>RestoreAction</ActionTypeName>
    <StyleHint></StyleHint>
    <RequiredPermissions>_________________________________________________________*______</RequiredPermissions>
    <DeepPermissionCheck>0</DeepPermissionCheck>
    <IncludeBackUrl></IncludeBackUrl>
    <CacheControl>Nondefined</CacheControl>
    <MaxAge></MaxAge>
    <CustomUrlParameters></CustomUrlParameters>
    <StoredIcon>restore</StoredIcon>
    <UserName>BuiltIn\Admin</UserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'81d4ccc4-3cc6-49c8-a944-666183a9d2bd')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (103, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1261, N'/Root/Global', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.643' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1261</Id>
    <Path>/Root/Global</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1261)|</OldAcl>
    <NewAcl>+(1261)|+(1191):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'f7400544-ccec-44ea-8296-682a3326c5b0')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (104, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1264, N'/Root/Global/contentviews/Article/Browse.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.660' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1264</Id>
    <Path>/Root/Global/contentviews/Article/Browse.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1264)|</OldAcl>
    <NewAcl>+(1264)|+(8):_______________________________________________+________________,+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'ec18fb03-f015-4d22-86cc-8708143b4fd1')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (105, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1273, N'/Root/Global/contentviews/User/BrowseProfile.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.677' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1273</Id>
    <Path>/Root/Global/contentviews/User/BrowseProfile.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1273)|</OldAcl>
    <NewAcl>+(1273)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'278da7ef-4827-493d-a52d-9cbe39f45f6b')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (106, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1274, N'/Root/Global/contentviews/User/EditProfile.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.690' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1274</Id>
    <Path>/Root/Global/contentviews/User/EditProfile.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1274)|</OldAcl>
    <NewAcl>+(1274)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'62304953-d968-4744-b105-afd5c458ff13')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (107, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1277, N'/Root/Global/contentviews/User/PasswordChange.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.707' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1277</Id>
    <Path>/Root/Global/contentviews/User/PasswordChange.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1277)|</OldAcl>
    <NewAcl>+(1277)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'c77ad199-50e1-4645-9d8f-02f6a3534a6a')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (108, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1280, N'/Root/Global/contentviews/Rename.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.720' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1280</Id>
    <Path>/Root/Global/contentviews/Rename.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1280)|</OldAcl>
    <NewAcl>+(1280)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'4c8afdab-ce21-42f7-a9c9-2fe5d4ad3ef7')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (109, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1281, N'/Root/Global/contentviews/Query', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.747' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1281</Id>
    <Path>/Root/Global/contentviews/Query</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1281)|</OldAcl>
    <NewAcl>+(1281)|+(1194):___________________________________________________________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'5af4908b-7991-48e6-bbbd-675b75105fd7')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (110, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1282, N'/Root/Global/contentviews/Query/CustomQueryBuilder.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.777' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1282</Id>
    <Path>/Root/Global/contentviews/Query/CustomQueryBuilder.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1282)|</OldAcl>
    <NewAcl>-(1282)|+(6):_______________________________________________+________________,+(7):_____________________________________________+++++++++++++++++++,+(8):_______________________________________________+________________,+(1191):______________________________________________++++++++++++++++++,+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'fa78dcda-7964-4565-a8ed-beacd18f21ce')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (111, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1283, N'/Root/Global/contentviews/Query/SavedQueries.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.793' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1283</Id>
    <Path>/Root/Global/contentviews/Query/SavedQueries.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1283)|</OldAcl>
    <NewAcl>-(1283)|+(1194):_______________________________________________+________________,+(1191):______________________________________________++++++++++++++++++,+(7):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'5c2186e0-c8a2-4ac0-ab97-a59ccd374bb2')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (112, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1287, N'/Root/Global/contentviews/InlineNew.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.810' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1287</Id>
    <Path>/Root/Global/contentviews/InlineNew.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1287)|</OldAcl>
    <NewAcl>+(1287)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'05517118-9832-42d2-9679-2d7c866947d6')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (113, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1288, N'/Root/Global/contentviews/InlineEdit.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.823' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1288</Id>
    <Path>/Root/Global/contentviews/InlineEdit.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1288)|</OldAcl>
    <NewAcl>+(1288)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'3dac58f2-4dad-427e-b8ac-cb12fba9e9c8')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (114, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1290, N'/Root/Global/contentviews/HTMLContent/Browse.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.837' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1290</Id>
    <Path>/Root/Global/contentviews/HTMLContent/Browse.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1290)|</OldAcl>
    <NewAcl>+(1290)|+(8):_______________________________________________+________________,+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'818bb10a-5f9f-4e27-9ea0-d00230da620f')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (115, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1311, N'/Root/Global/contentviews/CheckIn.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.853' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1311</Id>
    <Path>/Root/Global/contentviews/CheckIn.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1311)|</OldAcl>
    <NewAcl>+(1311)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'3db73a63-02d3-4752-836b-1cb21f00986b')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (116, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1312, N'/Root/Global/contentviews/Browse.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.867' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1312</Id>
    <Path>/Root/Global/contentviews/Browse.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1312)|</OldAcl>
    <NewAcl>+(1312)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'6f008ab3-f730-4cfd-bae6-e95ef11674e9')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (117, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1412, N'/Root/Global/images', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.887' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1412</Id>
    <Path>/Root/Global/images</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1412)|</OldAcl>
    <NewAcl>+(1412)|+(8):___________________________________________________________+++++,+(6):___________________________________________________________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'94c9dacd-d932-4994-9cfd-fa4f668b6e7e')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (118, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1904, N'/Root/Global/pagetemplates', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.903' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1904</Id>
    <Path>/Root/Global/pagetemplates</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1904)|</OldAcl>
    <NewAcl>+(1904)|+(8):___________________________________________________________+++++,+(6):___________________________________________________________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'c85cca46-b3cd-47d1-bf35-d89b9ddd733b')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (119, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1930, N'/Root/Global/renderers', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.967' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1930</Id>
    <Path>/Root/Global/renderers</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1930)|</OldAcl>
    <NewAcl>+(1930)|+(8):_______________________________________________+________________,+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'c88eeae4-cff5-4497-b260-1cbd23a96526')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (120, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 1938, N'/Root/Global/scripts', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:05.980' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:05</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>1938</Id>
    <Path>/Root/Global/scripts</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(1938)|</OldAcl>
    <NewAcl>+(1938)|+(8):___________________________________________________________+++++,+(6):___________________________________________________________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'e66bd566-7e60-4491-a539-da4aa74c34c1')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (121, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3009, N'/Root/Global/styles', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.147' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3009</Id>
    <Path>/Root/Global/styles</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3009)|</OldAcl>
    <NewAcl>+(3009)|+(8):___________________________________________________________+++++,+(6):___________________________________________________________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'560d3c99-0ef1-4af7-ac7f-4f8471ddeaad')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (122, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3144, N'/Root/Portlets', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.163' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3144</Id>
    <Path>/Root/Portlets</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3144)|</OldAcl>
    <NewAcl>+(3144)|+(1191):_____________________________________________+++++++++++++++++++,+(1195):___________________________________________________________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'ec1847e5-2786-4137-a77a-7ee902d68147')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (123, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3195, N'/Root/Sites', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.463' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3195</Id>
    <Path>/Root/Sites</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3195)|</OldAcl>
    <NewAcl>+(3195)|-(1194):___________________________________________________________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'b1ec9611-8557-42a2-bdb0-7888c21841c4')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (124, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3196, N'/Root/Sites/Default_Site', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.490' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3196</Id>
    <Path>/Root/Sites/Default_Site</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3196)|</OldAcl>
    <NewAcl>+(3196)|+(8):___________________________________________________________+++++,+(6):___________________________________________________________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'e834f814-9435-460d-ae8c-446b773ea26c')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (125, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3197, N'/Root/Sites/Default_Site/(apps)', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.503' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3197</Id>
    <Path>/Root/Sites/Default_Site/(apps)</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3197)|</OldAcl>
    <NewAcl>-(3197)|+(7):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'37345d44-92c5-4e4c-b19f-de188eb7ac62')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (126, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3199, N'/Root/Sites/Default_Site/(apps)/This/Browse', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.530' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3199</Id>
    <Path>/Root/Sites/Default_Site/(apps)/This/Browse</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3199)|</OldAcl>
    <NewAcl>-(3199)|+(8):_______________________________________________+___________+++++,+(6):_______________________________________________+___________+++++,+(7):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'486488b4-430c-413a-b68c-3e2e58b5e237')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (127, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3200, N'/Root/Sites/Default_Site/login', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.553' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3200</Id>
    <Path>/Root/Sites/Default_Site/login</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3200)|</OldAcl>
    <NewAcl>-(3200)|+(8):_______________________________________________+___________+++++,+(6):_______________________________________________+___________+++++,+(7):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'212a9b13-c96b-45fc-a3d5-3bf95665e1d9')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (128, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3201, N'/Root/Skins', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.570' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3201</Id>
    <Path>/Root/Skins</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3201)|</OldAcl>
    <NewAcl>+(3201)|+(8):_______________________________________________+___________+++++,+(6):_______________________________________________+___________+++++,+(1191):_____________________________________________+++++++++++++++++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'e8791d2c-a3f9-44b8-aeae-89a5c220800e')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (129, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3356, N'/Root/(apps)/ContentType/Add', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.753' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3356</Id>
    <Path>/Root/(apps)/ContentType/Add</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3356)|</OldAcl>
    <NewAcl>+(3356)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'd8a8ff30-48cf-4374-b5cc-cff58bd35e72')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (130, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3357, N'/Root/(apps)/ContentType/Browse', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.783' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3357</Id>
    <Path>/Root/(apps)/ContentType/Browse</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3357)|</OldAcl>
    <NewAcl>+(3357)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'405661cf-b4b4-47e9-afc2-81764140a813')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (131, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3360, N'/Root/(apps)/ContentType/Edit', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.830' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3360</Id>
    <Path>/Root/(apps)/ContentType/Edit</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3360)|</OldAcl>
    <NewAcl>+(3360)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'9094f7e4-78ba-4d65-b5d1-1d614bec2498')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (132, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3361, N'/Root/(apps)/ContentType/Explore', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.863' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3361</Id>
    <Path>/Root/(apps)/ContentType/Explore</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3361)|</OldAcl>
    <NewAcl>+(3361)|+(1190):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'65471165-c6c8-43a7-929d-8f0cbb55a3b0')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (133, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3363, N'/Root/(apps)/ContentType/HasPermission', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.887' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3363</Id>
    <Path>/Root/(apps)/ContentType/HasPermission</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3363)|</OldAcl>
    <NewAcl>+(3363)|+(7):_____________________________________________+_+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'1cb2a787-dae5-4a92-8c5e-6b338f473e0e')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (134, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3365, N'/Root/(apps)/File/BinarySpecial', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.930' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3365</Id>
    <Path>/Root/(apps)/File/BinarySpecial</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3365)|</OldAcl>
    <NewAcl>+(3365)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'5651afe9-118e-43ea-af32-14ced423cec9')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (135, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3366, N'/Root/(apps)/File/Browse', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.953' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3366</Id>
    <Path>/Root/(apps)/File/Browse</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3366)|</OldAcl>
    <NewAcl>+(3366)|+(8):_______________________________________________+________________,+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'c24477fc-7e7b-4e4d-ae82-380c7ece0337')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (136, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3367, N'/Root/(apps)/File/Edit', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:06.980' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:06</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3367</Id>
    <Path>/Root/(apps)/File/Edit</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3367)|</OldAcl>
    <NewAcl>+(3367)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'6d8f3d88-f0e7-4ab4-a878-4e886ca1c208')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (137, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3368, N'/Root/(apps)/File/Explore', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.007' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3368</Id>
    <Path>/Root/(apps)/File/Explore</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3368)|</OldAcl>
    <NewAcl>+(3368)|+(1190):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'f6650655-ee36-44f7-b7be-cc59a48e5a47')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (138, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3369, N'/Root/(apps)/Folder/Add', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.033' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3369</Id>
    <Path>/Root/(apps)/Folder/Add</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3369)|</OldAcl>
    <NewAcl>+(3369)|+(6):_______________________________________________+________________,+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7294c2c3-1b31-4f7e-b12a-c46f3353398a')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (139, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3370, N'/Root/(apps)/Folder/Browse', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.063' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3370</Id>
    <Path>/Root/(apps)/Folder/Browse</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3370)|</OldAcl>
    <NewAcl>+(3370)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'876d1c86-fdac-4e45-9ba7-5b1c56f54e0f')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (140, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3373, N'/Root/(apps)/Folder/Upload', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.130' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3373</Id>
    <Path>/Root/(apps)/Folder/Upload</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3373)|</OldAcl>
    <NewAcl>+(3373)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'5aab7bf8-1fd2-43dd-8d0e-0f66c693c7a2')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (141, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3375, N'/Root/(apps)/GenericContent/SmartAppGetActions', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.167' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3375</Id>
    <Path>/Root/(apps)/GenericContent/SmartAppGetActions</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3375)|</OldAcl>
    <NewAcl>+(3375)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'8c41d57e-042f-4c5b-97d1-265d06ae805b')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (142, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3377, N'/Root/(apps)/GenericContent/RestoreVersion', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.213' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3377</Id>
    <Path>/Root/(apps)/GenericContent/RestoreVersion</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3377)|</OldAcl>
    <NewAcl>+(3377)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'903d4d10-7b2b-4b66-a3d2-cc82f904729d')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (143, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3378, N'/Root/(apps)/GenericContent/Rename', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.237' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3378</Id>
    <Path>/Root/(apps)/GenericContent/Rename</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3378)|</OldAcl>
    <NewAcl>+(3378)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'95da2355-8909-4f3b-8a47-ae9f3fb61d48')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (144, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3380, N'/Root/(apps)/GenericContent/Publish', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.277' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3380</Id>
    <Path>/Root/(apps)/GenericContent/Publish</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3380)|</OldAcl>
    <NewAcl>+(3380)|+(8):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'12ee1557-b906-470f-90ce-533a5c2bd336')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (145, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3381, N'/Root/(apps)/GenericContent/OpenInContentExplorer', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.293' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3381</Id>
    <Path>/Root/(apps)/GenericContent/OpenInContentExplorer</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3381)|</OldAcl>
    <NewAcl>+(3381)|+(1192):_______________________________________________+________________,+(1190):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'1c64c81e-9ae5-4670-8e45-440029d920cb')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (146, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3384, N'/Root/(apps)/GenericContent/Explore', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.350' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3384</Id>
    <Path>/Root/(apps)/GenericContent/Explore</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3384)|</OldAcl>
    <NewAcl>+(3384)|+(1190):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'75646084-5fab-4a7c-aa8f-de72c2dc3a7f')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (147, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3385, N'/Root/(apps)/GenericContent/Edit', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.373' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3385</Id>
    <Path>/Root/(apps)/GenericContent/Edit</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3385)|</OldAcl>
    <NewAcl>+(3385)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'f5d51c7b-012f-4e0e-96c5-3af09f8114b0')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (148, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3394, N'/Root/(apps)/GenericContent/CheckOut', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.397' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3394</Id>
    <Path>/Root/(apps)/GenericContent/CheckOut</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3394)|</OldAcl>
    <NewAcl>+(3394)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'3e0a01a7-bf31-48c2-8fda-38602f89d750')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (149, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3395, N'/Root/(apps)/GenericContent/CheckIn', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.423' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3395</Id>
    <Path>/Root/(apps)/GenericContent/CheckIn</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3395)|</OldAcl>
    <NewAcl>+(3395)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'91bbb710-0c61-4233-a153-28b6de2a48c3')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (150, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3396, N'/Root/(apps)/GenericContent/Browse', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.447' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3396</Id>
    <Path>/Root/(apps)/GenericContent/Browse</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3396)|</OldAcl>
    <NewAcl>+(3396)|+(8):_______________________________________________+________________,+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'62906732-c3ef-47b0-89ad-e437a3ac03ae')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (151, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3397, N'/Root/(apps)/GenericContent/Approve', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.470' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3397</Id>
    <Path>/Root/(apps)/GenericContent/Approve</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3397)|</OldAcl>
    <NewAcl>+(3397)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'cd0a3296-5f90-42f0-8277-ec8428130559')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (152, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3398, N'/Root/(apps)/GenericContent/UndoCheckOut', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.493' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3398</Id>
    <Path>/Root/(apps)/GenericContent/UndoCheckOut</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3398)|</OldAcl>
    <NewAcl>+(3398)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'aeeaa528-2c40-4420-82ba-a0c876a69ec0')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (153, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3399, N'/Root/(apps)/GenericContent/Versions', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.520' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3399</Id>
    <Path>/Root/(apps)/GenericContent/Versions</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3399)|</OldAcl>
    <NewAcl>+(3399)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'd64e1b75-8518-4315-8308-da3ff0d57421')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (154, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3402, N'/Root/(apps)/Page/WebPartDisplayMode', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.553' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3402</Id>
    <Path>/Root/(apps)/Page/WebPartDisplayMode</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3402)|</OldAcl>
    <NewAcl>+(3402)|+(1194):_______________________________________________+________________,+(1195):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'0ccf1987-5d60-4c2b-8dd6-cda4fa574e06')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (155, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3403, N'/Root/(apps)/This/Explore', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.580' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3403</Id>
    <Path>/Root/(apps)/This/Explore</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3403)|</OldAcl>
    <NewAcl>+(3403)|+(1190):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'0bde4476-a95e-4ccd-975f-fecf6925b819')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (156, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3404, N'/Root/(apps)/User/PasswordChange', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.607' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3404</Id>
    <Path>/Root/(apps)/User/PasswordChange</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3404)|</OldAcl>
    <NewAcl>+(3404)|+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'2922adec-3663-4a53-98ad-03e6e57b8904')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (157, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3409, N'/Root/IMS/(apps)/ADFolder/Explore', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.633' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3409</Id>
    <Path>/Root/IMS/(apps)/ADFolder/Explore</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3409)|</OldAcl>
    <NewAcl>+(3409)|+(1190):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'91bfcc68-dcb6-469c-bac4-83b15cbec4aa')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (158, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3411, N'/Root/IMS/(apps)/Domain/Explore', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.663' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3411</Id>
    <Path>/Root/IMS/(apps)/Domain/Explore</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3411)|</OldAcl>
    <NewAcl>+(3411)|+(1190):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'16507acb-4f74-43fe-b163-c1fef64ad17d')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (159, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3413, N'/Root/IMS/(apps)/OrganizationalUnit/Explore', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.697' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3413</Id>
    <Path>/Root/IMS/(apps)/OrganizationalUnit/Explore</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3413)|</OldAcl>
    <NewAcl>+(3413)|+(1190):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'da7f154d-1484-45e2-baee-8d4a96e574db')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (160, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3447, N'/Root/System/PermissionOverview', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.797' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3447</Id>
    <Path>/Root/System/PermissionOverview</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3447)|</OldAcl>
    <NewAcl>+(3447)|+(11):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'8512e2d3-8958-4879-8d09-2932fd3572dd')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (161, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3448, N'/Root/System/SystemPlugins', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.813' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3448</Id>
    <Path>/Root/System/SystemPlugins</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3448)|</OldAcl>
    <NewAcl>+(3448)|+(8):_______________________________________________+________________,+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'413851a6-0bac-4839-9707-ab727d6b5689')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (162, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3496, N'/Root/System/SystemPlugins/ListView/Fallback.ascx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.880' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3496</Id>
    <Path>/Root/System/SystemPlugins/ListView/Fallback.ascx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3496)|</OldAcl>
    <NewAcl>+(3496)|+(8):_______________________________________________+________________,+(6):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'08047e3c-89ee-4342-bcf0-b7e2cdac79f6')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (163, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3535, N'/Root/System/TaskMonitor', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.950' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3535</Id>
    <Path>/Root/System/TaskMonitor</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3535)|</OldAcl>
    <NewAcl>+(3535)|+(11):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'6f9ede19-3dd4-4054-9bfd-14f148906055')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (164, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3538, N'/Root/System/PermissionPlaceholders/ContentStore-mvc', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.980' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3538</Id>
    <Path>/Root/System/PermissionPlaceholders/ContentStore-mvc</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3538)|</OldAcl>
    <NewAcl>+(3538)|+(1194):_______________________________________________+___________+++++,+(1190):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'7420d034-2a1f-46fe-8e29-5a08829aecec')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (165, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3539, N'/Root/System/PermissionPlaceholders/DialogUpload-mvc', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:07.997' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:07</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3539</Id>
    <Path>/Root/System/PermissionPlaceholders/DialogUpload-mvc</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3539)|</OldAcl>
    <NewAcl>+(3539)|+(1194):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'd972a5cf-8087-4feb-8aaf-ac3733e769f1')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (166, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3547, N'/Root/System/Schema/(apps)/Folder/Explore', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:08.050' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:08</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3547</Id>
    <Path>/Root/System/Schema/(apps)/Folder/Explore</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3547)|</OldAcl>
    <NewAcl>+(3547)|+(1191):_______________________________________________+________________,+(1190):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'ccea3fea-c3e9-4b04-8fe9-ffec1bfd5653')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (167, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3548, N'/Root/System/WebRoot/DeleteAction.aspx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:08.063' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:08</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3548</Id>
    <Path>/Root/System/WebRoot/DeleteAction.aspx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3548)|</OldAcl>
    <NewAcl>+(3548)|+(1194):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'05de7d10-3181-4068-b978-7175e503c31d')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (168, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3549, N'/Root/System/WebRoot/Explore.html', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:08.080' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:08</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3549</Id>
    <Path>/Root/System/WebRoot/Explore.html</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3549)|</OldAcl>
    <NewAcl>+(3549)|+(8):_______________________________________________________________+,+(1190):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'0156a688-dd0e-40b8-a740-09b864e001fc')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (169, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3550, N'/Root/System/WebRoot/ExploreFrame.html', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:08.093' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:08</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3550</Id>
    <Path>/Root/System/WebRoot/ExploreFrame.html</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3550)|</OldAcl>
    <NewAcl>+(3550)|+(8):_______________________________________________________________+,+(1190):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'5562d981-c1da-432a-94cf-c776727770e7')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (170, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3551, N'/Root/System/WebRoot/ExploreTree.aspx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:08.110' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:08</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3551</Id>
    <Path>/Root/System/WebRoot/ExploreTree.aspx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3551)|</OldAcl>
    <NewAcl>+(3551)|+(8):_______________________________________________________________+,+(1190):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'3fe41461-2f4f-4eb7-9827-0c4e0d0ddfb8')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (171, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3552, N'/Root/System/WebRoot/picker.aspx', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:08.123' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:08</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3552</Id>
    <Path>/Root/System/WebRoot/picker.aspx</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3552)|</OldAcl>
    <NewAcl>+(3552)|+(1194):_______________________________________________+___________+++++</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'adaee3a6-084c-437a-a218-4d011e8862ee')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (172, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3555, N'/Root/Trash/(apps)/TrashBag/Browse', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:08.150' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:08</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3555</Id>
    <Path>/Root/Trash/(apps)/TrashBag/Browse</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3555)|</OldAcl>
    <NewAcl>-(3555)|+(7):_____________________________________________+++++++++++++++++++,+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'c7c60ce5-3c2d-43b6-8f30-063ccfa40a25')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (173, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3556, N'/Root/Trash/(apps)/TrashBag/Delete', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:08.167' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:08</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3556</Id>
    <Path>/Root/Trash/(apps)/TrashBag/Delete</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3556)|</OldAcl>
    <NewAcl>-(3556)|+(7):_____________________________________________+++++++++++++++++++,+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'c8bf7bc7-d230-4908-a8bd-68a8714d1619')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (174, 11008, N'Audit', -1, N'Verbose', N'PermissionChanged', 3557, N'/Root/Trash/(apps)/TrashBag/Restore', N'BuiltIn\Admin', CAST(N'2019-08-22T12:14:08.190' AS DateTime), N'DESKTOP-PNNG5QJ', N'SnAdminRuntime.exe', N'27712', N'C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe', NULL, N'22284', N'PermissionChanged', N'<LogEntry>
  <Timestamp>22/08/2019 12:14:08</Timestamp>
  <Message>PermissionChanged</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11008</EventId>
  <Severity>Verbose</Severity>
  <Title>PermissionChanged</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>SnAdminRuntime.exe</ApplicationDomain>
  <ProcessId>27712</ProcessId>
  <ProcessName>C:\Users\Indra Wayne\source\repos\Sensenet7\Sensenet7\Admin\run\SnAdminRuntime.exe</ProcessName>
  <Win32ThreadId>22284</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <Id>3557</Id>
    <Path>/Root/Trash/(apps)/TrashBag/Restore</Path>
    <Type>SetPermissions</Type>
    <OldAcl>+(3557)|</OldAcl>
    <NewAcl>-(3557)|+(7):_____________________________________________+++++++++++++++++++,+(1194):_______________________________________________+________________</NewAcl>
    <UserName>BuiltIn\Admin</UserName>
    <SpecialUserName>SYSTEM</SpecialUserName>
    <WorkingMode>SnAdmin</WorkingMode>
    <IsHttpContext>no</IsHttpContext>
  </ExtendedProperties>
</LogEntry>
', N'20043f56-de29-4fac-94dc-d18069ed4bc5')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (175, 11001, N'Audit', -1, N'Verbose', N'LoginSuccessful', 0, N'', N'BuiltIn\admin', CAST(N'2019-08-22T12:15:04.920' AS DateTime), N'DESKTOP-PNNG5QJ', N'/LM/W3SVC/2/ROOT-2-132109496596416019', N'13664', N'C:\Program Files (x86)\IIS Express\iisexpress.exe', NULL, N'17804', N'LoginSuccessful', N'<LogEntry>
  <Timestamp>22/08/2019 12:15:04</Timestamp>
  <Message>LoginSuccessful</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11001</EventId>
  <Severity>Verbose</Severity>
  <Title>LoginSuccessful</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>/LM/W3SVC/2/ROOT-2-132109496596416019</ApplicationDomain>
  <ProcessId>13664</ProcessId>
  <ProcessName>C:\Program Files (x86)\IIS Express\iisexpress.exe</ProcessName>
  <Win32ThreadId>17804</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <UserName>BuiltIn\admin</UserName>
    <ClientAddress>::1</ClientAddress>
    <LoggedUserName>BuiltIn\Visitor</LoggedUserName>
    <WorkingMode></WorkingMode>
    <IsHttpContext>yes</IsHttpContext>
    <Url>http://localhost:54653/Root/Sites/Default_Site/(apps)/This/Browse/InRepositoryPage.aspx</Url>
    <Referrer>http://localhost:54653/Root/Sites/Default_Site</Referrer>
  </ExtendedProperties>
</LogEntry>
', N'd440f61d-0ddc-4cc5-bd8f-470c81c5c2be')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (176, 11001, N'Audit', -1, N'Verbose', N'LoginSuccessful', 0, N'', N'BuiltIn\admin', CAST(N'2019-08-23T06:44:27.577' AS DateTime), N'DESKTOP-PNNG5QJ', N'/LM/W3SVC/2/ROOT-1-132110047301717068', N'18012', N'C:\Program Files (x86)\IIS Express\iisexpress.exe', NULL, N'3092', N'LoginSuccessful', N'<LogEntry>
  <Timestamp>23/08/2019 06:44:27</Timestamp>
  <Message>LoginSuccessful</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11001</EventId>
  <Severity>Verbose</Severity>
  <Title>LoginSuccessful</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>/LM/W3SVC/2/ROOT-1-132110047301717068</ApplicationDomain>
  <ProcessId>18012</ProcessId>
  <ProcessName>C:\Program Files (x86)\IIS Express\iisexpress.exe</ProcessName>
  <Win32ThreadId>3092</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <UserName>BuiltIn\admin</UserName>
    <ClientAddress>::1</ClientAddress>
    <LoggedUserName>BuiltIn\Visitor</LoggedUserName>
    <WorkingMode></WorkingMode>
    <IsHttpContext>yes</IsHttpContext>
    <Url>http://localhost:54653/Root/Sites/Default_Site/(apps)/This/Browse/InRepositoryPage.aspx</Url>
    <Referrer>http://localhost:54653//Root/Sites/Default_Site</Referrer>
  </ExtendedProperties>
</LogEntry>
', N'ed329a95-ce26-48d0-8ff8-2c77f875a7d2')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (177, 11001, N'Audit', -1, N'Verbose', N'LoginSuccessful', 0, N'', N'BuiltIn\admin', CAST(N'2019-08-23T10:14:01.553' AS DateTime), N'DESKTOP-PNNG5QJ', N'/LM/W3SVC/2/ROOT-3-132110220391417639', N'18012', N'C:\Program Files (x86)\IIS Express\iisexpress.exe', NULL, N'27180', N'LoginSuccessful', N'<LogEntry>
  <Timestamp>23/08/2019 10:14:01</Timestamp>
  <Message>LoginSuccessful</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11001</EventId>
  <Severity>Verbose</Severity>
  <Title>LoginSuccessful</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>/LM/W3SVC/2/ROOT-3-132110220391417639</ApplicationDomain>
  <ProcessId>18012</ProcessId>
  <ProcessName>C:\Program Files (x86)\IIS Express\iisexpress.exe</ProcessName>
  <Win32ThreadId>27180</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <UserName>BuiltIn\admin</UserName>
    <ClientAddress>::1</ClientAddress>
    <LoggedUserName>BuiltIn\Visitor</LoggedUserName>
    <WorkingMode></WorkingMode>
    <IsHttpContext>yes</IsHttpContext>
    <Url>http://localhost:54653/Root/Sites/Default_Site/(apps)/This/Browse/InRepositoryPage.aspx</Url>
    <Referrer>http://localhost:54653/Root/Sites/Default_Site</Referrer>
  </ExtendedProperties>
</LogEntry>
', N'5a018518-32c9-40f7-a1dc-90ec28d36e1a')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (178, 11001, N'Audit', -1, N'Verbose', N'LoginSuccessful', 0, N'', N'BuiltIn\admin', CAST(N'2019-08-26T03:52:58.520' AS DateTime), N'DESKTOP-PNNG5QJ', N'/LM/W3SVC/2/ROOT-3-132112650398184843', N'18268', N'C:\Program Files (x86)\IIS Express\iisexpress.exe', NULL, N'18092', N'LoginSuccessful', N'<LogEntry>
  <Timestamp>26/08/2019 03:52:58</Timestamp>
  <Message>LoginSuccessful</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11001</EventId>
  <Severity>Verbose</Severity>
  <Title>LoginSuccessful</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>/LM/W3SVC/2/ROOT-3-132112650398184843</ApplicationDomain>
  <ProcessId>18268</ProcessId>
  <ProcessName>C:\Program Files (x86)\IIS Express\iisexpress.exe</ProcessName>
  <Win32ThreadId>18092</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <UserName>BuiltIn\admin</UserName>
    <ClientAddress>::1</ClientAddress>
    <LoggedUserName>BuiltIn\Visitor</LoggedUserName>
    <WorkingMode></WorkingMode>
    <IsHttpContext>yes</IsHttpContext>
    <Url>http://localhost:54653/Root/Sites/Default_Site/(apps)/This/Browse/InRepositoryPage.aspx</Url>
    <Referrer>http://localhost:54653/Root/Sites/Default_Site</Referrer>
  </ExtendedProperties>
</LogEntry>
', N'74f1c459-a017-4ca5-b3b2-c8d5803e7e2d')
INSERT [dbo].[LogEntries] ([LogId], [EventId], [Category], [Priority], [Severity], [Title], [ContentId], [ContentPath], [UserName], [LogDate], [MachineName], [AppDomainName], [ProcessID], [ProcessName], [ThreadName], [Win32ThreadId], [Message], [FormattedMessage], [RowGuid]) VALUES (179, 11001, N'Audit', -1, N'Verbose', N'LoginSuccessful', 0, N'', N'BuiltIn\admin', CAST(N'2019-08-26T06:24:33.907' AS DateTime), N'DESKTOP-PNNG5QJ', N'/LM/W3SVC/2/ROOT-3-132112650398184843', N'18268', N'C:\Program Files (x86)\IIS Express\iisexpress.exe', NULL, N'19328', N'LoginSuccessful', N'<LogEntry>
  <Timestamp>26/08/2019 06:24:33</Timestamp>
  <Message>LoginSuccessful</Message>
  <Category>Audit</Category>
  <Priority>-1</Priority>
  <EventId>11001</EventId>
  <Severity>Verbose</Severity>
  <Title>LoginSuccessful</Title>
  <Machine>DESKTOP-PNNG5QJ</Machine>
  <ApplicationDomain>/LM/W3SVC/2/ROOT-3-132112650398184843</ApplicationDomain>
  <ProcessId>18268</ProcessId>
  <ProcessName>C:\Program Files (x86)\IIS Express\iisexpress.exe</ProcessName>
  <Win32ThreadId>19328</Win32ThreadId>
  <ThreadName></ThreadName>
  <ExtendedProperties>
    <UserName>BuiltIn\admin</UserName>
    <ClientAddress>::1</ClientAddress>
    <LoggedUserName>BuiltIn\Visitor</LoggedUserName>
    <WorkingMode></WorkingMode>
    <IsHttpContext>yes</IsHttpContext>
    <Url>http://localhost:54653/Root/Sites/Default_Site/(apps)/This/Browse/InRepositoryPage.aspx</Url>
    <Referrer>http://localhost:54653/Root/Sites/Default_Site</Referrer>
  </ExtendedProperties>
</LogEntry>
', N'42b19594-503d-4ce4-81f6-96a4eb0a85cc')
SET IDENTITY_INSERT [dbo].[LogEntries] OFF
