Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Ed5CLDwcGk+awAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 16:28:48 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B1D592F3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 16:28:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7636D401B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 15:28:46 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013032.outbound.protection.outlook.com [40.93.196.32])
	by lists.linaro.org (Postfix) with ESMTPS id DE47F3F7BA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 15:28:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Zq2XomQY;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.32 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E08DXAPBPMwwz9P90LfK26h4LRqe3iuveW6z303H1J+wYopCle1I38N2sYNwKcHGk4Di/j8sAnPKYv4RpvLgylASyDiZu6KhMVWFntQR2SbQB435KnNrKnnjWikK+dYidd1vnB6iRl+ApBkT/ZImviUcpDE8XPTJZRJaTKVXHsEWiJDnAQ0HRDUlvktbzx+Kx7JYMLwbD8J6qO7tBdWoWPEjfVYRKpyjAPeQ0CJccxaaoidr518gHBCcckNlcoZVpgZo+i3IKFsaVtzUoaPzG9oHYIobOc61klkl72VMnYYtZH4dQPu7vQ+61w91lnMPuNh/wQLeMBb6HfQLFmrRWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZclmBqj4Mr0Ba4rvFM9PQ0OGYmWIrQax2yR3AVlCtWY=;
 b=u0VuVEnFGmPKwb8Qbf/m0kYkvT3SgfKRab+hOR7iyN7H9jcjN1j6cDFg5sIlig1eH+E4XF4OT/G0p9ybqcZMgd46uoZ2XrGxoSZkAXmdYiRqQ4eApgjjfasA76rDGA/2EigqNo9BCCkc/JfzxeFAXUtIYPm1XvloVvtfrTv0HouD2JopHxeZtFWMBjmxHLP4ZLj6ZcPIyEkrA0I5Xj4av04CLFdWxgs+YVI5qAfd2Q9vWW46H18kdQhvKGvTCw4SJ2nptYW5BRBqceSPOIllX1MxCkxKVKGKlMA7EZVm8hUA3uGvdjMMx2r4bsD2STlXy8565R+hG79YcgmKEtGCRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZclmBqj4Mr0Ba4rvFM9PQ0OGYmWIrQax2yR3AVlCtWY=;
 b=Zq2XomQYy7PshhH21Sk8ceOisEClWvWtgKNLWIycknhaSS4/OxkMXrgt6PqfBPe5nKrpYdWdhEEINzlieyHJpsO/3iRax1XgBBnuYz8Ledh3Wa8zwGld5UvgTidKGWwXgMuv/h3Vyh0ndQFBvDPkd7g9NvgRNRg7NcuueAxLQWg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV9PR12MB9760.namprd12.prod.outlook.com (2603:10b6:408:2f0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 15:28:37 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 15:28:36 +0000
Message-ID: <b88b500c-bacc-483d-9d1a-725d4158302a@amd.com>
Date: Wed, 21 Jan 2026 16:28:17 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
 <20260121133146.GY961572@ziepe.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260121133146.GY961572@ziepe.ca>
X-ClientProxiedBy: FR4P281CA0004.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c8::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV9PR12MB9760:EE_
X-MS-Office365-Filtering-Correlation-Id: b12601c8-a27e-4ba1-b9c6-08de5901beba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NzBmVXlPRSt6S3NDUE1TdlE5KzRuUlFEOVdKb1U0VC91czhBR3l5SEcvRzVu?=
 =?utf-8?B?SWtwbkswV1pObC9oTEt4YXZvbUtZTEtSYlppWGl1ZVhlc3FveGx3amVMK3Ew?=
 =?utf-8?B?OXEwQlFNVjBTQ2dhZTczMHFjRHdRUHlRK09IWGFFU1Q3dmh5LzFoVkNyY1Vj?=
 =?utf-8?B?emQxZDhzZFdrUFUrcHFVYmRnVjdBSGJycTdXSE9COS9JVW1OZG4yV1B0dFIw?=
 =?utf-8?B?aklyS0lWd1E3bUluYU1UWFNYSEFkWWhzQVZDT2I2UkU5cDZydmpQaWxKQnNI?=
 =?utf-8?B?NmxIZ1F6RUt3VzNlYVIzN0JLU3hCa2xNMmNaWE1XQ2RsVGFUNk1BdzR6UmxN?=
 =?utf-8?B?SExnaVV3T29wVEdrbGFzZWtrLzRKaVd1b3hTclEwckgzOUNXMW9YZmhVQStN?=
 =?utf-8?B?eEtaTDZMMjdMeTJYT3VRaURRMHNTdW1kZnVsQ3Naa2FaeW5wdnBCM2k3RlN5?=
 =?utf-8?B?bUszZU93aFlheiszODY5b2FpY3hiNUMwM2psRWJSYjBYclRLaWRFWkdhQUs5?=
 =?utf-8?B?cWJVcCtmZUhvNWMzR3pqSnRtQnFrN0h5UzFPSnUwUUI3ZUhSZllmTldMQVB0?=
 =?utf-8?B?Y05LY1h4WGZrUUhwdmhlb0k3azNJN1IzNkxVeEJ1ZHkxTHZNc1ZhT0ZTNGNu?=
 =?utf-8?B?VHRrME5MRUZCZ2Fha1NYZ0U4SGZXclNrT0tzaHVldnFicEVLZDU4QnA1Szkx?=
 =?utf-8?B?SVByNWk1ekJ0aVp1RExWWjdEVnV4endqQUhEU1lSWkdFUVVyVHRnTk8wNUwx?=
 =?utf-8?B?aDQ2WUtUNmk1OHVBQUFKKzA4eU5yMmV0MVY4WkNJRUNQUDRLOGd3VFI3VVlz?=
 =?utf-8?B?SFg4WGlGN3QvOVBlaWRnOC9xTVJpT2Q4eENUM2RNWHpiVEJpYmlBSHpPdzlG?=
 =?utf-8?B?R29JZUZPZ000VmJsU1NtVlNNbXd4d3lCZUxvVEdWRi9TZnF0cjhTVk9yWmFS?=
 =?utf-8?B?N2RzWTEwZG44TEZtLzRBejJDZVJIQTN0VTBreGNnY0tBRTlsUElCWHMyblNN?=
 =?utf-8?B?c0ZHczl6T0h1WSttcmFpc05NK3JjbzVJN0w3bHJvT2xKQXN4WGROUzNRa2JE?=
 =?utf-8?B?S0FRRTlxbDlDQ2JXK3NqY2NyU0gxQVNDWmdSdVZUTlJpNzJlWk91bm1ZT3hQ?=
 =?utf-8?B?aVpyd1pDNk5PbEp0OTl1NHBkKzZkODRrQi8rdWxuZEd3eU1hbkZDNSs0aHlX?=
 =?utf-8?B?Q0YyMEh2OXF1ZHozdU1uUllJM0ZpSThQQVM3NDgwdmt6VDMrZEx2dVNLckFX?=
 =?utf-8?B?cHRDclZEYXVLQkgzRkM1SkFBbVBWZVlKcDNwRklCVXdlQ3IrZmpOYXVVQkR1?=
 =?utf-8?B?dHVDMnJOUUd3MS9kaEdoV3J1NzZDaGd0SmVkRmgvdXdXTkpjM3ZQdUt2eTlT?=
 =?utf-8?B?YTg3ZzZkRGMwRnl5RHJValdsaTNVL1FwTXFiT2FiSUJ1U1EzeHFQbDJwS1Va?=
 =?utf-8?B?bDYzMEg4WkdmdFNON2tPRUhJMGRlQ1lIbkpqVFMvekRrYmducTRlNi8vK3FJ?=
 =?utf-8?B?Y0RwUlZZZ3BxbTlSR3RWTmRZZDJQVjJnN3k5eldCdXd2WC91eGdNM2hORXlB?=
 =?utf-8?B?cTdPRGwvRTBzdXMydWtrZ2NicFZCWnZHOWV1MjF0aTRlQlV2bllYOEpSbDJ5?=
 =?utf-8?B?RGNJUDZ4WHZmUTNUWkhZd1QydmxCVW5SL0NTalI1aTFmbWtGbnptZUtzQjJ6?=
 =?utf-8?B?UlZvaWZ3V082RVVJRnVyTThtMHUvVHRrTlhXMktQQWlscGJEODFMNjZsSUZl?=
 =?utf-8?B?Mk43OTluU2RxQmxoS1UrTEtGbEdLNEJCRGs2dnpmZ0N2RERobmtMLzQvNzdC?=
 =?utf-8?B?MVZCR2xZYktreGlpVlFGYjhNcnhaSEp6OGgrRDF4YWtwTU5SZzRxSjc4QVlM?=
 =?utf-8?B?QVVtUjM2TlhCMytzY3E4U3FYWEF2clU1SG5wWUphTCs3UGkyTlN0bjl2UitF?=
 =?utf-8?B?NE9KZ3c4bG9VUXRpNThNM3J6ZEF0YXlGcEhjd1o1b1owNGxUSlFNcE9EUHA4?=
 =?utf-8?B?b2FQMUVIbFl4Z1F6VTBnSzBvbmRsZ0N4TGZGRUNFTG5md2Q3ZnUxMmtQM1J0?=
 =?utf-8?B?Zjhvd1loQUcwUWxMc3YwVmdDZGMwYXZKRVRQdUtheHBTeHE5eWw2ZFRDSURk?=
 =?utf-8?Q?r/vM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VW9YbEpNbDNhQm1OOHliL3VkOEhHdkFVRk1pd0FEbERmNnltc3NDaUFUYm4w?=
 =?utf-8?B?eGpXaDQxak5US0dxd29TWXZxenVKUmxMbkNmK3BJelA3V1JMRldlbGdEVGxx?=
 =?utf-8?B?Unk1S1lxNDNNYXY0SjVKejNNbURpVERWT0xEMFlobzhVVVpSY1lBSHNTeGxv?=
 =?utf-8?B?SDZVVHB4VXVOT2ZxZzdGOVczeVI2RmYrREVpT3dyYmkyckNwTmRHQ3I5cW9l?=
 =?utf-8?B?UzVPUXFoWjJEZE00V0tVU2dXaGxiUDJISEd5R1JQMU5KQit0TlBBM1VTV281?=
 =?utf-8?B?SjRBV3p0MTNTMlRqUzJmSnNmbzdETGtxbUdQaUJYZll3R3lVanBhSC9KWWNq?=
 =?utf-8?B?cHRBNDRPN0RlakF1OVBFeXNjOXV4M2k3V1hVRm5PSGJZaFVMaFRQazBjYnZv?=
 =?utf-8?B?T24rdk54UHYybTZoMmVYVWhaUDhPMGN3SVB1L2R4K1ZMcFBLYlN1aFd0K0V2?=
 =?utf-8?B?aDY3eEVRQzdBUVdnQ0M4OEg4dyt3SUxTYTBxcFdRS0N3UHRkdDIxLzVKN0NN?=
 =?utf-8?B?WjdkYmhQekhaN0pXL2tTNVgrMittdHNBOEZWNEdsdjVOcmdOdDcybW41Rkwy?=
 =?utf-8?B?WG5xRWg4MlJacUZ6R3NkbTNaRlllRk5rS1IrWitFRDVkZFg0bWtyUmpZblRP?=
 =?utf-8?B?NThzVUNTajI0aEhDVnZZVmUrN0J5NjdEeC9paERKcVVGNCtOUWdGdkZYWVdq?=
 =?utf-8?B?bHhMVkRDQ3kxSVBSN1FqR2JjenlYeFQ4R1JMZndRakkySXVDVGtuV2kvdGx6?=
 =?utf-8?B?UXVENGtuR1g5cy9tTnA1MWI1UVRiVit0Y1p0S3NCOERUY083T2V0QzA0aFB2?=
 =?utf-8?B?bm8yM1h3b2lnMVF6bFY3bjFiKzVQcFRseStLcEVqNHI0OFo5cnNNSU5adHh0?=
 =?utf-8?B?SXlmM1lmUXVGaytCZlRFVWNlK2NESW5YVmhRT0hsM2lwRHNuZDhFcC9vTHZW?=
 =?utf-8?B?SHkxaXRGcjdOck8xY29URUVjRGwzbE81eDZzOGNsVXc4OEJuMHNHTkRYZGdD?=
 =?utf-8?B?ZWRoOW1MZysxaFFSL3lhbWZOYnlCL2pINVZYTTArMU1IN2FlRzN4UlA5VVhv?=
 =?utf-8?B?V1d6V1NLSjRUVVJFTE8yMzlEaFhXdzN2WW55cG1DazlWamxKcnJ3QUN0b093?=
 =?utf-8?B?NG15cFZOL0U3SG5QKzBBVVQ0MDR5aURQaSszcTdDaFJXd2dVcFBKVnB4Ylcx?=
 =?utf-8?B?MEQ5NkRiU1dmbStnaFJuRWJVdnpKWGNoQUEybVNsT3pCS3ZmWEg1OWljYStt?=
 =?utf-8?B?Ym1ONmUvNXhzYUJnZ0JZVWNCc2E0bElsLysyaW02bm14U1ZEaFBzbnBEcTJv?=
 =?utf-8?B?cFJXNHB5Q241S0drd1gxYnd5alhFeWIrUXQ1ajd0K01ETDdNWFd2TzFyWlNK?=
 =?utf-8?B?WTIxYUs2aW42dDFXejYvTWdmSDlVanlKYmUvNHBwRWhDVmhCR2tUeTlvTFBa?=
 =?utf-8?B?ZXdhMnU2SGtLcEVmSkxaY2JHNUhKeVRBbE9PQzh1bXRodllXUk9WL1pGVStm?=
 =?utf-8?B?UnFBTzBwMkZJOHoyd0Z0UXhCclNtSTNhMldUaFNPY2lNdjZ6eVBjelBxM3Mz?=
 =?utf-8?B?T0dFTGxhK3BqQi9hcXZ1YkJkTkZrYVlCVjJBcjdwV09HWGxaMVB5MTJTNVRl?=
 =?utf-8?B?cmVVdEJCL1BlZy9XWDRQbU9LKzJsbTZkM2VwcnFRUkFvbmRseFhINWlsYjVp?=
 =?utf-8?B?UVp3bGQycmx4TVJMYmNiOFhCbUFlNXNOQ01CMUc1dk5nUmEzT2ZxanZoOTFT?=
 =?utf-8?B?dTU1dnppQ3E0N3JHWTRSVTl2UitrTS9DRDJBS2Y3YnM1Nm5tU0VjT1BuVWYx?=
 =?utf-8?B?ZEhHS1hFOEVGMGJlU3hrYTF2Z1krYWp4eUV1NzJmUTNTWkZ0M3NHdTdBZHZ5?=
 =?utf-8?B?RmlqV3NVT2dmayt6ZEFqeERteU1GRWplVS9HT1psdFBxN25jUVFkY1dlbE9j?=
 =?utf-8?B?eERmUGptRDBnMk0yWHYyUXUrbXdVa3BpMDUrTFBJem50VlhxdjZsbndSK2Zk?=
 =?utf-8?B?QU93aDNKMDc2aytCaU9KNVNJMllQQmZVRy9HWm0vUXdqN2pxcmU0UFRFK0Fi?=
 =?utf-8?B?TFJWc3Z5bmdLajQ5enUzTHphY1BNYTVLZHV6UzNGazZ4MHpiSXpCNGdpbkNC?=
 =?utf-8?B?OEFzcWZ4U0tUQ1NRK3ZQMFU0L3cvN0JwYmJjZXRMY05td1V0ZWwwc2hPWkk4?=
 =?utf-8?B?YURzVnJSd21zL1hqY2ZlNWtYTCs2NmEvbGZmanR4RGgvZmdyS1Y5Q29xcllB?=
 =?utf-8?B?R3FyNnJ0eE9YckVQQ2E0ekVweFluNDlzODhuQU9mZ0dwQ24welpMZGsvc3d1?=
 =?utf-8?Q?4+ifT9xZ0h73/FkrYx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b12601c8-a27e-4ba1-b9c6-08de5901beba
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 15:28:36.5671
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ows2tTmRAun6pWABXfitH47ZmRTPKjyVVhmTOV4sYjeGisFbSAS/2h1yCH13nVzQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV9PR12MB9760
X-Spamd-Bar: ----
Message-ID-Hash: P6G2PFGGZKZE3WNT6KY57LJXDA4GX54E
X-Message-ID-Hash: P6G2PFGGZKZE3WNT6KY57LJXDA4GX54E
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P6G2PFGGZKZE3WNT6KY57LJXDA4GX54E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,amd.com:email,amd.com:mid]
X-Rspamd-Queue-Id: 82B1D592F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMS8yNiAxNDozMSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBXZWQsIEphbiAy
MSwgMjAyNiBhdCAxMDoyMDo1MUFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8yMC8yNiAxNTowNywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4+IEZyb206IExlb24g
Um9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4NCj4+PiBkbWEtYnVmIGludmFsaWRh
dGlvbiBpcyBwZXJmb3JtZWQgYXN5bmNocm9ub3VzbHkgYnkgaGFyZHdhcmUsIHNvIFZGSU8gbXVz
dA0KPj4+IHdhaXQgdW50aWwgYWxsIGFmZmVjdGVkIG9iamVjdHMgaGF2ZSBiZWVuIGZ1bGx5IGlu
dmFsaWRhdGVkLg0KPj4+DQo+Pj4gRml4ZXM6IDVkNzQ3ODFlYmM4NiAoInZmaW8vcGNpOiBBZGQg
ZG1hLWJ1ZiBleHBvcnQgc3VwcG9ydCBmb3IgTU1JTyByZWdpb25zIikNCj4+PiBTaWduZWQtb2Zm
LWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPj4NCj4+IFJldmlld2Vk
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pg0KPj4g
UGxlYXNlIGFsc28ga2VlcCBpbiBtaW5kIHRoYXQgdGhlIHdoaWxlIHRoaXMgd2FpdCBmb3IgYWxs
IGZlbmNlcyBmb3INCj4+IGNvcnJlY3RuZXNzIHlvdSBhbHNvIG5lZWQgdG8ga2VlcCB0aGUgbWFw
cGluZyB2YWxpZCB1bnRpbA0KPj4gZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KCkgd2FzIGNhbGxl
ZC4NCj4gDQo+IENhbiB5b3UgZWxhYm9yYXRlIG9uIHRoaXMgbW9yZT8NCj4gDQo+IEkgdGhpbmsg
d2hhdCB3ZSB3YW50IGZvciBkbWFfYnVmX2F0dGFjaF9yZXZvY2FibGUoKSBpcyB0aGUgc3Ryb25n
DQo+IGd1YXJlbnRlZSB0aGF0IHRoZSBpbXBvcnRlciBzdG9wcyBkb2luZyBhbGwgYWNjZXNzIHRv
IHRoZSBtZW1vcnkgb25jZQ0KPiB0aGlzIHNlcXVlbmNlIGlzIGNvbXBsZXRlZCBhbmQgdGhlIGV4
cG9ydGVyIGNhbiByZWx5IG9uIGl0LiBJIGRvbid0DQo+IHRoaW5rIHRoaXMgd29ya3MgYW55IG90
aGVyIHdheS4NCj4gDQo+IFRoaXMgaXMgYWxyZWFkeSB0cnVlIGZvciBkeW5hbWljIG1vdmUgY2Fw
YWJsZSBpbXBvcnRlcnMsIHJpZ2h0Pw0KDQpOb3QgcXVpdGUsIG5vLg0KDQo+IEZvciB0aGUgbm9u
LXJldm9jYWJsZSBpbXBvcnRlcnMgSSBjYW4gc2VlIHRoZSBpbnZhbGlkYXRlIHNlcXVlbmNlIGlz
DQo+IG1vcmUgb2YgYW4gYWR2aXNvcnkgdGhpbmcgYW5kIHlvdSBjYW4ndCBrbm93IHRoZSBhY2Nl
c3MgaXMgZ29uZSB1bnRpbA0KPiB0aGUgbWFwIGlzIHVuZG9uZS4NCj4gDQo+PiBJbiBvdGhlciB3
b3JkcyB5b3UgY2FuIG9ubHkgcmVkaXJlY3QgdGhlIERNQS1hZGRyZXNzZXMgcHJldmlvdXNseQ0K
Pj4gZ2l2ZW4gb3V0IGludG8gbmlydmFuYSAob3IgYSBkdW1teSBtZW1vcnkgb3Igc2ltaWxhciks
IGJ1dCB5b3Ugc3RpbGwNCj4+IG5lZWQgdG8gYXZvaWQgcmUtdXNpbmcgdGhlbSBmb3Igc29tZXRo
aW5nIGVsc2UuDQo+IA0KPiBEb2VzIGFueSBkcml2ZXIgZG8gdGhpcz8gSWYgeW91IHVubG9hZC9y
ZWxvYWQgYSBHUFUgZHJpdmVyIGl0IGlzDQo+IGdvaW5nIHRvIHJlLXVzZSB0aGUgYWRkcmVzc2Vz
IGhhbmRlZCBvdXQ/DQoNCkkgbmV2ZXIgZnVsbHkgcmVhZCB0aHJvdWdoIGFsbCB0aGUgc291cmNl
IGNvZGUsIGJ1dCBpZiBJJ20gbm90IGNvbXBsZXRlbHkgbWlzdGFrZW4gdGhhdCBpcyBlbmZvcmNl
ZCBmb3IgYWxsIEdQVSBkcml2ZXJzIHRocm91Z2ggdGhlIERNQS1idWYgYW5kIERSTSBsYXllciBs
aWZldGltZSBoYW5kbGluZyBhbmQgSSB0aGluayBldmVuIGluIG90aGVyIGluIGtlcm5lbCBmcmFt
ZXdvcmtzIGxpa2UgVjRMLCBhbHNhIGV0Yy4uLg0KDQpXaGF0IHJvdWdobHkgaGFwcGVucyBpcyB0
aGF0IGVhY2ggRE1BLWJ1ZiBtYXBwaW5nIHRocm91Z2ggYSBjb3VwbGUgb2YgaG9vcHMga2VlcHMg
YSByZWZlcmVuY2Ugb24gdGhlIGRldmljZSwgc28gZXZlbiBhZnRlciBhIGhvdHBsdWcgZXZlbnQg
dGhlIGRldmljZSBjYW4gb25seSBmdWxseSBnbyBhd2F5IGFmdGVyIGFsbCBob3VzZWtlZXBpbmcg
c3RydWN0dXJlcyBhcmUgZGVzdHJveWVkIGFuZCBidWZmZXJzIGZyZWVkLg0KDQpCYWNrZ3JvdW5k
IGlzIHRoYXQgYSBsb3Qgb2YgZGV2aWNlIHN0aWxsIG1ha2UgcmVhZHMgZXZlbiBhZnRlciB5b3Ug
aGF2ZSBpbnZhbGlkYXRlZCBhIG1hcHBpbmcsIGJ1dCB0aGVuIGRpc2NhcmQgdGhlIHJlc3VsdC4N
Cg0KU28gd2hlbiB5b3UgZG9uJ3QgaGF2ZSBzYW1lIGdyYWNlIHBlcmlvZCB5b3UgZW5kIHVwIHdp
dGggUENJIEFFUiwgd2FybmluZ3MgZnJvbSBJT01NVSwgcmFuZG9tIGFjY2Vzc2VzIHRvIFBDSSBC
QVJzIHdoaWNoIGp1c3QgaGFwcGVuIHRvIGJlIGluIHRoZSBvbGQgbG9jYXRpb24gb2Ygc29tZXRo
aW5nIGV0Yy4uLg0KDQpJIHdvdWxkIHJhdGhlciBsaWtlIHRvIGtlZXAgdGhhdCBzZW1hbnRpY3Mg
ZXZlbiBmb3IgZm9yY2VmdWxseSBzaG9vdGRvd25zIHNpbmNlIGl0IHByb3ZlZCB0byBiZSByYXRo
ZXIgcmVsaWFibGUuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IEphc29uDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
