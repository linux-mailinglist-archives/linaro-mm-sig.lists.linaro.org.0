Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 159F5AB3108
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 10:05:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF3E745539
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 08:05:28 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2044.outbound.protection.outlook.com [40.107.237.44])
	by lists.linaro.org (Postfix) with ESMTPS id 2C31F43C33
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 08:05:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=e73D0FuL;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.44 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m7J+XCJrWhDxVk/TBrJ7q6iVmFBVz1nloSr7lpd1vlK0iAfvjHm2fhl0FdYHQT20c7rw5WX+WzahlbOS5tXChXofOTD7CBowNuEqog0Xu5Wib+DI3T37ewtvsVDYkP8+rk5BDNgMeSObnzedPqyKWlkE7vkZjuVi/nnmSHLleGA0fHIfevQVeSvxLaDF5ZMLhf7xh0+M1w8pDMUhlh0KS3AGY8FTLGtf1AvGCLAS7rKbPSL1jtuB/f3NFwnmGcFLXLi/q1SGA5U+QST71IUrsf0K/v3d+IJvPerwl4uo80d7tEJ1o60ozu7P1ryonzdgkp+Kb4iZ4LVo5T3LBnA19w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i2fqvb3nJGzkeP1Wv+aKLXfX2HAYxwJhJ6tDRCCc7FA=;
 b=Yfb1atG2ZDWl9qoKTY4pM9W/Y2lXoaEPgd3xZhFcCL16IQRWR8MHRTkyKg6ET7FF8i29aXajZxzOg25Y+asThIDlvVle+DkEcs2bcSGTEaRolBp4svOLJnEKscUQRPLn7ptBnbrxEXhntKhaJhAeGYQ9MXukPo4cbNMiyHWV3Fwf1BoXey+8/EGv2gN9jESktcDaKpbGidP7DH9zCGuHVZqr9yz2qk+jZsaNnYJ7qGx7/UsbbscOdcahZbwJI0xOq7tdr21RcaWjORc55lDAp5mNcJ55asw52lhggZRUdcau38FuRJYErijuPiDeNpxH0fB0mw8vr94eM4tCVM47jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i2fqvb3nJGzkeP1Wv+aKLXfX2HAYxwJhJ6tDRCCc7FA=;
 b=e73D0FuLoHDl2bV5YvORqVjGM5l63bjFU8r61FvzPECG1sguEU+ZM1rk8IwXFvdOVvwdG7Htg+iAmPV5Gdp8XL1IxcYJUa6RKm3A8DfPeIAJXZMwFfvy/YsovNhxB5B0n47Dixg48LZ35aKgv5eKuQEA0AuvkEC+sNz3nkN+gLU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB7979.namprd12.prod.outlook.com (2603:10b6:806:32a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Mon, 12 May
 2025 08:05:12 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 08:05:12 +0000
Message-ID: <b99eff49-cac4-4728-b66e-48bdffb94883@amd.com>
Date: Mon, 12 May 2025 10:05:05 +0200
User-Agent: Mozilla Thunderbird
To: Matthew Brost <matthew.brost@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
References: <20250509153352.7187-1-tvrtko.ursulin@igalia.com>
 <20250509153352.7187-2-tvrtko.ursulin@igalia.com>
 <aB4jgtwqqNUs11py@lstrano-desk.jf.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aB4jgtwqqNUs11py@lstrano-desk.jf.intel.com>
X-ClientProxiedBy: FR4P281CA0150.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b8::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB7979:EE_
X-MS-Office365-Filtering-Correlation-Id: 153898e0-1260-4b39-4378-08dd912bb898
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZjE1blRBWG9lclQrMFMrQkJtREZQUFBmRFp4TXBmcmpMTFRYYTZuRThRUVRO?=
 =?utf-8?B?UFdvMVU5SlloL09udUNGRmR4QnJiL2Y2Q2FDQWx1RVU0UDVYOFNlK29TVU1o?=
 =?utf-8?B?ZU9GU0RZcm0zeEovZGxjYXQrRTExempVRDRnS1lEVkZ0bGd1OVhvOWkzRkY0?=
 =?utf-8?B?Q2s1cnJQdVpueWJMVUpZRG94bkRla2pTY3pZQ3VUQmZiR2VJRlRuWGxsQVRL?=
 =?utf-8?B?Y3UvVGNyTllPOFlkckFLWHNXeUQvbm4vWGY3Mjd6d1V3SDFNc04yMGNPOS8z?=
 =?utf-8?B?dmd5U2RTWFRTN2k4Si9QVDVhSzhVNkZvL3dkdzVYNWRwd0tPSDRqVnJYa3dI?=
 =?utf-8?B?WHpsY3pCbW9Pa3doMHpEVGFtaW5JWWdON2pvTHVwZS9yck4wN0FlUXcySzMx?=
 =?utf-8?B?b3dsQnRRYU5qSXlRelhWNnlVNzB0cUZTTVJlS3p2WVA3VExBSzVWdUFqTG9X?=
 =?utf-8?B?ZjRNMG02a3NLTEY5ekk2WFdJM0JhQ2lkbFhyK0oyYW1DcHl2NnY5aW0xcFZV?=
 =?utf-8?B?YjVaZkVjMVJUWGROR0R0aWFlU3NxbXBMVWVDMHlrZFZtcWFtMFJYdEk3Ukwy?=
 =?utf-8?B?QXBZbklxRitlQzZOVmFMMkdpOXhhL1Vyck5jWlRHOTd1V0g5WFFOYXIxT1FJ?=
 =?utf-8?B?NzVUT2ZTZk1vbi9EMVNXekpqOHJQK1RNaExNRVlxeE9BdnQyV1JTdmhkRzc0?=
 =?utf-8?B?YU5UeEZGL0pMajJTNVl0bGFvMzhJaEtxMFNRaUFKbjV5SWF0a0tMODFZR2FZ?=
 =?utf-8?B?TmRXWUlKcnA2cm0zaFk1UzExQmpQSUJkRG5VcUJ1NjFITHp0czIxWFNJZEJ2?=
 =?utf-8?B?MFE0bzZ6SUsxbE9CaDdHUUQ5N1RQMDJodXBVdlJQQjcxdGFDSFU0aFVnS1Fu?=
 =?utf-8?B?NDh3SGh5UUwweFBFYzQ2RGE1emxiUUdMa2tRMFRVTHlQS2ZXblFWQ0Q4bDJt?=
 =?utf-8?B?cE5WMWdwem5vbU9JcFYvOWV3UjJCQnlEQmlmd1FrdGc2aFBzM1Q1VDFkblhh?=
 =?utf-8?B?Q2MrYVR0a01rNHVEMkZkYXFuMFpmc1ZKV2pGOERvd1g5NWdGVUliRlFwZTNz?=
 =?utf-8?B?dFd5ajdHanR4cURvcUFiR3UwMjFMVm00TVRKUkhRbXBHTFdJS3ZicGpmNmJS?=
 =?utf-8?B?ZjlkN2NJUWI3cUR5dFE2bnRIaXhJcXF5K29vT3BUM21FUFFwVFVxdlFXU3JZ?=
 =?utf-8?B?UzhFdlVqNWJ3bTZ0S1Jsd2cwZ1ZYVTJBV2wyUXJSblJleE54djdFc09vSkRO?=
 =?utf-8?B?NXNWM05nbE0ydkhWc3BZVU1VOGZ1OXREbnZlZ0N4SHg1cXVMK0JqZ0Z3T1d2?=
 =?utf-8?B?V1NYQURrSmhIdS9FRWF2aW9LTHNPMzV2NWRIVXpta0V4bUJmeDV3S0ZSSUZR?=
 =?utf-8?B?c0ZYRnhISVRmMWYwMFd6TmQrWENiVGhrUmVRdGFSVFViZjBwN0Nmd09HOVd0?=
 =?utf-8?B?eGNaOXZhdTFSQkpkc0p1SytXTmgvbjJURjBzWEtlN1ZuUW5lMmpaR0s4ZHRn?=
 =?utf-8?B?bzlqSm55dW9nR0ZxMzMvWkRGaVRoNkNSTFl1b0krSmxDWnFESGdqb3cxeEQw?=
 =?utf-8?B?bTBFUnJ5aVBZSmRRNm43YXkrV09hZXlIVUlzemlpaDAxVjVkeUdYWDNuYUpU?=
 =?utf-8?B?M3ZKQmR6UnZwVy9RRFVRNmIwQlJUM3RlMnI1c2M5cjgxdFZtNVh2TUVVdEtI?=
 =?utf-8?B?c0FJWElndXJKeU45bUVPMHZtRlZwMWFsYlRIN0x3YXRiT3lRRHh2S25HOWFJ?=
 =?utf-8?B?UXVSSWdxdnpwSkpkMURVdlFPNkdUZkVabXByTUdUR0tXY1h2MEE3SUllWlhu?=
 =?utf-8?B?VWNVMHJZVFAwbjcxdTU0KzZYYlVoamdkUXJVUnVaTkFwNjZhdkw5ZHRyZEUw?=
 =?utf-8?B?UkxVWktuQUJTb0NqL2lya1RNUFdQd3FabFZiMjl6STgxM0IzMEFSOTNKczlp?=
 =?utf-8?Q?dNPFW/XfJAQ=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QktaWDVWbnd1RUdySW11ZkZHTlIwL1BQdC9OQmVTRzBzQ3BGNjc0VU5jY1Mw?=
 =?utf-8?B?MG96TGdWQVRMcnVVNGNOWWhERlBSdFgzcklWUmduM0d1dWJJRFovWHBrU3dS?=
 =?utf-8?B?WFZZUUdoMW9IZ2ZXVDZZWVN3LzdMQk1QbThUWXJPNitqZ0IwTzhmY0lUNlZN?=
 =?utf-8?B?Uk03VUttcUxUMWRCdWkwWEgxWjB1VHhReWdwYy8zRGZDZWkzVWxzUEZ0V2hO?=
 =?utf-8?B?M2k3bDNDOXRzV0s3eXA1WlZObk5jRkRYcVp3N2gxaUZyYXJzOWp2L3B3cFdI?=
 =?utf-8?B?d2haTTJnc3FzM3N4QzBFc090SVBHTVhOajM3S0JmSE5DK2VYWWdab1NDV0lI?=
 =?utf-8?B?ZCs5WEdKRDBEWFJSWEVYLzMrN3V4N2dScWE4MWpidlBEWnVCZEpybXYvc241?=
 =?utf-8?B?NnY0ZTd4czhWeE04WVlzd0R5bXRUc1J3eW9kVElhdUltMDdUTnpFZ0VyRWJ2?=
 =?utf-8?B?KzhKL3g2by90a3YvdkhONU40RW5SN3psSjJzV2VYa1J4VHRWZW1zQk5Nbnl6?=
 =?utf-8?B?ZlJPMU1NZ2M2U2RXOWFxUDdyeHYyUUxwZjE5dEx5MlJRZ0liYXhzSjVxZy9n?=
 =?utf-8?B?c2JpSWtuTDZVYnV6QWE1czVsaWo0SkE2NVg2V1VldEJYdGNwNnp2Yk5PdUt1?=
 =?utf-8?B?bm4vK2dzb1YrSDcyR0t2ZzhYUENpQlRpL0NJbUtUa293L0I3cURpVnRVSHo0?=
 =?utf-8?B?cDZoaHM5aDA0ZFZ2dXllWnZMRDVwem5ZR0pJRzdwMmtKZjFoeExCR2diSk81?=
 =?utf-8?B?T0YvUHVGb3RGc3BZVG1tSFNyZzFjUi9WMVdLOTNwQjhRZzI4aWM2cVZXdGs3?=
 =?utf-8?B?QTNpWDIvNVlMZ0k3WGNmV0tkS0Z2SllYNVNWZ1M5QlpmdU1KcVVLT3paa1dK?=
 =?utf-8?B?aUhCaXNuYTIwcUtTazR3ODNVZ2JIN3luT09xZ0dZcFU5cU5SOEFPL1VnTy9L?=
 =?utf-8?B?dlN4WWpMZS9JVmF0cElqdDgwT1p1Tk9yUTNtcHdJaVBsb3NOb2dTK3JFTjJr?=
 =?utf-8?B?cW1iMmV3THdZUkZWOWxSUnc5ZDE1NTZJLys2SnJnLzVuRTdCb3FxTUJzSjMv?=
 =?utf-8?B?MUZYb1lRMDhwc2F5amlROG13MG5KRDdISnEzNHlkZzhyek51RFQyMitoRVE2?=
 =?utf-8?B?YnlCZ0xqQit0NmlndTVaZW40M3JuZFRWVFpKOVFRc3pPWi9DTDE2dkhBVlBu?=
 =?utf-8?B?NXVZRUNZMFpNQTl1Rzh0Qm5kVVUzWFU3SWRxMVMxcno5T0xSRlZTeEYxaXlu?=
 =?utf-8?B?bXFidGRyazg2NjZCS3M1czdVczgzV1JzTzlldGFaa1hIUkdzVDJHQlRnMnRD?=
 =?utf-8?B?Vm81ZVMwc01Lb0FtejJsM015SmJQTHVTVmJkTUJ5N1FrVURpVFdYeXBML25X?=
 =?utf-8?B?akY0V01vL3RxTVczNFQxTHdQajVySHIwdEIvdXhSK01rNUZuOVExY2RsSWpY?=
 =?utf-8?B?UWswYzhFY3NIUmVIRXNKU0g2M2JSQk9pb3JwWGxZTEFscGxMa091MlpIN0VQ?=
 =?utf-8?B?a09CSFROeXVOdFYyd1NNcmYxYzZFd0RITC9yK2FNektQc05pYjBwbEk3dGpE?=
 =?utf-8?B?Q1lUM21HWnd1eFY3eVU2UUhScm82aGIvMzIzTVZDUU5mUVBCcitVRldHbE5C?=
 =?utf-8?B?SWx0ODdzcXYvY3hOQUtzY0ZwZ3luV3BoczEzd29Qd2NkWitCRnpJYjZ1a1Q2?=
 =?utf-8?B?bHVTSUYwYUdFS3RvWWx3SGxxTHcxeDlqQ0lDNHhTckRIOHpzVU9jUEhuOHNm?=
 =?utf-8?B?d2Y0WGgxTVh3SkRMU2hVQ1JuUGlNMlFSbUQ5SGdtNnJlaDlBNEw4ckVEQmdT?=
 =?utf-8?B?VmJsZlRObnI4WFdETkcvbHJRUkRjbXhqaEZmV3BkMmJ2VktobGZlZHUzSFBX?=
 =?utf-8?B?eTB6QzRibXdIY1hiWWdPb2xkNVRZa3B1NkpIaWVmOTlCdWUyK1l1cFVjcDVk?=
 =?utf-8?B?bzlPWi82aXAyL2p5YWE4eTF1dVRycXliakdUaFh1NU9RMTZhUmlrUW1Fc1E1?=
 =?utf-8?B?UmlYYzdxcVRFZkhyM1pGelZCVmVJUjIxYlBoS25GRThRNUJUVUVYRXhNNnQ2?=
 =?utf-8?B?dDFLMzYwQXBCRTZEcXVJTXgxM3BGRXRmLzZreEVJLzJrUlVFckFPMTVBRmxR?=
 =?utf-8?Q?cK7M=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 153898e0-1260-4b39-4378-08dd912bb898
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 08:05:12.6322
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A5gIfPZBvBkTec4hIulHW8ucLk5ZLfuAddjTxydUeQKXzLkt3ZChhI6sJ6Oqf2w4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7979
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2C31F43C33
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.44:from];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.237.44:from];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: UNXOR6JOBIF4BRLNKQEGWGHZKUMIN4S6
X-Message-ID-Hash: UNXOR6JOBIF4BRLNKQEGWGHZKUMIN4S6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, amd-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 01/13] drm/i915: Use provided dma_fence_is_chain
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UNXOR6JOBIF4BRLNKQEGWGHZKUMIN4S6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS85LzI1IDE3OjQ3LCBNYXR0aGV3IEJyb3N0IHdyb3RlOg0KPiBPbiBGcmksIE1heSAwOSwg
MjAyNSBhdCAwNDozMzo0MFBNICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+IFJlcGxh
Y2Ugb3Blbi1jb2RlZCBoZWxwZXIgd2l0aCB0aGUgc3Vic3lzdGVtIG9uZS4NCj4+DQo+IA0KPiBZ
b3UgcHJvYmFibHkgY2FuIGp1c3Qgc2VuZCB0aGlzIG9uZSBieSBpdHNlbGYgYXMgaXQgZ29vZCBj
bGVhbnVwIGFuZA0KPiBpbmRlcGVuZGVudC4NCj4gDQo+IFJldmlld2VkLWJ5OiBNYXR0aGV3IEJy
b3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KQW55IG9iamVjdGlvbnMgdGhhdCBJ
IHN0YXJ0IHRvIHB1c2ggdGhvc2UgcGF0Y2hlcyB0byBkcm0tbWlzYy1uZXh0IG9yIGRvIHlvdSB3
YW50IHRvIHRha2UgdGhpcyBvbmUgdGhyb3VnaCB0aGUgaTkxNSBicmFuY2g/DQoNClJlZ2FyZHMs
DQpDaHJpc3RpYW4uDQoNCj4gDQo+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCj4+IC0tLQ0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV93YWl0LmMgfCA3ICstLS0tLS0NCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDYgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fd2FpdC5jDQo+PiBpbmRleCA3MTI3ZTkwYzFhOGYuLjk5MTY2NmZkOWY4NSAx
MDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMN
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMNCj4+IEBA
IC0xMDYsMTEgKzEwNiw2IEBAIHN0YXRpYyB2b2lkIGZlbmNlX3NldF9wcmlvcml0eShzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwNCj4+ICAJcmN1X3JlYWRfdW5sb2NrKCk7DQo+PiAgfQ0KPj4gIA0K
Pj4gLXN0YXRpYyBpbmxpbmUgYm9vbCBfX2RtYV9mZW5jZV9pc19jaGFpbihjb25zdCBzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSkNCj4+IC17DQo+PiAtCXJldHVybiBmZW5jZS0+b3BzID09ICZkbWFf
ZmVuY2VfY2hhaW5fb3BzOw0KPj4gLX0NCj4+IC0NCj4+ICB2b2lkIGk5MTVfZ2VtX2ZlbmNlX3dh
aXRfcHJpb3JpdHkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+PiAgCQkJCSAgY29uc3Qgc3Ry
dWN0IGk5MTVfc2NoZWRfYXR0ciAqYXR0cikNCj4+ICB7DQo+PiBAQCAtMTI2LDcgKzEyMSw3IEBA
IHZvaWQgaTkxNV9nZW1fZmVuY2Vfd2FpdF9wcmlvcml0eShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwNCj4+ICANCj4+ICAJCWZvciAoaSA9IDA7IGkgPCBhcnJheS0+bnVtX2ZlbmNlczsgaSsrKQ0K
Pj4gIAkJCWZlbmNlX3NldF9wcmlvcml0eShhcnJheS0+ZmVuY2VzW2ldLCBhdHRyKTsNCj4+IC0J
fSBlbHNlIGlmIChfX2RtYV9mZW5jZV9pc19jaGFpbihmZW5jZSkpIHsNCj4+ICsJfSBlbHNlIGlm
IChkbWFfZmVuY2VfaXNfY2hhaW4oZmVuY2UpKSB7DQo+PiAgCQlzdHJ1Y3QgZG1hX2ZlbmNlICpp
dGVyOw0KPj4gIA0KPj4gIAkJLyogVGhlIGNoYWluIGlzIG9yZGVyZWQ7IGlmIHdlIGJvb3N0IHRo
ZSBsYXN0LCB3ZSBib29zdCBhbGwgKi8NCj4+IC0tIA0KPj4gMi40OC4wDQo+Pg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
