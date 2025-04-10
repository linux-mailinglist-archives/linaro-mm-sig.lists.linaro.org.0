Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 592A7A842B6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Apr 2025 14:14:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DAEB45982
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Apr 2025 12:14:01 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2057.outbound.protection.outlook.com [40.107.237.57])
	by lists.linaro.org (Postfix) with ESMTPS id 3A87043CF7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Apr 2025 12:13:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=kabLcBZD;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.57 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bQxrCepE8u3a19qgMS3X6nUWmp+EW4J/d8Pt2oqtIJOx1OK3Ma7MwKDvlBEvWeD0wFW9Z1pIpO01B8GIYWMsEaryUnc5YSuw3/0qB/ESqeNNDqYW5f5MStVCE8/7yfGcNugBrNHg+OG55OVnUlZIbtrUatMc6VH9g9iUPHYns64D/c+uVg0VZxv9EXpbM3UwNTC9HNGW1XQbxdY1WYzppwt16fUmAvYn33nzYXpnOKjql2heYyxEOueXEGvBdaAxnA7jYQV5YuiXJ1046q4aqC3BxxlNNaM3vcJlf0AeHUHPvO+ckE6UcIh473YbzpKVTkw3q2LrWvm6g5zYnLuetw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2uu/W5YkUof61Q3bEB8sr+DFzHaZJ/qpWyRboZvVy/Y=;
 b=Yhy74zaoZkQ4ISpNDqFzM8GwAqatXGl4uOckhjOqUBkeV31cIIqbZjo6Vrizb5/r8/molDnZxoQgM1gjRjKqzopeg+/GrWaoWeKlo2+sGYqlZXvfPZATPdubRMZJv+PwyInQp7CqLrinASJklq/zwGj8xE6lbBQCyYcsJ1BwYPd3Ko1muJ1ORrUu2A0esacs262PUOK2lNAPRQX4v7RhnmyKSbK02w01gVC4TlCSxlzse5eeAF9ujrtEvKU9ljl7pF25zsAsCwZK+JFY53awDrUkSyf6bCwaL2xTpM3APoruExPuXadeJIKc1FeEWwUereKfa7EWoT1XSX7LfMjVJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2uu/W5YkUof61Q3bEB8sr+DFzHaZJ/qpWyRboZvVy/Y=;
 b=kabLcBZDhLwe2CP/3LKOZvWanW0doM8dtfdYD6hldaoy4VQ1FnUAPeqXz/xNy6o9At2XNQJBvM4nMw9GxXyvxwE4VMUMKIlAXxfxxHcb1KtvbDccLRH4EsoYzNjX3vFGvjt2D/UKqvIH/AtrqAkvGciHWyyAufcThtVNujJciac=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB7473.namprd12.prod.outlook.com (2603:10b6:a03:48d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Thu, 10 Apr
 2025 12:13:40 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.021; Thu, 10 Apr 2025
 12:13:40 +0000
Message-ID: <d03c618e-aa4b-423b-9c50-143b8a197cac@amd.com>
Date: Thu, 10 Apr 2025 14:13:34 +0200
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <phasta@kernel.org>, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sabrina Dubroca <sd@queasysnail.net>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20250410092418.135258-2-phasta@kernel.org>
 <20250410092418.135258-3-phasta@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250410092418.135258-3-phasta@kernel.org>
X-ClientProxiedBy: FR4P281CA0002.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c8::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB7473:EE_
X-MS-Office365-Filtering-Correlation-Id: b3d0b7c1-e1a4-49e7-d459-08dd7829212e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|1800799024|7416014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?M1Yvb3NtSHFteXIwRXphUWU0SzBTazVneG1mb0U3WlVuWVJKNFR0eGVRalhx?=
 =?utf-8?B?ZnN0RHZyc2NubDg5bkcrbkdxaXl1RTlienBlODNNdFBQZVJNOHZhMXNjZTVR?=
 =?utf-8?B?YW9EcGpTRmFPRUlpMmdUOFhaUmxSYjdlaHcva3dJVDBkRjBjbk5NTlJ0K0Zp?=
 =?utf-8?B?SHlpWCtRTnRIU21WbjllMTVrUldUQVF6NXBPT0ZISy9QZWlqT1RTSEJOZWQv?=
 =?utf-8?B?dnM4ZU0yb0l4MnpMR1lzU21LdTJLdzRiQUFhZUZLZnlRcjdBU21wWnZZNmpu?=
 =?utf-8?B?RG5ibkIwUGkzclF1VTFydzlSUlBNMkNhdy9IN2lxRjlGbndTdnRNZjFvckNV?=
 =?utf-8?B?QzZEcUxUZFU0RzFDbUsrd2lIc1FtQit0SVZUaFpqSzlUcElsaXpPZk9DMmxs?=
 =?utf-8?B?bmVGbjVEb01WOVBoYlpMQlQ5S0dxY25QLytBRGVzbjY4bG5uWEVHUlp1N1pj?=
 =?utf-8?B?WUZKeW1WN2htcHhSWmRhS0RNdHN6V1JCV0VnV043UFd0RklndGtrbmFqQzdt?=
 =?utf-8?B?OGxNTG1EdjN4c3FmdHI4Q3dKMjcrZ2c1WkNBZ3dJSHRIVjBvTzhVb0EyVy83?=
 =?utf-8?B?M295bHBJODZHeEZBVUxXQzllemJDMWI1MytuVHpveFQ3OGtmVmhneCtMN2lj?=
 =?utf-8?B?bldvSitPWjZtQmlSTXk4ZEtHYkZCUko4a2RVbXcwUVBxS2VHUGhZaEt1WE9B?=
 =?utf-8?B?VHRmOHViK2twSk9mbkMrdEF6MHIydnpxYWNWdjJSblkzTkRXYndQYTBFQjVr?=
 =?utf-8?B?Um5TdTRqNVJtdHFTUC9PeUF6cDFEOXVFdkc1RCtTV1NKVXRibDRvVGNXU1Fq?=
 =?utf-8?B?dkRML2lFR0lJU21rTU9QbzNJNzNLYkpRUC9HMUh4NXR1a2RXRXJaSk9FR292?=
 =?utf-8?B?L2U4bER2NEhpUlJaNEtDSGRPYlBocWw1cWZaK1cvd3FMUEM2ZCs5YWlVTFpT?=
 =?utf-8?B?bzZkUkduMDlqTkRjR0FGeElYZE1laDBQazluVUtjV0gwSkhIb05FNnBoQ0VU?=
 =?utf-8?B?c3Juc0ttZjhuNDlBVGlaL21CQkJuSGNsYmNKVWZGK2JRL3I1SjJxMUFXZHdZ?=
 =?utf-8?B?K29OaDVIRG0yQjR1cDdpTXR0c1J3OUNXZlZDa3ladzhDNllOMS9pZG9Hb1pQ?=
 =?utf-8?B?My9OdGhTNUliS2VRQzZrd1FrM210eWtsUTZrSWY5cDFVRTdjWmlsSG1ZcUhl?=
 =?utf-8?B?aGxKc1lCZ2lQUlR0QlQ1SURDcDlQS2c3S2EwZjJnNkluWk02RWd5MkRJYXZs?=
 =?utf-8?B?ODdhU2ErS012NXFKQWppVmdlN2x6cWRUTXZ0SXowVEhrL0xOc0RsR3BlYUhh?=
 =?utf-8?B?NEdJa3lCbjhrRmthb3RvbjkzbkxobTJhYm1ld1dkZ1FYL0o2ZE9KY251N1JX?=
 =?utf-8?B?ZXpOSnpXY2IwYzZEckNhRENKU0pGKzdZRVlhR2MxbUJoSjFiQmxwaHQ1MHhO?=
 =?utf-8?B?QTUwTUxWWU9nMWt6S3p6WTA4VUltaG14VlF2Q2V4WU5kc2lrSkJqNjBqaU5R?=
 =?utf-8?B?VTh2bWcyRDZNT29VL0cvZ0Jra3ZIN2VGbDZnUTMxa1dIZlZGc0VYNUZDUlJq?=
 =?utf-8?B?Y3FtTnRHMUhFQ2cyWnVWK3k5MzU1dnY2b25qY21LbHFzbmVBWnBMc3ZJREw5?=
 =?utf-8?B?MVIxTjhRb2YvV0M4aTV2ZkkxU1BXYXN6cFZmZllLRlhUZ3RlOU9lMEV1a2NJ?=
 =?utf-8?B?Tk43bUFIZ0NPTytSSGw1UFVjT25aSlVqS1NtNUxqd2pOcmVjbjFjMTRGeHZB?=
 =?utf-8?B?czVnSWQ5cnRlaFdPa2t4ZXYrSThnaEwxNmVKS0dIRmxvQVMzS0FsU0x6NzQv?=
 =?utf-8?B?ckt1azFjZjFpZVRDOHBJL0dDUmdQUTJqQWRYQzdseTRuQVhWVUp5R0FMV3Ar?=
 =?utf-8?B?NS9BQ25ER08yZnRLT29HVVRmOXMreHdoMGViUzYzMWV4blRBTWJLbVZ0b0F1?=
 =?utf-8?Q?+QhtyjPEH9Y=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7416014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SDVyelhTTmovb0dVWHBPNDRhMDZpem9SR1p5OGQ3NEdaNFV3WUsya0R1cnFY?=
 =?utf-8?B?czA2MFZNS3dya2JxdjFGY1RGaS9IU1NrNzRYYTBmZDV6UGpkR241VGFvUWtm?=
 =?utf-8?B?d0k3QjVvMEY2djEvSjhCM3hEM3FZckNXbFJuM25lN2JHVDB2eXdkTXppZTNw?=
 =?utf-8?B?bnQ2UmxjOWVzM3N6TzJZOHZ2S1hFcFI1dFZib1EydzJmOEhjMmtnZnF2ZVlR?=
 =?utf-8?B?VHV0SGJ6cEhFZW1LUWJOOWwzbEtEMFUwSjFQUlNwZS9UelNNUWJlcHRVZ09V?=
 =?utf-8?B?L3BkVzJGMmt6eU9Ta0gvdFhMcEdyRnhSMGVTa0M4ajVCdlNvOUFQZnpIcWUy?=
 =?utf-8?B?U1Y1L0JHeUNEdWVvaE1ueHFSVHB1ZFU2NWNjdkVlTlZPZHVzaXB6MFlxN2VL?=
 =?utf-8?B?U21LVXE5WGxxd3RTenZPSVVRSlJjQlZjWEVjRHRzNitKVzhGZWk0RGwxWk80?=
 =?utf-8?B?YkhMYUpydWdMRXlDd3J3c1NwSXRvWndjN29rZGRzZ3dqRGlrdTNGSUNEVTh0?=
 =?utf-8?B?UTlIUWlBQ3B6UzA5S2FCTFp3WkVxR1paWjJpOFBMVHFiVXJjWFNQRHlSVzJo?=
 =?utf-8?B?RC9zdEYyMWRxdHB6Wk8xSHVEVmswM0FFS25Jalg0eExybzZjZ1ZkLzNnSGto?=
 =?utf-8?B?T0JMbzRGRHZ6cHF3bWZSRzNOQ2U4OThhaHVrSHB5U1BWTlFocXI1bjBRWHh3?=
 =?utf-8?B?Y08vZ3dQL1dxTXAweXNTMjZIUHNRNGZTRHk0VHByM3cxWGpTSjBMSFZhaTAv?=
 =?utf-8?B?SXpBSlVZU05TWUk2ZUZTeHIvdGxXODJLRHRmZzM1dGV0VnBGclA0cGVKL1ly?=
 =?utf-8?B?ZDNBZmFzbWJZY0g2RW1GbGtsNVFiMThJZTlBVkJOa1R1RklFY1dWNEplakZH?=
 =?utf-8?B?QzdRR1ZtYlZVcE0vTDdsa0lQUVh3NXhjeTJzYlBqS2lVSTlna1NVN0VsNWlK?=
 =?utf-8?B?d0k1TG5zbTlDNWpvNXl6RWlsZjNEVTBSTFBKTDNVcDNhbmJsd0drdXVKUlRI?=
 =?utf-8?B?THF0ay9iU2JUZldRWVFPdnhsZGxoaEFJSW5DdHpON084akxFa2xiUmhUWXBS?=
 =?utf-8?B?b0N3dnZUejdEQ3ZxN1lWWnBDZ09FQWZ5SzZCS3E5dWJ5TU5BQ1dhZ3BCdTE3?=
 =?utf-8?B?bWJDOE1pdVF4blAzNTd2NDRzVTVHb1A4UXpZTE9hbkR3Qy80WnluYm9PUWJm?=
 =?utf-8?B?YTlzK0x5UlpJdlc5em9Tc0ZlV2tRckcrRXNmenI1ZXJIeXJLRWs4TlRPQUZt?=
 =?utf-8?B?Q0UyRXIvVUZjYmtWaTlEdksyVEprSXd5WFVlaFB1Sng3SjBucFN3WkFGSnda?=
 =?utf-8?B?cE9TOE1VY2VVUFJVbDVYWm9EaFJyYUNaMittL1pHRzAwTkFOdG5TRkwzOFAv?=
 =?utf-8?B?RThwSnhwaUZ2ZTNYQ002bVduME5GaEMrTy9EMXZFYVFuSUlYZ09qZWdyV1px?=
 =?utf-8?B?Y1FRT0hJWkNYdTNtanVsSmVpVnRWVis2MXNraXJmZG40TEx5OFVrMDYzT2U1?=
 =?utf-8?B?QzR1aVFpbVVwOWk4dmlCaTZaVEF2OGhqV2tzc0tWRW9hdzBnOFNiZEpEeUov?=
 =?utf-8?B?MC9LUGNGSkpDcXdjbitJZnF4d1U0MEJXazBOZUlsRzJ1SVAyaFZHUHNGZVVo?=
 =?utf-8?B?cmcwZllZLyt2dHQ5RU5mTHZ3eEpFMVRKbFdrSmQ3WHgyckR4MUJqT1NUZmZV?=
 =?utf-8?B?ZzRXUVZSR2RHUVhBdlFPM2UweHJVSk5NdU5DdjhzM3JGT3JBa3ZWZ0FlQS9u?=
 =?utf-8?B?R21WUnd0NlNrUElyNDJlbFNQRXREZ1E4L2NGMVM0ajFuMDltaFBMQVdmYUJt?=
 =?utf-8?B?M3A5aGJiUi82ZExpL25zS244NFMxeWQ4bW1Ud1BxalZUMTJ0bnFsdW1mZ3hX?=
 =?utf-8?B?S1JyVEVsdVM1bjE1bUNoZVg1dk8yQlpJYU8zeFJkQllVL1V6bVdRSHpET3U4?=
 =?utf-8?B?RjRMQVcveWZnL1lTY1RZbVgxS2YrOEtDdUpLeUtEaDJjUnpBYm44WmtLRGdx?=
 =?utf-8?B?aXM5NTFTaXFNcDlabi9uSitRUmE1Z1ZuVmZjUUJpZGp6NC9WeXFYNHBVS0Js?=
 =?utf-8?B?S0U5YVVLeEZOYko5MWRoRGFlcDBlQWRmbmJhdzhhZklvMHJCS3dGTWljTGs1?=
 =?utf-8?Q?p83Y=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3d0b7c1-e1a4-49e7-d459-08dd7829212e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 12:13:40.3622
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZY7NjnypWS5rrYJtQ5AIVagklv0BBwZBBGNnvYY5NUd26uEeB3bM0ahJP/rQNzz5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB7473
X-Rspamd-Queue-Id: 3A87043CF7
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.57:from];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[kernel.org,redhat.com,gmail.com,ffwll.ch,queasysnail.net,linaro.org];
	RBL_SENDERSCORE_REPUT_8(0.00)[40.107.237.57:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.237.57:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7LMBFJJ6PH6TYEQ3P53NOD2PHKGJQJ44
X-Message-ID-Hash: 7LMBFJJ6PH6TYEQ3P53NOD2PHKGJQJ44
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] drm/nouveau: Prevent signaled fences in pending list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7LMBFJJ6PH6TYEQ3P53NOD2PHKGJQJ44/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTAuMDQuMjUgdW0gMTE6MjQgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+IE5vdXZlYXUg
Y3VycmVudGx5IHJlbGllcyBvbiB0aGUgYXNzdW1wdGlvbiB0aGF0IGRtYV9mZW5jZXMgd2lsbCBv
bmx5DQo+IGV2ZXIgZ2V0IHNpZ25hbGVkIHRocm91Z2ggbm91dmVhdV9mZW5jZV9zaWduYWwoKSwg
d2hpY2ggdGFrZXMgY2FyZSBvZg0KPiByZW1vdmluZyBhIHNpZ25hbGVkIGZlbmNlIGZyb20gdGhl
IGxpc3Qgbm91dmVhdV9mZW5jZV9jaGFuLnBlbmRpbmcuDQo+DQo+IFRoaXMgc2VsZi1pbXBvc2Vk
IHJ1bGUgaXMgdmlvbGF0ZWQgaW4gbm91dmVhdV9mZW5jZV9kb25lKCksIHdoZXJlDQo+IGRtYV9m
ZW5jZV9pc19zaWduYWxlZCgpIChzb21ld2hhdCBzdXJwcmlzaW5nbHksIGNvbnNpZGVyaW5nIGl0
cyBuYW1lKQ0KPiBjYW4gc2lnbmFsIHRoZSBmZW5jZSB3aXRob3V0IHJlbW92aW5nIGl0IGZyb20g
dGhlIGxpc3QuIFRoaXMgZW5hYmxlcw0KPiBhY2Nlc3NlcyB0byBhbHJlYWR5IHNpZ25hbGVkIGZl
bmNlcyB0aHJvdWdoIHRoZSBsaXN0LCB3aGljaCBpcyBhIGJ1Zy4NCj4NCj4gSW4gcGFydGljdWxh
ciwgaXQgY2FuIHJhY2Ugd2l0aCBub3V2ZWF1X2ZlbmNlX2NvbnRleHRfa2lsbCgpLCB3aGljaA0K
PiB3b3VsZCB0aGVuIGF0dGVtcHQgdG8gc2V0IGFuIGVycm9yIGNvZGUgb24gYW4gYWxyZWFkeSBz
aWduYWxlZCBmZW5jZSwNCj4gd2hpY2ggaXMgaWxsZWdhbC4NCj4NCj4gSW4gbm91dmVhdV9mZW5j
ZV9kb25lKCksIHRoZSBjYWxsIHRvIG5vdXZlYXVfZmVuY2VfdXBkYXRlKCkgYWxyZWFkeQ0KPiBl
bnN1cmVzIHRvIHNpZ25hbCBhbGwgcmVhZHkgZmVuY2VzLiBUaHVzLCB0aGUgc2lnbmFsaW5nIHBv
dGVudGlhbGx5DQo+IHBlcmZvcm1lZCBieSBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSBpcyBhY3R1
YWxseSBub3QgbmVjZXNzYXJ5Lg0KPg0KPiBSZXBsYWNlIHRoZSBjYWxsIHRvIGRtYV9mZW5jZV9p
c19zaWduYWxlZCgpIHdpdGgNCj4gbm91dmVhdV9mZW5jZV9iYXNlX2lzX3NpZ25hbGVkKCkuDQo+
DQo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyA0LjEwKywgcHJlY2lzZSBjb21taXQg
bm90IHRvIGJlIGRldGVybWluZWQNCj4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcCBTdGFubmVyIDxw
aGFzdGFAa2VybmVsLm9yZz4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2
ZWF1X2ZlbmNlLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25v
dXZlYXVfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYw0K
PiBpbmRleCA3Y2M4NDQ3MmNlY2UuLjMzNTM1OTg3ZDhlZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYw0KPiBAQCAtMjc0LDcgKzI3NCw3IEBAIG5vdXZlYXVf
ZmVuY2VfZG9uZShzdHJ1Y3Qgbm91dmVhdV9mZW5jZSAqZmVuY2UpDQo+ICAJCQludmlmX2V2ZW50
X2Jsb2NrKCZmY3R4LT5ldmVudCk7DQo+ICAJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmZjdHgt
PmxvY2ssIGZsYWdzKTsNCj4gIAl9DQo+IC0JcmV0dXJuIGRtYV9mZW5jZV9pc19zaWduYWxlZCgm
ZmVuY2UtPmJhc2UpOw0KPiArCXJldHVybiB0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxF
RF9CSVQsICZmZW5jZS0+YmFzZS5mbGFncyk7DQoNClNlZSB0aGUgY29kZSBhYm92ZSB0aGF0Og0K
DQrCoMKgwqDCoMKgwqDCoCBpZiAoZmVuY2UtPmJhc2Uub3BzID09ICZub3V2ZWF1X2ZlbmNlX29w
c19sZWdhY3kgfHwNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmVuY2UtPmJhc2Uub3BzID09ICZu
b3V2ZWF1X2ZlbmNlX29wc191ZXZlbnQpIHsNCi4uLi4NCg0KTm91dmVhdSBmaXJzdCB0ZXN0cyBp
ZiBpdCdzIG9uZSBvZiBpdCdzIG93biBmZW5jZXMsIGFuZCBpZiB5ZXMgZG9lcyBzb21lIHNwZWNp
YWwgaGFuZGxpbmcuIEUuZy4gY2hlY2tpbmcgdGhlIGZlbmNlIHN0YXR1cyBiaXRzIGV0Yy4uLg0K
DQpTbyB0aGlzIGRtYV9mZW5jZV9pc19zaWduYWxlZCgpIGlzIGZvciBhbGwgbm9uLW5vdXZlYXUg
ZmVuY2VzIGFuZCB0aGVuIG5vdCB0b3VjaGluZyB0aGUgaW50ZXJuYWwgZmxhZ3MgaXMgcGVyZmVj
dGx5IGNvcnJlY3QgYXMgZmFyIGFzIEkgY2FuIHNlZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4N
Cg0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgbG9uZw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
