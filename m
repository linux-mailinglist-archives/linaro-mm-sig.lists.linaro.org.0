Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D0BA8446E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Apr 2025 15:17:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E573F45983
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Apr 2025 13:17:04 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2042.outbound.protection.outlook.com [40.107.243.42])
	by lists.linaro.org (Postfix) with ESMTPS id D6E0143F4B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Apr 2025 13:16:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="jF/YFLVZ";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.42 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CPeK57BVrfWc8VswZM9ml3aHti0Y4O9Mb0D8wicho1+1U4g4PVisDvhuOuv09ifzuh20iZAQlMAZgSAiTTJmDmqH41jzrHKXQkFAictEhIWCx2TnqKWRp8Ofo6F47773RDdXTBetkqiVHAKmKvT0aXO8a7KI8gQld1g8gpfDzlNO2/IitusujWt9NKKOL4hW+zoMBCmFkHrKxqfhT2ny91m0BSKfzRhgtH1n4jUpiW0c1KwO11KWQbL9XtNwBwrUumPEIU9mSh+DtEHGwzFT00LyjSH8DcmzprmMIY7dS5MwgyS+2svisfCXbJ+xb4dLQpkWCZIDBy+NpswY3t5B/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wcf4RDrAGCSBnRefF597cYmJ3PbYb3Pe4imzdPX6TkE=;
 b=YCfn9hETjvwO/8WZ0zpV8sF9SSPhvGG3HQOkDKjQGchqzfQfQ/yAnY5vlOe+5dEY3VtlenIvEG3QiRIH45piOCJ3SroIPZFbESilKz2IXvRPjfJpeTFoJ8hC5u6yyIlpUqm3In9TA8ewxINC2CP7exuLo97LqeRPyRkckPhmt+65JduA5G2CDVSkRf6beaXr9X/TVrkYQ9KRmg7JHYO9NAEw3lMYgW1nutJJmhxKXWSMsRXDanFpW87LFuAcl7A5o8F8lcEu3sPeybYDuk9oD1vCkCbhsPU5m4Oe+kMMKfzKeYfwyLRXkGGWITBQkB05oR0il6mpQHxXkX+wrzx6VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wcf4RDrAGCSBnRefF597cYmJ3PbYb3Pe4imzdPX6TkE=;
 b=jF/YFLVZaAn56hLQHBqGq+c8LQH9YwOW/DUsyPwY55/ep7cbZLnTIGwd33UBzU+MYTEtvM81N1cx2/R9ihtYGPj7uaUDYdBYe+lcr/v1gvjsksM5Uac80kcsPf/StQLwmZ6vjQ0sbxBnEGn/j6DGOCaQRi51TViZ52pqcipEwCA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB8156.namprd12.prod.outlook.com (2603:10b6:510:2b5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Thu, 10 Apr
 2025 13:16:45 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.021; Thu, 10 Apr 2025
 13:16:45 +0000
Content-Type: multipart/mixed; boundary="------------LM0DXO0z16PvcEfueyc1v2b3"
Message-ID: <50c9530d-e274-4f89-8620-16afe0981239@amd.com>
Date: Thu, 10 Apr 2025 15:16:39 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sabrina Dubroca <sd@queasysnail.net>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20250410092418.135258-2-phasta@kernel.org>
 <20250410092418.135258-3-phasta@kernel.org>
 <8583665a-6886-4245-be49-fd8839cfe212@amd.com>
 <c737c89c7ce9174e349c61ab4e5712eee8946f13.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <c737c89c7ce9174e349c61ab4e5712eee8946f13.camel@mailbox.org>
X-ClientProxiedBy: FR4P281CA0123.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB8156:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a17d161-e6a3-433b-a195-08dd7831f107
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|1800799024|366016|4053099003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ajhZSHpZNkhoWnRTK2FzeXRIRVlnVkt6OGNyV2RzQ0JYT0pwUjFKNit3THdw?=
 =?utf-8?B?SURMemRoK25pVlhxN3BKZGhlQ1FvQ1ovSjBOSCtDb1JnSm1rOXRHb1IxZGFY?=
 =?utf-8?B?a2RQTmVQc29BV2E0WmdETTFXRHdvTTBucmUzcGFRWGdySGpsRHNyZDRFZG10?=
 =?utf-8?B?aGFEb1cxbStYTXF4bktIUTg0VXdrK1R1d25RWHdpd3pPcFl1UEhBSVF4cE5L?=
 =?utf-8?B?akVEQ29YZXFJSy9wck8waFRyamVzY1E5UjN0cmxtL0dHOGZvcXhyRlcraFpH?=
 =?utf-8?B?RHZBN2h2K0QxNWJSM2h1NDBBeUdqdVdQN0hxeWZzWGMyUzk0cS90S09RNGNR?=
 =?utf-8?B?a3pxRmNJMVZFWWtKNEJzZzJxemtkWGN5OGRmL2l6ZTNqMjRleXZ2aWp2VXVk?=
 =?utf-8?B?V0ZUWGdjQ0xZenJXQmlsL3RMblpwcUoxWEpyQzJ3N0dEYktoL1l1MWdvMVo3?=
 =?utf-8?B?MjZ4ckVud0dZQWpMdHUxQ05tanVZc0FJZGw0Qk9IeGx6N3RrS2Eyd2M3d2Mv?=
 =?utf-8?B?aXU5a2F1M3FFSkpHQ1hmVXpDQUxnNTczdk5qQVA5VFhadHhqdmwvUVZxb3FW?=
 =?utf-8?B?ZzVoL2lZQURDUkRsajl5TlgvS2lDS1c5aFBEckQvWlUyVG9RK01nbGhxa216?=
 =?utf-8?B?cW9NUmNoNXZlbVh4cGlDVkFkTzM4UW5SYUlLS3pnY0kzb3lHSjNRYmpqY20z?=
 =?utf-8?B?Y1lDRkdxV0hBdFJoK1BUbDFzMXNnc2ZjRnE2ZFJkYTg4Nm05dFpNVGdTNXhu?=
 =?utf-8?B?cFhxMzRWOFdCNXp5dmxnaHpqREVtMU5CZHcvREJVcktaNHBpelgvd0l4b3A1?=
 =?utf-8?B?Ukl0TzBkdSswbnVBcldSUjZoMC9ucTQ0cStMeC9HS1k0YkJrcit4RksvbGhn?=
 =?utf-8?B?cmtTOWZadjZZdXM4UGNoenREYzVMMWgwRFZOWjhkMEVhQ0FLK2dMbENhaHVu?=
 =?utf-8?B?Z2ZibkVOOHQ4Mm5NMUVZVjBqbUplekFJMitkWDc3OGFlUXcxMTdYbFoxUXFv?=
 =?utf-8?B?ejJyeWlRWHlhSHQvc0VZYmlWTFhoWVY2eUxTQVZPOTZlckhJalViOXRyb0ts?=
 =?utf-8?B?WlhJYTBreHhBL25sZUlEZ1Nva0VaV2JtM2d4KzgxT1NvOFdYYWR1V0FJQW9k?=
 =?utf-8?B?SlNxb3JJUTJhUHpCR2RhZVo2bVBOZVF1NGwrY3RDNXFYV0s5bCt3SlZ1NU90?=
 =?utf-8?B?cWVrVXNZN3ZCbElHOWZYQ256cHFHK3R4YnZ3TThTYTI4cGt6NFVtbzFCbFp1?=
 =?utf-8?B?R0hPaUJIeFpNYW1uZENLRlA5dTlTOXhpT2E2OCtuanRQVXZla21nQlVMaE9S?=
 =?utf-8?B?NHoxU3hyaHc5aTVzT1drSjhsWER0ci95T3N1cTJFbEs0TW9lTHA2aE8rVlI5?=
 =?utf-8?B?NmpSa3ZuT2VjeENZdHdYL0ZKQ1pyNGgreFFUWjVvUmJkYlpwTFp2UEI2dnFM?=
 =?utf-8?B?cDZERmVSSkUzZXh1dmFsbHRzb2F2RlVxTGVEZmJROEMwbzNuWHVuUjdpTE9C?=
 =?utf-8?B?WHJ4SXJCMWxXZXdyNTRuQnR3R2VTODRGUXdSV1d2REZyK1loVDFDd0dKa01i?=
 =?utf-8?B?bWFMaEdLWWUxYUVnTWpBZUhFVG9YZFlodGNVM0lJWFIwUGFHbnhPZnhEc3dm?=
 =?utf-8?B?czFvaytPSGdkL2J6S2VHbkxGKzNSVjdsMEVQM1lGVE1zTHVQQTV6U3FtRTYw?=
 =?utf-8?B?Sm5LUjNhWGc2TEJUenBJZ2JISm1KVGVQU3Q2RHVKOUI1UjUzb3hyeWIrTjFY?=
 =?utf-8?B?RlBNeXJ5dmdEVzNOVnIvTmErd3ZNYzhiZUxNVnMwWFhQUVUyek9ib0tCbTYr?=
 =?utf-8?B?MktJNE1PSlpHMVRKSDhXbm1XTmdRVFF4NWluZVZEVUFvU2NhdldVejRtMVMw?=
 =?utf-8?Q?HpS0qzQnuGSyk?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(4053099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Mmx4Ujk5UUcvbDUrOG15ZXdFNitFQkpiaWxwYXB4OVNqUEZJdnF2UktzZVIz?=
 =?utf-8?B?MGhaUEhycjlaNXFna1RLb2szSy9yZ1FYUUN1UXB2NTcvazN5V1VPY1pWR0Ix?=
 =?utf-8?B?VVREMzFCTCs0cURoOVhHc1U2SFpFeVl5cTExMWRvREpkWVJqWEkrcTBtU3Ez?=
 =?utf-8?B?SnFjWFNCclFBVkF4M09HMHlYaVUrQjRKaEpzcUpRUU90NnRvREVmVlRob3Fo?=
 =?utf-8?B?bFRHWC9TL2c4L3laMVJNMk03RDh1RTZ4Z1VuRFlxRExETXhWY3Jnb0hKZkww?=
 =?utf-8?B?OGpBMVNsY0lUb1JWc2ovL0V5YXllUUYvWXh3NWE0TnlBUGt6d29LZXpZdUFl?=
 =?utf-8?B?QWVObE0vWkxiWVVTWVJDeFZyaUR5aUJJNnE4Z0ZibzI1cUFuWWVEMFVFZ3Az?=
 =?utf-8?B?K2FYTTVHazBwQ21KbUdYQ2JsVUUwdXZvRVZBNDIvZEtmWUJlYkdGQ2x3ZmdB?=
 =?utf-8?B?bjEydjNXSVgvSVZiMVhlZnJOMUE2a1JOVWdDd0k1b2F0Q2I5OFU3WHBsTEtK?=
 =?utf-8?B?R2Y0VDVERmlCVjdQdXVZR3VMelY0bFN5ZzdpcXRNeHFhL0diZkJKL0VpWGVW?=
 =?utf-8?B?bXQ1NzFjTnZRTUpYZWxDYkZKMmRyekM4OFVqaEpnSkpZTjAzM0d6ZVg1YXVj?=
 =?utf-8?B?NzM2NmdudU0wZHEwTjZJNTNRVGtud2dzMFkxOFNtV3B1QUNtaTF0ZXE3VnR5?=
 =?utf-8?B?NWJpTkdUZUdmNWNXL3VPZjRZb1owc3Q3VjVoZmRVblJucHNCRlNNdDVPT3d4?=
 =?utf-8?B?RUlLRm10UWdhMTA4d0c2a0FaOGUrd1NDc0JQb00xd3FWenZvekNENTY5QWIw?=
 =?utf-8?B?NnA2YlkybzF3OEJFMjV6SE85OXVobmY1VzlDSmgxQldlWXFSYVhoMVhGdnZB?=
 =?utf-8?B?KzlYZjVybXRoL3hjcmxNekpGYUsydFFNUkIyTTN0bzVUN29LeDBkRDM3V3dK?=
 =?utf-8?B?emhRT0V0Vkx4YXQrb1FheGRGMVEzZlJ1RlBlL3UyQnZqRjgwcjVKaGNDVGNN?=
 =?utf-8?B?Tjc5OXNqZ29pdW56YXBrQjJEeE5zbUFGbG1pd01JWUQ2QzVJL2VEZy90b1VZ?=
 =?utf-8?B?L3owR1ViNnpUSU5wZUdkQjFITDhITFpDQm1aOVV4ZndpcGhIRFFGZmh4WkJt?=
 =?utf-8?B?NUlpOGc5TFdmTmc4VHR6RWlwNjJwQndXTE42MXBuMVV6Qi9VcCt2WFp0WjJ3?=
 =?utf-8?B?ZTZzb01MaVNhQ08wS0xuQzE3eisxUUI2VmEwRHVQeEdhVGZLWndEeGcremRj?=
 =?utf-8?B?TDVnb2NGZE1rOFBLeE9ENzlvdnZXcW5nMWNIYTY0Qy8vcnF1WmVSZmhxNVgz?=
 =?utf-8?B?RXF6TU9oelhTWEVyc3k5V2lWdjdtYnRJdEtQMG1Tb1JBb1psS0NQTjRaZFQ0?=
 =?utf-8?B?andhejFvZUE1NGcwYXNocG9nVU5qcnY3ZE1IZ3dlUDJiaWRWTXZKVTN6MC95?=
 =?utf-8?B?dU1TWHhPTmx4NktHTDkxMlRtQXZ5ekxWUkpldTVXaFE0RHBqRGUrR2I1OGxw?=
 =?utf-8?B?L1JFcUtIR0o3cGQ0YXUyR29FeGdKc0duMHl1THVNTVlrU21pMDM2S0dVdGxY?=
 =?utf-8?B?dHdCNnoreHJPcXJxbWQrOVE4aWJOL3pDcGNpYThZVWxvc215MEZ5R0Vod2s2?=
 =?utf-8?B?c2t2NTNpVlhTaTluQ0I1VnRrWTdGS0V1NHcxa0hTQWpQWEs5c20rWE9POGVs?=
 =?utf-8?B?amY0M2ZCdWpaU2x0Q1lMem1oc2JWR28vY2Z0d1ErQmh5WXk4SjE4ck91eGNz?=
 =?utf-8?B?RW9FRnljN2M4NHJCdWJqRUNiRzlGMGFTRWNsUDdNbkUzaWJvK3l0aEF1aXlQ?=
 =?utf-8?B?WWYweHNBai80eFB5V0k4SE05Y0dVRzF1S2ZXR3dwVjhTWHhuUlRiM21ZYWxF?=
 =?utf-8?B?bmtPZ2xsWEpXWkM2TjZwLzdjZFROQWFiQ3UrUU5NNkUxMnYxTjl3UEZVS1BL?=
 =?utf-8?B?d25IREdGS1BBL0s1MHloNmdCaERVeTErbVppU3dJbkJlY1FJUjJ3MEtKZkhi?=
 =?utf-8?B?akltcUtkQ2swcDk4UnNQbjlmMVV6bk9rUXZJcTUzT1cvWk8wL1pDcHJVZmwz?=
 =?utf-8?B?Sm9rRjZlQ01sWTM1OW1NbUVYM3VOeXNMVVQvM21VVzJQaStVbG5WZm5hUmhs?=
 =?utf-8?Q?NzXwF2HsJeGEpPNP/mNZvpJUk?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a17d161-e6a3-433b-a195-08dd7831f107
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 13:16:45.2537
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y1neUqPFKTJoZqRHLBGZ5FHNhAUbsyfMFzDQj/6CK1p+vEkYaovI3oWH1H7QN6jF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB8156
X-Rspamd-Queue-Id: D6E0143F4B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-patch];
	MIME_BASE64_TEXT(0.10)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,redhat.com,gmail.com,ffwll.ch,queasysnail.net,linaro.org];
	URIBL_BLOCKED(0.00)[amd.com:dkim,amd.com:mid,amd.com:email,mail-dm6nam12on2042.outbound.protection.outlook.com:rdns,NAM12-DM6-obe.outbound.protection.outlook.com:helo];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	HAS_ATTACHMENT(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RBL_SENDERSCORE_REPUT_8(0.00)[40.107.243.42:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.42:from];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.243.42:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SYTM577KSFXKGODZGOVY7ZJUODI33XLY
X-Message-ID-Hash: SYTM577KSFXKGODZGOVY7ZJUODI33XLY
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] drm/nouveau: Prevent signaled fences in pending list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SYTM577KSFXKGODZGOVY7ZJUODI33XLY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>

