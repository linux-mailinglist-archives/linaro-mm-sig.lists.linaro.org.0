Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C56DCBA444F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 16:41:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A22BA45D79
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 14:41:37 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011071.outbound.protection.outlook.com [52.101.52.71])
	by lists.linaro.org (Postfix) with ESMTPS id 980083F729
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Sep 2025 14:41:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=qk+Xg7st;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.52.71 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IHJD5vwVXH1d4DdYXiXjWsOZvwFjdbx7O1nS2966JRgBnGr7rwMAZc26S4E5SlsZo/mZOZYe7M9kDVR4H6hqzdAW6KCPQkPsLaMhWBIyCHqgQkXB0oYsqrSwPeViGRqrEnXmyeaYPNnhkbJuA9BLKq1MPAjfGgSA4CvMcoHsNAFA+knEXuG+sfcXp2B1Am5t7xXOv/otRc2EMuhuqlpBsh0EPP1ULTuv7XV3TOV/T0AHwOYpsqb0NqelcCVwBs9mIN5J02m8OBS8UHjeaK3ss6/3kjgvP+1TuGfTlFETxX0LF6MyMFwh9KA9HAvMpEffqqDE6dT9Fz4FR2Z3y/QqZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eBl0mJSRDS/gmj9JGidwdWBXF9hWDjcUwlr67UBTYvs=;
 b=kwwSNvVHSf4fbw2r4MW31xzNsD2JGT88vmV3irnszACK97H9gv/SlsO0KJUNYcu8oMigm8rLoEJwPy6BATApffDwKbkvLn9Ucx/x4zZ0KTZI9hXXdqU2BTl9AK4Bufzeeec/WQf2mZvj65cZmrudptKm77cq8KWN+eyG/pv89gyORpEm8rIWMTn3DuabHJaD5LYKCXoyzZnPjgA7j+vWhEzK4jMdG9YjVV3SNQkk0qCzAH0GxsHIiIWPBnzM2Et6yywtSML4k3BOXYSfQ/79Bg1MGUr6u43ViuSQLn4nM9FQ0LLyW8GXCG4XdTMZBDqOE6zHBbCcSssskiYCMpM3jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eBl0mJSRDS/gmj9JGidwdWBXF9hWDjcUwlr67UBTYvs=;
 b=qk+Xg7stJ5Fd+OT8wK3tkpGQwSg6ZxGTaeDcVE5gKkRaMXL7HYWUy77804yIwhvqf26gCh0XhMWbl09lmoq+lhv7EfKxXZ2AqKxOcpZDM3Is9se62mlx71GDlqtKQJMftgjIRFd7Bda+bQG+P4w0m+7KXIuZISNljx2bxVBGPLVJRUbnaNtg2rRNsd8fwCD+JalbZgbI+0DfNwF5YgFe2MWeaGFy9W1Wt2oOhvvJJqFpzUmftqaMtZd7RCrfHb7TBfK0/gug+1CjizEK3DwGK/sr8AmNGLXTWeeaYYlypwhZtcxy3T8SfZUMBi80FjThbi1Ycmq9kj8iv9gICFlVdA==