--------------LM0DXO0z16PvcEfueyc1v2b3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTAuMDQuMjUgdW0gMTU6MDkgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+IE9uIFRodSwg
MjAyNS0wNC0xMCBhdCAxNDo1OCArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEFt
IDEwLjA0LjI1IHVtIDExOjI0IHNjaHJpZWIgUGhpbGlwcCBTdGFubmVyOg0KPj4+IE5vdXZlYXUg
Y3VycmVudGx5IHJlbGllcyBvbiB0aGUgYXNzdW1wdGlvbiB0aGF0IGRtYV9mZW5jZXMgd2lsbA0K
Pj4+IG9ubHkNCj4+PiBldmVyIGdldCBzaWduYWxlZCB0aHJvdWdoIG5vdXZlYXVfZmVuY2Vfc2ln
bmFsKCksIHdoaWNoIHRha2VzIGNhcmUNCj4+PiBvZg0KPj4+IHJlbW92aW5nIGEgc2lnbmFsZWQg
ZmVuY2UgZnJvbSB0aGUgbGlzdCBub3V2ZWF1X2ZlbmNlX2NoYW4ucGVuZGluZy4NCj4+Pg0KPj4+
IFRoaXMgc2VsZi1pbXBvc2VkIHJ1bGUgaXMgdmlvbGF0ZWQgaW4gbm91dmVhdV9mZW5jZV9kb25l
KCksIHdoZXJlDQo+Pj4gZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCkgKHNvbWV3aGF0IHN1cnByaXNp
bmdseSwgY29uc2lkZXJpbmcgaXRzDQo+Pj4gbmFtZSkNCj4+PiBjYW4gc2lnbmFsIHRoZSBmZW5j
ZSB3aXRob3V0IHJlbW92aW5nIGl0IGZyb20gdGhlIGxpc3QuIFRoaXMNCj4+PiBlbmFibGVzDQo+
Pj4gYWNjZXNzZXMgdG8gYWxyZWFkeSBzaWduYWxlZCBmZW5jZXMgdGhyb3VnaCB0aGUgbGlzdCwg
d2hpY2ggaXMgYQ0KPj4+IGJ1Zy4NCj4+Pg0KPj4+IEluIHBhcnRpY3VsYXIsIGl0IGNhbiByYWNl
IHdpdGggbm91dmVhdV9mZW5jZV9jb250ZXh0X2tpbGwoKSwgd2hpY2gNCj4+PiB3b3VsZCB0aGVu
IGF0dGVtcHQgdG8gc2V0IGFuIGVycm9yIGNvZGUgb24gYW4gYWxyZWFkeSBzaWduYWxlZA0KPj4+
IGZlbmNlLA0KPj4+IHdoaWNoIGlzIGlsbGVnYWwuDQo+Pj4NCj4+PiBJbiBub3V2ZWF1X2ZlbmNl
X2RvbmUoKSwgdGhlIGNhbGwgdG8gbm91dmVhdV9mZW5jZV91cGRhdGUoKSBhbHJlYWR5DQo+Pj4g
ZW5zdXJlcyB0byBzaWduYWwgYWxsIHJlYWR5IGZlbmNlcy4gVGh1cywgdGhlIHNpZ25hbGluZyBw
b3RlbnRpYWxseQ0KPj4+IHBlcmZvcm1lZCBieSBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSBpcyBh
Y3R1YWxseSBub3QgbmVjZXNzYXJ5Lg0KPj4gQWgsIEkgbm93IGdvdCB3aGF0IHlvdSBhcmUgdHJ5
aW5nIHRvIGRvIGhlcmUhIEJ1dCB0aGF0IHdvbid0IGhlbHAuDQo+Pg0KPj4gVGhlIHByb2JsZW0g
aXMgaXQgaXMgcGVyZmVjdGx5IHZhbGlkIGZvciBzb21lYm9keSBleHRlcm5hbCAoZS5nLg0KPj4g
b3RoZXIgZHJpdmVyLCBUVE0gZXRjLi4uKSB0byBjYWxsIGRtYV9mZW5jZV9pc19zaWduYWxlZCgp
IG9uIGENCj4+IG5vdXZlYXUgZmVuY2UuDQo+Pg0KPj4gVGhpcyB3aWxsIHRoZW4gaW4gdHVybiBz
dGlsbCBzaWduYWwgdGhlIGZlbmNlIGFuZCBsZWF2ZSBpdCBvbiB0aGUNCj4+IHBlbmRpbmcgbGlz
dCBhbmQgY3JlYXRpbmcgdGhlIHByb2JsZW0geW91IGhhdmUuDQo+IEdvb2QgdG8gaGVhciDigJMg
cHJlY2lzZWx5IHRoYXQgdGhlbiBpcyB0aGUgdXNlIGNhc2UgZm9yIGEgZG1hX2ZlbmNlDQo+IGNh
bGxiYWNrISBeX14gSXQgZ3VhcmFudGVlcyB0aGF0LCBubyBtYXR0ZXIgd2hvIHNpZ25hbHMgYSBm
ZW5jZSwgbm8NCj4gbWF0dGVyIGF0IHdoYXQgcGxhY2UsIGEgY2VydGFpbiBhY3Rpb24gd2lsbCBh
bHdheXMgYmUgcGVyZm9ybWVkLg0KPg0KPiBJIGNhbid0IHRoaW5rIG9mIGFueSBvdGhlciBtZWNo
YW5pc20gd2hpY2ggY291bGQgZ3VhcmFudGVlIHRoYXQgYQ0KPiBzaWduYWxlZCBmZW5jZSBpbW1l
ZGlhdGVseSBnZXRzIHJlbW92ZWQgZnJvbSBub3V2ZWF1J3MgcGVuZGluZyBsaXN0LA0KPiBvdGhl
ciB0aGFuIHRoZSBjYWxsYmFja3MuDQo+DQo+IEJ1dCBzZXJpb3VzbHksIEkgZG9uJ3QgdGhpbmsg
dGhhdCBhbnlvbmUgZG9lcyB0aGlzIGN1cnJlbnRseSwgbm9yIGRvIEkNCj4gdGhpbmsgdGhhdCBh
bnlvbmUgY291bGQgZ2V0IGF3YXkgd2l0aCBkb2luZyBpdCB3aXRob3V0IHRoZSBlbnRpcmUNCj4g
Y29tcHV0ZXIgYnVybmluZyBkb3duLg0KDQpZZWFoLCBJIGRvbid0IHRoaW5rIHRoYXQgdGhpcyBp
cyBwb3NzaWJsZSBhdCB0aGUgbW9tZW50Lg0KDQpXaGVuIHlvdSBkbyBzdHVmZiBsaWtlIHRoYXQg
ZnJvbSB0aGUgcHJvdmlkZXIgc2lkZSB5b3Ugd2lsbCBhbHdheXMgcnVuIGludG8gbGlmZXRpbWUg
aXNzdWVzIGJlY2F1c2UgaW4gdGhlIHNpZ25hbGluZyBmcm9tIGludGVycnVwdCBjYXNlIHlvdSB0
aGVuIGRyb3AgdGhlIGxhc3QgcmVmZXJlbmNlIGJlZm9yZSB0aGUgc2lnbmFsaW5nIGlzIGNvbXBs
ZXRlZC4NCg0KSG93IGFib3V0IHRoZSBhdHRhY2hlZCAobm90IGV2ZW4gY29tcGlsZSB0ZXN0ZWQp
IHBhdGNoPyBJIHRoaW5rIGl0IHNob3VsZCBmaXggdGhlIGlzc3VlLg0KDQpSZWdhcmRzLA0KQ2hy
aXN0aWFuLg0KDQo+DQo+IFAuDQo+DQo+DQo+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0K
Pj4NCj4+PiBSZXBsYWNlIHRoZSBjYWxsIHRvIGRtYV9mZW5jZV9pc19zaWduYWxlZCgpIHdpdGgN
Cj4+PiBub3V2ZWF1X2ZlbmNlX2Jhc2VfaXNfc2lnbmFsZWQoKS4NCj4+Pg0KPj4+IENjOiA8c3Rh
YmxlQHZnZXIua2VybmVsLm9yZz4gIyA0LjEwKywgcHJlY2lzZSBjb21taXQgbm90IHRvIGJlDQo+
Pj4gZGV0ZXJtaW5lZA0KPj4+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3Rh
QGtlcm5lbC5vcmc+DQo+Pj4gLS0tDQo+Pj4gwqBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2
ZWF1X2ZlbmNlLmMgfCAyICstDQo+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbm91
dmVhdS9ub3V2ZWF1X2ZlbmNlLmMNCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZl
YXVfZmVuY2UuYw0KPj4+IGluZGV4IDdjYzg0NDcyY2VjZS4uMzM1MzU5ODdkOGVkIDEwMDY0NA0K
Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYw0KPj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYw0KPj4+IEBAIC0yNzQs
NyArMjc0LDcgQEAgbm91dmVhdV9mZW5jZV9kb25lKHN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmZW5j
ZSkNCj4+PiDCoAkJCW52aWZfZXZlbnRfYmxvY2soJmZjdHgtPmV2ZW50KTsNCj4+PiDCoAkJc3Bp
bl91bmxvY2tfaXJxcmVzdG9yZSgmZmN0eC0+bG9jaywgZmxhZ3MpOw0KPj4+IMKgCX0NCj4+PiAt
CXJldHVybiBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoJmZlbmNlLT5iYXNlKTsNCj4+PiArCXJldHVy
biB0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0NCj4+Pj4gYmFz
ZS5mbGFncyk7DQo+Pj4gwqB9DQo+Pj4gwqANCj4+PiDCoHN0YXRpYyBsb25nDQo=

--------------LM0DXO0z16PvcEfueyc1v2b3
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-drm-nouveau-fix-and-cleanup-fence-handling.patch"
Content-Disposition: attachment;
 filename="0001-drm-nouveau-fix-and-cleanup-fence-handling.patch"
Content-Transfer-Encoding: base64

RnJvbSAxNjVkZjM2YjYwM2IzN2Y2ZjE3ODVjZTM1OWY3Y2QxODRkYjYyMTk2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/Q2hyaXN0aWFuPTIwSz1DMz1CNm5pZz89IDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkRhdGU6IFRodSwgMTAgQXByIDIwMjUgMTA6MTg6Mjkg
KzAyMDAKU3ViamVjdDogW1BBVENIXSBkcm0vbm91dmVhdTogZml4IGFuZCBjbGVhbnVwIGZlbmNl
IGhhbmRsaW5nCk1JTUUtVmVyc2lvbjogMS4wCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hh
cnNldD1VVEYtOApDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0CgpUaGUgZmVuY2Ugd2Fz
IG5vdCByZW1vdmVkIGZyb20gdGhlIHBlbmRpbmcgbGlzdCB3aGVuIHNpZ25hbGVkIGZyb20gdGhl
Ci5zaWduYWxlZCBjYWxsYmFjay4gRml4IHRoYXQgYW5kIGFsc28gcmVtb3ZlIHRoZSBzdXBlcmZs
b3VzCi5lbmFibGVfc2lnbmFsaW5nIGNhbGxiYWNrLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L25vdXZlYXVfZmVuY2UuYyB8IDMxICsrKysrKystLS0tLS0tLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwppbmRleCA3Y2M4NDQ3MmNlY2UuLjUzYzcwZGRl
Zjk2NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwpAQCAtNDg1LDMy
ICs0ODUsMTggQEAgc3RhdGljIGJvb2wgbm91dmVhdV9mZW5jZV9pc19zaWduYWxlZChzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmKQogCQlyZXQgPSAoaW50KShmY3R4LT5yZWFkKGNoYW4pIC0gZmVuY2UtPmJh
c2Uuc2Vxbm8pID49IDA7CiAJcmN1X3JlYWRfdW5sb2NrKCk7CiAKLQlyZXR1cm4gcmV0OwotfQot
Ci1zdGF0aWMgYm9vbCBub3V2ZWF1X2ZlbmNlX25vX3NpZ25hbGluZyhzdHJ1Y3QgZG1hX2ZlbmNl
ICpmKQotewotCXN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmZW5jZSA9IGZyb21fZmVuY2UoZik7Ci0K
LQkvKgotCSAqIGNhbGxlciBzaG91bGQgaGF2ZSBhIHJlZmVyZW5jZSBvbiB0aGUgZmVuY2UsCi0J
ICogZWxzZSBmZW5jZSBjb3VsZCBnZXQgZnJlZWQgaGVyZQotCSAqLwotCVdBUk5fT04oa3JlZl9y
ZWFkKCZmZW5jZS0+YmFzZS5yZWZjb3VudCkgPD0gMSk7CisJaWYgKHJldCkgeworCQkvKgorCQkg
KiBjYWxsZXIgc2hvdWxkIGhhdmUgYSByZWZlcmVuY2Ugb24gdGhlIGZlbmNlLAorCQkgKiBlbHNl
IGZlbmNlIGNvdWxkIGdldCBmcmVlZCBoZXJlCisJCSAqLworCQlXQVJOX09OKGtyZWZfcmVhZCgm
ZmVuY2UtPmJhc2UucmVmY291bnQpIDw9IDEpOwogCi0JLyoKLQkgKiBUaGlzIG5lZWRzIHVldmVu
dHMgdG8gd29yayBjb3JyZWN0bHksIGJ1dCBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrIHJlbGllcyBv
bgotCSAqIGJlaW5nIGFibGUgdG8gZW5hYmxlIHNpZ25hbGluZy4gSXQgd2lsbCBzdGlsbCBnZXQg
c2lnbmFsZWQgZXZlbnR1YWxseSwKLQkgKiBqdXN0IG5vdCByaWdodCBhd2F5LgotCSAqLwotCWlm
IChub3V2ZWF1X2ZlbmNlX2lzX3NpZ25hbGVkKGYpKSB7CiAJCWxpc3RfZGVsKCZmZW5jZS0+aGVh
ZCk7Ci0KIAkJZG1hX2ZlbmNlX3B1dCgmZmVuY2UtPmJhc2UpOwotCQlyZXR1cm4gZmFsc2U7CiAJ
fQogCi0JcmV0dXJuIHRydWU7CisJcmV0dXJuIHJldDsKIH0KIAogc3RhdGljIHZvaWQgbm91dmVh
dV9mZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmYpCkBAIC01MjUsNyArNTExLDYgQEAg
c3RhdGljIHZvaWQgbm91dmVhdV9mZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmYpCiBz
dGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgbm91dmVhdV9mZW5jZV9vcHNfbGVnYWN5
ID0gewogCS5nZXRfZHJpdmVyX25hbWUgPSBub3V2ZWF1X2ZlbmNlX2dldF9nZXRfZHJpdmVyX25h
bWUsCiAJLmdldF90aW1lbGluZV9uYW1lID0gbm91dmVhdV9mZW5jZV9nZXRfdGltZWxpbmVfbmFt
ZSwKLQkuZW5hYmxlX3NpZ25hbGluZyA9IG5vdXZlYXVfZmVuY2Vfbm9fc2lnbmFsaW5nLAogCS5z
aWduYWxlZCA9IG5vdXZlYXVfZmVuY2VfaXNfc2lnbmFsZWQsCiAJLndhaXQgPSBub3V2ZWF1X2Zl
bmNlX3dhaXRfbGVnYWN5LAogCS5yZWxlYXNlID0gbm91dmVhdV9mZW5jZV9yZWxlYXNlCkBAIC01
NDAsNyArNTI1LDcgQEAgc3RhdGljIGJvb2wgbm91dmVhdV9mZW5jZV9lbmFibGVfc2lnbmFsaW5n
KHN0cnVjdCBkbWFfZmVuY2UgKmYpCiAJaWYgKCFmY3R4LT5ub3RpZnlfcmVmKyspCiAJCW52aWZf
ZXZlbnRfYWxsb3coJmZjdHgtPmV2ZW50KTsKIAotCXJldCA9IG5vdXZlYXVfZmVuY2Vfbm9fc2ln
bmFsaW5nKGYpOworCXJldCA9IG5vdXZlYXVfZmVuY2VfaXNfc2lnbmFsZWQoZik7CiAJaWYgKHJl
dCkKIAkJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19VU0VSX0JJVFMsICZmZW5jZS0+YmFzZS5mbGFn
cyk7CiAJZWxzZSBpZiAoIS0tZmN0eC0+bm90aWZ5X3JlZikKLS0gCjIuMzQuMQoK

--------------LM0DXO0z16PvcEfueyc1v2b3
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--------------LM0DXO0z16PvcEfueyc1v2b3--