Received: from PH7PR12MB5757.namprd12.prod.outlook.com (2603:10b6:510:1d0::13)
 by CY8PR12MB8361.namprd12.prod.outlook.com (2603:10b6:930:7b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.14; Fri, 26 Sep
 2025 14:41:31 +0000
Received: from PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632]) by PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632%2]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 14:41:30 +0000
Date: Fri, 26 Sep 2025 11:41:28 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20250926144128.GD2617119@nvidia.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
X-ClientProxiedBy: YT3PR01CA0099.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:85::19) To PH7PR12MB5757.namprd12.prod.outlook.com
 (2603:10b6:510:1d0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5757:EE_|CY8PR12MB8361:EE_
X-MS-Office365-Filtering-Correlation-Id: fa11771e-e86f-4ce9-a124-08ddfd0ac7c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MURydGtvQldpYmoyU3NOSWszR2E0N3dDaUZva3IvZEtnN0JZNEo5SXhySWZI?=
 =?utf-8?B?TGoxdXVVMDV3VjdyY3pLWUQ2REUveGlNU21JTkZqMkRDWEY2UDRMVHVkdlk4?=
 =?utf-8?B?dUhmdzl5TlhtZ01YZDl5YldTd3hJUkt1WWpKNGtBdFVNSkd3RWhaRjdsMXhv?=
 =?utf-8?B?bEN0N1RKQzR3MmNzYlYvcG0rV2IrUEVIa3ZyVnp5bVNQS21OR3JFZmdxZWY2?=
 =?utf-8?B?WjVJZlJBYnJXem43MkpRZ3Z1MVVzVDVJZHd4NGttdVJJNjBSdkZraHNrSUxu?=
 =?utf-8?B?RCtIY0pTZ2xzSExsWUxUWFFuN0M4TVpZdEx2NHJBcUI3RDZtU3hmM0svNHRX?=
 =?utf-8?B?UDZ1YXllbHB4Rlg2SnJOZ2tuWmJmd0x0aVg1dzkxYXQ1bS9HaG9tbVhxanhD?=
 =?utf-8?B?ckpMaUlUWmtPb3Nhb0xvc3NaMTFWVTdiRS9UOVBkblJsQkRZTTlId2IyL3ZL?=
 =?utf-8?B?aWtZU0wxSGM0d1loY29qNXo1KzNkQjlGbUtac1Q4MkR4UWFZd3hkKzltQmdP?=
 =?utf-8?B?R2xRaTRjbVQrUVkxUnE2c0hKVFJLenZoUUFZVW02ZnpBQ3AySDlRTXRXcCty?=
 =?utf-8?B?QkxyQXUrOGpJUXVTMGp4N3p5KzVURXhadE1TanE4bmtiU3d6VVdidXZBREN2?=
 =?utf-8?B?RTZGVnhrZG9QU21jMjRTYjhFdXY4Z3owVmhLR3VHNDdKbUl4TkFWbzYweUZZ?=
 =?utf-8?B?d09TaVRGN3NQVzBEWE95RVlaSFJDRkNvZnNUOGpnWHBnMTBVaE9ocDAwY204?=
 =?utf-8?B?YnBhbzR2TDh3N3VJV1Q2VC9YSW5qUngvbDZzazZwSlJlVTBBbkg1ZUVJazBj?=
 =?utf-8?B?QUhUL1IxczQ2OGVFVWFjR05rQktkTmxjY0Y0N2FBRmcrM0lkQ3BWUHNZUVQ2?=
 =?utf-8?B?MlJrdWg3YWF4RU1NbnUxaGdlVW1tQmNVdWJSQ0FHdkoyNUhmeTRTVzFFbFkw?=
 =?utf-8?B?blo3THhDRnBlSmtrSXpDenlrUGdqRmRCTW9DNkdQRWtsbVhIUDBJNXp6K0g2?=
 =?utf-8?B?azhQbEZ5cW1mTGN1eWNDcUZCQks3SlJaQk1iR0lOeXAvc3V2QStzYjJJVi9D?=
 =?utf-8?B?R2NDdEpOUDF3dkVEMGFJcXVycUJ2WjJpcUhCdXJuZTJsZkZrTjhIUnR5Y2da?=
 =?utf-8?B?SzdNeWFCQVJqeDM5dncxbnhNbFQ3djJkWnp5OHZ6cnB1WkRhdmNFSUh3VnV1?=
 =?utf-8?B?RFBlOTJNUGVyeWhwRXlYMnB4cnhVaTQ5Q1pjNWpwZjh3d004Yi9xOCtibEFK?=
 =?utf-8?B?K2R3bmJmQnJ5UkttZkNpK3VSdmROdnVacnhKNmhGTGpZMC9LaXh4WG5pUEY1?=
 =?utf-8?B?SVNPWHZaYmVGYnlCcmFEczBRNUR0bVQ4VGFHb1poMkxHOWxjQ0k1TXl4MGpW?=
 =?utf-8?B?VkxTaTBqaDBRTGQzdjlSRWxkL2I3dThQSnllRU1FUEFYcEx0QjNVVERRL2tm?=
 =?utf-8?B?OTJUTnR1WjByZno3WWp1dlloZ2lLUEZMb2xtSzVMaGE2MlVRVGJNZXBzdUdY?=
 =?utf-8?B?c1ZaZldMUVM3NGJ5cEtXRCtrcTVTd3BGa1pYaGphMUJheEhTdENHODdZRGJX?=
 =?utf-8?B?aStJc2NQKzVSekdxMnF6RlFvS254UGd0Q2djNlZkait6Ull4TVJZSkQ0NWIr?=
 =?utf-8?B?ZXBxWnRFSGgvM0VnQXlOdnB0ajFwY1h6c2I1eklTM1dCQUV6UFRBNGZyNkdL?=
 =?utf-8?B?TmU3UktjZ2dIK0Q5MUlRdzM5Mk1GNDJYeTYzWCtDQ3hHTDBxT1Zham1VV0R4?=
 =?utf-8?B?Zk9sejRzb0UwSlRRWlVGcXpDTjhhTWZlSWpaMkpCRmtqanRWMnRRc2QzdFZk?=
 =?utf-8?B?cTZ2K1dQWnUzMTRwSXdaSTBiRnNVS000bVd5UWxBZ3VDdjFOUEtDb2hjVUFI?=
 =?utf-8?B?WnB0S050bENYK3Y5d0dpOHBmNnpjNFVhMkVvM2NldjBnWnovYkN2VDQ2VG91?=
 =?utf-8?Q?aPKzI9lPkxo=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5757.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UEtPTUJsYUYyUXIyOEFacHRyY2prTlhEZDFuUWdsTDlIOXJIWk1YaWROd1BI?=
 =?utf-8?B?NTQ0cVZnM3c5NHVZMzZERnIrVW11NlF4OFAzOE02RXdEVmdmK20vRS90VTFm?=
 =?utf-8?B?VEVjMC8vSFcxc2VZd3FheVJMMStlM3RWcDRrdStTcTlESFpHZlVRTysydC9E?=
 =?utf-8?B?dXRtNHFMUE5ndk5xQTczYlBORUFJdndaR3p1Z25vMTZaMXNpSkRzUSs4bVRT?=
 =?utf-8?B?U0ZLQ3hzeStSYVl5eWNJYzF4dE9reTI1MlVGMTBPcUxPQ00zNzJlVjhnVmp1?=
 =?utf-8?B?aWJoMDFicm0vNk1aZFBnWWJ4SjNsNUFwQWJ0Y0ZJcVJjQm5qUmYwWU5zM0Rz?=
 =?utf-8?B?eWVnUlBHeVpBbXRvSEY5TWdVcmUrZXZ1d29LaGVRTWFuZW9jQnFtZFZOVHdH?=
 =?utf-8?B?aXgyck9ZYStTdERaOGkrVExGeW5hZmtmbjN6SGNoZzNxT1pEVlRkUE5Ua21u?=
 =?utf-8?B?NDVzVEJ1aVlodWRlQy9oV1lFMkN2d2VMWEc4YnV0akRWUFlZMlFDWTltVFow?=
 =?utf-8?B?WUg5aEFsQ29wWjYrOW5HR291bk1OYlkzVStJSXRhTjJBWG1lNnphaFFvNHgy?=
 =?utf-8?B?K09PYXhPc0NQeHlWT2VHTTE3QUxFSENyMHliM1VBZy8ra1BDYWhMWUxPOW01?=
 =?utf-8?B?ODJMaGZFVmkxOWdUdEVQR0lNWXVJMmFmMnZBQk5DWmdTd04rN1hxNytPdTZS?=
 =?utf-8?B?KyszdkZyaFF6TGFJZTE1VzZxTit4Z2V0S0J0ak0weFBIRG9iR05BVytaV0ZE?=
 =?utf-8?B?YWJFbmZOYlk2NlFPUk9oZHFJY0o4Wm95bWFxazltZzhuWmI4amlvZ1VUaEo5?=
 =?utf-8?B?MU5rTFZjSHZMbS9Bc0UvMUJscUVkVXlKZlRsdzlHdWNwejF3cGRrNy9Cc3Fa?=
 =?utf-8?B?cU9lVnFMQXpEdm04WVZXYTdRNDFDMHFSWHJsTnBvZ0xzaFI2anFEQ2FwUFVm?=
 =?utf-8?B?OWp5eXpmbEdLdHNhT1c0cXZWOGR3QXhUdy9oVzluS1dHWmgra3cyNmJVN3hw?=
 =?utf-8?B?b08xdkErb2NCYUlRSktEcFhFRWFJanBFSXFPY1RPeEVGQTlra0dJY2JndVdU?=
 =?utf-8?B?SEk0UXJKOFpWVEcrVkJyWFFXSWNLSy9aVVhGaEw1WlowZGd4eDlKMkdsdTdn?=
 =?utf-8?B?SHZxbktPTGpTWjFqSVpJdGVBUjU1SXhmQSt6ejlQSFZZY0w5M0Z6Zi8rTVAw?=
 =?utf-8?B?UGV0ZVpORjVKVFE0eW1yT2hvdlpPME9MTVUraVZoZG9qUkZNakgxZS80VjRF?=
 =?utf-8?B?Y2Z6VnVRdFN5OUNVN2xlVnJxYi84SjR3WDRSaUp1LytNU29uQzZMN01tekMz?=
 =?utf-8?B?VkRIeHRjTThSbXF6SDRWbW44bU1sNGZUU2FwdmNwZWVJSUljbGJTQVRIR2lq?=
 =?utf-8?B?OXFLWERNK2tqTHBpSWpiaGoyc2p0OEtVNElTYkJ4aGRrT1pURkk2eW5NcXMz?=
 =?utf-8?B?YU9qN2MxdUdTaHIwTkdRS240TUVXd0lqdVJPdnFIUENQSWVsMENNNWlpM01s?=
 =?utf-8?B?Vk53NHM3dDJVQzAyYzgzRE1mSnVIank0aHZIRzN0dGl6VFpVY0FnMnl5bEtQ?=
 =?utf-8?B?R09laTZDRDl6N09EOUpnd2JNamtZNWViRDQwSVJ1Wkt5RktlSHVNSnpyZWxh?=
 =?utf-8?B?NlNMdWxDQTJzaVFrYnUzbmlaS1dXbDBjQnRhcFpVcHRpTFBpUWFHQ01WbnN4?=
 =?utf-8?B?NmFaMHp0cFBXeUVyZW93YnV5NEkxZDFPMjNTNU1VbUxsazVMWmF2enRmdkpI?=
 =?utf-8?B?bFkyVjE0bTBsVGNIZm9lSENuWFk1bC9SVUJmRVN1cWxMenYyZVRnVDlwcnMy?=
 =?utf-8?B?ejJUa2U2SExHVHlMNVA0SDdkWU1ud253Yi82dVRPeENTTmVZZ243dHB0elVI?=
 =?utf-8?B?WGdlZkh2YmlZUDJBMTFVU0d2QkpTV3VDTVJydENCcjRDUUowVGFKS0kvUGg1?=
 =?utf-8?B?MzJtaExNMFBGK2p4bXFjeEQzcW03UUZoQmlzampDNThlSEhUbE9iS2tCZUhQ?=
 =?utf-8?B?WnFqNStkZWwydkwrQzZBTE5EMXdMZjlidVFZRnphZzYyQ0FMNnlNaGhaY3lm?=
 =?utf-8?B?WGdXU3c3TnViZXlGYUl4RGZZYWxlRXFWb1NHMWNGblp3OWpSV0JqUGpqTWN6?=
 =?utf-8?Q?K34I=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa11771e-e86f-4ce9-a124-08ddfd0ac7c4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5757.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 14:41:30.1051
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QriFEXlEOqwtL60zYQgBMYuyCV1D4rcsjI4bHg4WDCI7+vRIHXQU5R3oF9FbQbw0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8361
X-Rspamd-Queue-Id: 980083F729
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_LOW(-1.00)[Nvidia.com:dkim];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.52.71:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BOBVM5AZKVMKDVQPE4UA2GXLVLEBOQFM
X-Message-ID-Hash: BOBVM5AZKVMKDVQPE4UA2GXLVLEBOQFM
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BOBVM5AZKVMKDVQPE4UA2GXLVLEBOQFM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBTZXAgMjYsIDIwMjUgYXQgMDM6NTE6MjFQTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gd3JvdGU6DQoNCj4gV2VsbCBib3RoIGV4cG9ydGVyIGFuZCBleHBvcnRlciBoYXMgc3BlY2lm
aWMgaW5mb3JtYXRpb24gV1JUIHRoaXMuIFRoZQ0KPiB1bHRpbWF0ZSBkZWNpc2lvbiBpcyBkb25l
IGluIHRoZSBleHBvcnRlciBhdHRhY2goKSBjYWxsYmFjaywganVzdCBsaWtlDQo+IHBjaWVfcDJw
LiBBbmQgdGhlIGV4cG9ydGVyIGFja25vd2xlZGdlcyB0aGF0IGJ5IHNldHRpbmcgdGhlDQo+IGRt
YV9idWZfYXR0YWNobWVudDo6aW50ZXJjb25uZWN0X2F0dGFjaCBmaWVsZC4gSW4gYW5hbG9neSB3
aXRoIHRoZQ0KPiBkbWFfYnVmX2F0dGFjaG1lbnQ6OnBlZXIycGVlciBtZW1iZXIuDQoNCkhhdmlu
ZyBhIHNpbmdsZSBvcHRpb24gc2VlbXMgdG9vIGxpbWl0ZWQgdG8gbWUuLg0KDQpJIHRoaW5rIGl0
IHdvdWxkIGJlIG5pY2UgaWYgdGhlIGltcG9ydGVyIGNvdWxkIHN1cHBseSBhIGxpc3Qgb2YNCidp
bnRlcmNvbm5lY3RzJyBpdCBjYW4gYWNjZXB0LCBlZzoNCg0KIC0gVlJBTSBvZmZzZXQgd2l0aGlu
IHRoaXMgc3BlY2lmaWMgVlJBTSBtZW1vcnkNCiAtIGRtYV9hZGRyX3QgZm9yIHRoaXMgc3RydWN0
IGRldmljZQ0KIC0gIklPVkEiIGZvciB0aGlzIGluaXRpYXRvciBvbiBhIHByaXZhdGUgaW50ZXJj
b25uZWN0DQogLSBQQ0kgYmFyIHNsaWNlDQogLSBwaHlzX2FkZHJfdCAodXNlZCBiZXR3ZWVuIHZm
aW8sIGt2bSwgaW9tbXVmZCkNCg0KVGhlIGV4cG9ydGVyIGhhcyBhIGZ1bmN0aW9uIHRvIHJ1biBk
b3duIHRoZSBsaXN0IGFuZCByZXR1cm4gdGhlIGZpcnN0DQpjb21wYXRpYmxlLiBNYXliZSBzb21l
dGhpbmcgbGlrZQ0KDQogICAgc3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0X25lZ290aWF0aW9u
IHsNCiAgICAJICAgc3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0ICppbnRlcmNvbm5lY3QsDQoJ
ICAgdm9pZCAqaW50ZXJjb25uZWN0X2FyZ3MsDQogICAgfTsNCg0KICAgIHN0cnVjdCBkbWFfYnVm
X2ludGVyY29ubmVjdF9uZWdvdGlhdGlvbiBpbXBvcnRlcl9vZmZlclsyXSA9IHsgLy8gT24gc3Rh
Y2sNCiAgICAgICAgWzBdID0gey5pbnRlcmNvbm5lY3QgPSBteXNlbGYtPnhlX3ZyYW19LA0KICAg
ICAgICBbMV0gPSB7LmludGVyY29ubmVjdCA9ICZkbWFidWZfZ2VuZXJpY19kbWFfYWRkcl90LCAu
aW50ZXJjb25uZWN0c19hcmdzID0gZGV2fSwNCiAgICB9Ow0KICAgIGlkeCA9IGRtYV9idWZfbmVn
b3RpYXRlKGRtYWJ1ZiwgaW1wb3J0ZXJfb2ZmZXIsIEFSUkFZX1NJWkUoaW1wb3J0ZXJfb2ZmZXIp
KTsNCiAgICBpZiAoaWR4IDwgMCkNCiAgICAgICAgcmV0dXJuIC1FT1BOT1RTVVBQOw0KDQpUaGVu
IHlvdSdkICdpbnRlcmNvbm5lY3QgYXR0YWNoJyB3aXRoIHRoYXQgY29tcGF0aWJsZSBpdGVtIGFu
ZCBnZXQNCmJhY2sgYW4gYXR0YWNoLiBVc2luZyBjb250YWluZXJfb2YgdG8gZ2V0IHRoZSBzcGVj
aWZpYyBvcHMgd2hpY2ggdGhlbg0KaGFzIGEgZnVuY3Rpb24gdG8gZ2V0IHRoZSBhZGRyZXNzIGxp
c3QuDQoNCiAgIGF0dGFjaCA9IGRtYV9idWZfYXR0YWNoX2ludGVyY29ubmVjdChkbWFidWYsIGlt
cG9ydGVyX29mZmVyW2lkeF0sICAmZG1hX2J1Zl9hdHRhY2hfb3BzKTsNCg0KICAgaWYgKGlkeCA9
PSAwKSB7DQogICAgICAgICAgeGVfdnJhbV9vcHMgPSBjb250YWluZXJfb2YoYXR0YWNoLT5vcHMs
IC4uKTsNCiAgICAgICAgICBzdHJ1Y3QgZGV2aWNlX3ByaXZhdGVfYWRkcmVzcyAqYWRkcnMgPSB4
ZV92cmFtX29wcy0+bWFwKGF0dGFjaCk7DQoJICBbLi5dDQoJICB4ZV92cmFtX29wcy0+dW5tYXAo
YXR0YWNoKTsNCiAgIH0NCiAgIGRtYV9idWZfZGV0YWNoX2ludGVyY29ubmVjdChhdHRhY2gpOw0K
DQpJIGNhbiBpbWFnaW5lIHNvbWUgc2NoZW1lIHdoZXJlIGlmIHRoZSBleHBvcnRlciBkb2VzIG5v
dCBzdXBwb3J0DQppbnRlcmNvbm5lY3QgdGhlbiB0aGUgY29yZSBjb2RlIHdpbGwgYXV0b21hdGlj
YWxseSBsb29rIGZvcg0KZG1hYnVmX2dlbmVyaWNfZG1hX2FkZHJfdCwgc2VsZWN0IGl0LCBhbmQg
c3VwcGx5IHNvbWUgb3BzIHRoYXQgY2FsbA0KZXhpc3RpbmcgZG1hX2J1Zl9keW5hbWljX2F0dGFj
aCgpL2RtYV9idWZfbWFwX2F0dGFjaG1lbnQoKQ0KdHJhbnNwYXJlbnRseS4NCg0KPiBTbyB0aGUg
YWJvdmUgZnVuY3Rpb24gbWltaWNzIHRoZSBkbWFfYnVmX2F0dGFjaF9vcHM6OmFsbG93X3BlZXIy
cGVlcg0KPiBib29sLCBleGNlcHQgaXQncyBub3QgYSBzaW5nbGUgaW50ZXJjb25uZWN0IHNvIHdl
J2QgZWl0aGVyIHVzZSBhIHNldCBvZg0KPiBib29scywgb25lIGZvciBlYWNoIHBvdGVudGlhbCBp
bnRlcmNvbm5lY3QsIG9yIGEgZnVuY3Rpb24gbGlrZSB0aGlzLg0KPiBBIGZ1bmN0aW9uIGhhcyB0
aGUgYmVuZWZpdCB0aGF0IGl0IGNhbiBhbHNvIHByb3ZpZGUgYW55IGFkZGl0aW9uYWwNCj4gYXR0
YWNoIG9wcyB0aGUgaW50ZXJjb25uZWN0IG1pZ2h0IG5lZWQuDQoNCmFsbG93X3BlZXIycGVlciBz
ZWVtcyB0byBpbmRpY2F0ZSBpZiBzZ19wYWdlKCkgY2FuIGJlIHVzZWQgb24gdGhlDQpzZ3Q/IEl0
IGRvZXNuJ3QgaGF2ZSBhbnkgbWVhbmluZyBmb3IgYW4gaW1wb3J0ZXIgb25seSB1c2luZw0KZG1h
X2FkZHJfdD8NCg0KSW4gdGhlIGFib3ZlIGxhbmd1YWdlIGl0IHdvdWxkIGJlIGFuIGludGVyY29u
bmVjdCBleGNoYW5naW5nICdzdHJ1Y3QNCnBhZ2UgKicuLiBJJ20gYSBsaXR0bGUgY29uZnVzZWQg
YnkgdGhpcyBJIHRob3VnaHQgdG91Y2hpbmcgdGhlIHN0cnVjdA0KcGFnZSB3YXMgZm9yYmlkZGVu
Pw0KDQo+IElzIHRoaXMgdG8gbm90IG92ZXJsb2FkIHRoZSBtYXBfYXR0YWNobWVudCgpIGFuZCB1
bm1hcF9hdHRhY2htZW50KCkNCj4gZnVuY3Rpb25zIHRoYXQgb3RoZXJ3aXNlIGNvdWxkIGJlIHVz
ZWQ/IElzIGl0IGJlY2F1c2UgdGhleSByZXR1cm4gYW4NCj4gc2dfdGFibGU/DQoNCkl0IHdvdWxk
IGJlIGdvb2QgdG8gYXZvaWQgZ29pbmcgdGhyb3VnaCBBUElzIHRoYXQgdXNlIHNnX3RhYmxlIGlu
IHRoZQ0KZGVzaWduLi4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
