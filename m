Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 676FC97ECAB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Sep 2024 16:01:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75A773F533
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Sep 2024 14:01:04 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2072.outbound.protection.outlook.com [40.107.223.72])
	by lists.linaro.org (Postfix) with ESMTPS id CD4F53F3ED
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Sep 2024 14:00:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=xB6CXoxh;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.72 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gu39bdfifBEu1q03zYFKjkl/Oa1dQWXVElU+LFoQ0KZIUPKpHchZagC3ji33t5sv9V7jeSe9B7OJObPJKM39JbyNo6ruoWUnrpIqEIKfib27TUiWuL1+lZ+lDmBFkd9o8bf1s0Tg0vsw5vNPWXPqzw43zbIZuE9Kzwpe9VdqLUwnnXu4CBhs2vLjPN054Sh52VjUiYvPmCH/VQRiqPcqdXCe4rv614jrvgHxNTvxXmr6wllANZwvb7XaDen8JO7jsZbw1uLabgiX8Ph9d1ps8//GBwWNoHszEie2jqPPrUIDzGNLxX6Y9ZZLIAdU3omIlzJe9afeGFPFAGQsC4Qjig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RiEsEBFbyyM/GCeR+uQq4wSZjae7dU16hQQ7ZHpik4U=;
 b=RNxf8eMMF24jio+4rpEekOTOt9pgU4SKnmjzi9BZPuKO4FjWbnSr1SZtr6Rmko7k5CAny9Y6RDGkoR6vH0G0LGBl7Tagke+yRlybxoW0EjM/CfExEb8euVrafJ3xd2GXp9jxEcD520z/b7o38O0R6hiP1dfxrmCBUPp9sIMrCWk4Lf+Q5vfpywa/FHoKMXat/UfntlBM2dpkG2VVTUGFC9COgFQBjXoHlI3qa767QjiOMk/RrMErerlQu//cNPPmUq8gMMHg9DQtKLOhqqOzbmZsElbnK8tzYJdZEZR7bfThYM8SU9N+Iwi7AxasPu0BBbsjvch5aQNG/gMq6nBecQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RiEsEBFbyyM/GCeR+uQq4wSZjae7dU16hQQ7ZHpik4U=;
 b=xB6CXoxhtgNBSifzyRzkNdEuB6v2riYDcAyfbL4W0Q+Dm732T5jfWGk28noq9wQHYIrPVWTQMumWt1aUcO1yV9H8HUJNIDGLt6sNhVr2MZ/UnAEtjBag9gUaaZzOV1zreGdrO88WT40H7WsdHRbJvi2WZOd2C1u2SyylLjNJew4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY5PR12MB9053.namprd12.prod.outlook.com (2603:10b6:930:37::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 14:00:45 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%2]) with mapi id 15.20.7982.012; Mon, 23 Sep 2024
 14:00:45 +0000
Message-ID: <af565f2c-1cb3-4ad9-a482-420afc8e6e41@amd.com>
Date: Mon, 23 Sep 2024 16:00:39 +0200
User-Agent: Mozilla Thunderbird
To: Tommy Chiang <ototot@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20240119033126.1802711-1-ototot@chromium.org>
 <CAH2knV03g8_z8326yd=pQV11X3N1VFc_DqXzVjMgM4Q0C+8awg@mail.gmail.com>
 <CAH2knV3RZdnu36+dDQGU834G+82dOqtyHY4RhRow5tb0VXWpqg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAH2knV3RZdnu36+dDQGU834G+82dOqtyHY4RhRow5tb0VXWpqg@mail.gmail.com>
X-ClientProxiedBy: FRYP281CA0009.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::19)
 To PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY5PR12MB9053:EE_
X-MS-Office365-Filtering-Correlation-Id: 7382a360-e59b-42e8-92e9-08dcdbd81e84
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eWNpOCtOVElIS3RsdEczWGl6SjZrYTVNTFd3eldmT0pzUFBxamh0ZVdsQnpT?=
 =?utf-8?B?VzV4anp3b0xjbVBEVS8zdUVieEk1UnptV0JLU3MwMkJVU3UzZzhRZXVPR2g4?=
 =?utf-8?B?YVF1ZHJvSWhoTnJ2WTQ5QXUrT2x0NWN4U3JUaDNSa2xzQXUxY2xFVEtkY0RL?=
 =?utf-8?B?N3JTS3h0cXdaeG1MNmpHV0hiRGl3MWorbHhLOHpTKzIzbVY2bU10aU9BbWxL?=
 =?utf-8?B?WHRMb1hKQjlkbGR1dEwyL0d2YmFyakdJckVaZXQ2SitYOThVTmlZZFpGNWt3?=
 =?utf-8?B?eDJ2YSt4OEdsNDZZL0pFVzR4TiszbE5NVnJzRlpHV1hmQmRrd0MzdXkzTGMr?=
 =?utf-8?B?ZEIybkpwR3o3SytqcFJ6TGhpaEhQU3ZKRENZRWtTWFEzd2F5bW43dzdIbW5q?=
 =?utf-8?B?cVpINFhjb1hrNTZrSUw5RVBCUjd0NTBDUkVjekpHWFR2cC9CWVZ4Y0pUWDll?=
 =?utf-8?B?UEhnSEdNNXVpK25LMDBYTTFyNFRkc3BLMFpvY2JiMXlDRTdOakVMQlFnNUJY?=
 =?utf-8?B?UkFHcFhUK1ZtQWhYL1g1cTJGazJjYmRmUzBzSHZFRUZuQXlKMXpnOGhkdGVB?=
 =?utf-8?B?SzlsYjNjZmhzWjNmeERjVDQzWitNaHpuMTR4ZnVEWUU5Rk15Q0pNaWpYT0E3?=
 =?utf-8?B?VTFRVlVyaWVXeHR3T1RBOERob2dHMVRYeHlTck1mN1BaVlNUMnNuTVVBU05l?=
 =?utf-8?B?M2c2Qkk2ODBjNVcrVGF1bkNQSmtmYlFPQ2VwRU5PV0QyRFZlMkhjc1Z4S0FN?=
 =?utf-8?B?QWp1bEdkN0Fkay8yaWJTSDA4L2FQeEpOaUNIeDkvWS9CUW93YmlGNnVXcnZ4?=
 =?utf-8?B?S1ZKQkVYSjFpNnhYaVhTNHBiMndoOUsycnlSRENKNU9ieGtDUGlUeWtIL0Rh?=
 =?utf-8?B?VEludG5Wb3paU2txa2VDK1liSThsQzhzMzlsWVVBZXRWeUs2YTBQL2JNdldi?=
 =?utf-8?B?Uk1wSk5tVWM0aXMrb3pJY05ZdktOeDh4UlFqeFVnc0x6c2Z0aTVndnROWTFa?=
 =?utf-8?B?bk55cytuczZxOUl3NU1HWXl2UUdFN3NERFEyb0dpMi9ieDZOUWJ4NmJzcW9L?=
 =?utf-8?B?RWhGT25iYVE5TDQwRmxRUlh3emZnN3R2OHhEQnJWQlZpSU5kUFVTR1RtcFpG?=
 =?utf-8?B?cEYwRk93TFY4a1NDbkgzcElXS1didk9GUWN4YXFCL3BXendDRFRSenJJK0ZH?=
 =?utf-8?B?c043WHFyUEZJK0hibCtHb3VKTXVpc2FIVDQrOFZVNGxnSk9NanJSMURaa1Zs?=
 =?utf-8?B?L240M2gvMHdudU45dzlrZDZlZEpTNnpXTVkvWk92ZG9hYVNKUTRqZlNLSjlP?=
 =?utf-8?B?YWc2VU1WVjlzbmE5WWZaZ1BUZDlISUFjWWZZY01UUmxUY1lNVlIrcncrSGts?=
 =?utf-8?B?TTlpS1JBcFlua240MENSNUptVHlkaE0yRWxCQzJWdEYwbGRZNVY3Wm5PakRO?=
 =?utf-8?B?QnMrQkVnOXpJUDlrREVHWHV0RS9XTzZ4YjJFNCtIZHlZeFUzc0FBdVkvblI1?=
 =?utf-8?B?S1dhRW96aDdpVjE3TzkvQWZJZVkyVFdDVW0wVEtCL21VcmZiaCttWWdmcnM4?=
 =?utf-8?B?UVVmWlBzYll6T0hjU1lKN1l4SGZIZnQwOXEwRlNZVDl5MTRGTkVrOFI5VGpm?=
 =?utf-8?B?c3IrNHgwaVd3QWpFalhMTjNTSTZqbnZLVUZWc2RhK2dhWFZyM21DcFVhcE0w?=
 =?utf-8?B?R1Q5K1lrVi80dU5nUTRDL0xaZlFxbEhLM2lLemk0blBiY0dSejBidTlnPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WmVQLzlvWEJ1dGdFdng3Yk42VlJYWlgzUjBTVTB5Q3FzU3g4SzloaGFvWW1K?=
 =?utf-8?B?QmNrODFpbjE3OTdmbVdSS0xncnh1MTdwTndPdDdzYmxMb3VONGc2eHZ3YmY4?=
 =?utf-8?B?ekFyQjRYVFNFb0NtNFFlY09iajFvaHYwZURVTHVrWGhkd2wvUmsyNFMxYkQz?=
 =?utf-8?B?YkNOZ1JiRkUxN0xLZjRQdkJXZWFxM05PYVBPdEc1SFZnWURhcXFraXRlOUNG?=
 =?utf-8?B?dUFIaEJIQ3hRaE1Xbm9peTBUWW5IZzYvZzV1dFJ6eCs5YW80WnBjQVUrR28w?=
 =?utf-8?B?WnZiV1dCVzFqU0Y3Uk9sQ0xqWHhRa0JrREdtM1VMWjY0dFFmYXV4aFBDWDUv?=
 =?utf-8?B?aUl0Z09KZTJCU1dmeGtvUXRzZkNtRHFVTGxxUmVnQnNvOVN4aHVmaGg1aCtH?=
 =?utf-8?B?NytlYzV2c1g0TXE4MzRlcWJQSFZOdlhXVlB1dFpPVllaZ3g4TzI4ZzVDdmx5?=
 =?utf-8?B?eEUxVXZuYVhTRUtSZE9PZlJNV01NeVhIaGZpYjRSRGIwZ2s0bEh6d25TVFkz?=
 =?utf-8?B?VkpycUtYbE9JaUZNa3VLMi9JempWL0RFajVZUFlDclJOL0owNWRtc1BqNzZ3?=
 =?utf-8?B?Z0FBNUFVWTBuTUpNczZRVC9hVTY3dEFWMkd1cUFtY0FiemVwUmMzU3U1dHV1?=
 =?utf-8?B?TnQ2WGlxUmIzZ1pxdlBXQ0RRMWZCdHB2Z0VmL1RNYm44ank5VE5ZN0JKVDRw?=
 =?utf-8?B?SlpkTGVKZjRMc3J3QnFqTFB1Z2NtYnRsYzdHR2VZdGlsMHFiN09qeXZtVUJ2?=
 =?utf-8?B?S2dRcWVpL3dYU3Fja1F5c3dJeGVwZ05mdzZpb3JJOTVlbndsdE1aeXltRXVF?=
 =?utf-8?B?MFg4QUZqZkRxWVhQZVRZd2xKK3JkVUNsY3FUTXdwYlAxV1k0M2FwaGhHV1VD?=
 =?utf-8?B?QjZKV1NOYk9hbEQrV1RHSkFVRzdPb1doRGtvNVRrc1pyM3ZHeHYzNEl4ME1E?=
 =?utf-8?B?S3ZSS29QZEp1UjJkMTBuWG9rVzBORUNmeXBIb3NMRThBempubmRKTlRIYURH?=
 =?utf-8?B?RTVCWkFINTJ0U3RMSkdLcklQY1ozMHJCcmhjNHh3NmhITjM5L09IUHBwWDQr?=
 =?utf-8?B?M3Z5eGQ4clBwKzRIeHcwZVRCK3ZITUtJaGlHbThpem9kQTc3ZFVUNUtyNmh5?=
 =?utf-8?B?ZXNwNDcyWEF5NmFvdzh4bWVxbUwwVUlScHNHWEJRYW9XeXZTbW5pK0N2VVNy?=
 =?utf-8?B?WWJHV1BhSnk1eVRnUk1BTExVclRMZHJKajZVNGlROE0reCtuR1c4VTdURkc1?=
 =?utf-8?B?Qm5Fanl2SytpbENpUVpCWVkwNThhS3hBTlFlMmErMHZFLzl3WG5ZN082QUpT?=
 =?utf-8?B?eDd6dTVCRVljdTF6ZzBGOVpLT2w4eERuRlpNdDRKYThMU0ExeGVVb2hyNVY4?=
 =?utf-8?B?Zkp4MU5BSVN0MnROalZVc0U1ZnpTcEo0VGxPbE5OZnBGVVA5UklrbTBOMnVl?=
 =?utf-8?B?Sk9ZY2FzQ1pnN0hlMjNRU1NiUDB2WG1GdmprenUweDJyOHVOT3FndHpZOFcw?=
 =?utf-8?B?NlNUT01LdlpCRjRlOTF1bDlYRFhNNjNBblAvNTl5RlF6VUFLZ2xRQ0xtYi9y?=
 =?utf-8?B?NHlrR3M0M3hFK1VNUE1vNDQvSFJjRTkrMjEwTUdGRThiREkwWE5XNk1iVFIv?=
 =?utf-8?B?Z2htdk8yK3Mrc01BTUF3WHJYYTNrSFJtaHBjZkVSQkZXRVNLNWxjZzcwQUtB?=
 =?utf-8?B?NTBXbWxqM2x1Z3p3T0poL3gyREZ1bXBlUVBCZjdwR1o2RTVGbG55OEN3ZE1r?=
 =?utf-8?B?K1lMTW1Fcy9VSXNzL0w1cVgydnNDSS9IVkprMURNV0Z1azZ4SWZhcTFnTWVH?=
 =?utf-8?B?dXdLTXJsaktPUVFGTm5hVHNTN2N2VFB1NEc3Mkp4VVM3NVBhdW1YY2FMa1NI?=
 =?utf-8?B?eEY1ZzNyT1YyOHNoTVRrOWVvQ3RSNzZvc1FOZUlnRXhtd2FyRjU5MEliR2Zw?=
 =?utf-8?B?d1R1Q29tU1d1NmlkdGNJNEovWEdMUHN4b1E0RzVqa21sSENUQ1lqb0xkWGJD?=
 =?utf-8?B?VW9Xc3hGOWRORHZxc0R5R0ZPc0huWndRYUQ0R1lLMVJOQkZHU2VXdm5tamZo?=
 =?utf-8?B?N296SDNqaWlaWGJSS0YwY094a0xodTd3UktWTkRBVVVrTXh1VW9lTTA3dzg3?=
 =?utf-8?Q?pUQ9mENpXfK+gcwVlGaRFXdFe?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7382a360-e59b-42e8-92e9-08dcdbd81e84
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 14:00:45.2475
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZElz3Isfoy8od8WuCdFp3iYmnWbeqb/9ZIqSIgE2HTj0iWhwkNZUJd7eL7kxoPu/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB9053
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CD4F53F3ED
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.72:from];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: D2OHE7UD2VIU3ULEH7TOKBM3LWHDIFWM
X-Message-ID-Hash: D2OHE7UD2VIU3ULEH7TOKBM3LWHDIFWM
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Add syntax highlighting to code listings in the document
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D2OHE7UD2VIU3ULEH7TOKBM3LWHDIFWM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

Tm90aGluZyB3cm9uZyB3aXRoIHRoaXMsIEkganVzdCBkaWRuJ3QgaGFkIHRpbWUgdG8gZG91Ymxl
IGNoZWNrIGl0IA0KbXlzZWxmIGFuZCB0aGVuIGZvcmdvdHRlbiBhYm91dCBpdC4NCg0KR29pbmcg
dG8gcHVzaCBpdCB0byBkcm0tbWlzYy1uZXh0Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQoN
CkFtIDIzLjA5LjI0IHVtIDExOjIyIHNjaHJpZWIgVG9tbXkgQ2hpYW5nOg0KPiBQaW5nLg0KPiBQ
bGVhc2UgbGV0IG1lIGtub3cgaWYgSSdtIGRvaW5nIHNvbWV0aGluZyB3cm9uZy4NCj4NCj4gT24g
TW9uLCBGZWIgMTksIDIwMjQgYXQgMTE6MDDigK9BTSBUb21teSBDaGlhbmcgPG90b3RvdEBjaHJv
bWl1bS5vcmc+IHdyb3RlOg0KPj4gS2luZGx5IHBpbmcgOikNCj4+DQo+PiBPbiBGcmksIEphbiAx
OSwgMjAyNCBhdCAxMTozM+KAr0FNIFRvbW15IENoaWFuZyA8b3RvdG90QGNocm9taXVtLm9yZz4g
d3JvdGU6DQo+Pj4gVGhpcyBwYXRjaCB0cmllcyB0byBpbXByb3ZlIHRoZSBkaXNwbGF5IG9mIHRo
ZSBjb2RlIGxpc3RpbmcNCj4+PiBvbiBUaGUgTGludXggS2VybmVsIGRvY3VtZW50YXRpb24gd2Vi
c2l0ZSBmb3IgZG1hLWJ1ZiBbMV0gLg0KPj4+DQo+Pj4gT3JpZ2luYWxseSwgaXQgYXBwZWFycyB0
aGF0IGl0IHdhcyBhdHRlbXB0aW5nIHRvIGVzY2FwZQ0KPj4+IHRoZSAnKicgY2hhcmFjdGVyLCBi
dXQgbG9va3MgbGlrZSBpdCdzIG5vdCBuZWNlc3NhcnkgKG5vdyksDQo+Pj4gc28gd2UgYXJlIHNl
ZWluZyBzb21ldGhpbmcgbGlrZSAnXConIG9uIHRoZSB3ZWJpdGUuDQo+Pj4NCj4+PiBUaGlzIHBh
dGNoIHJlbW92ZXMgdGhlc2UgdW5uZWNlc3NhcnkgYmFja3NsYXNoZXMgYW5kIGFkZHMgc3ludGF4
DQo+Pj4gaGlnaGxpZ2h0aW5nIHRvIGltcHJvdmUgdGhlIHJlYWRhYmlsaXR5IG9mIHRoZSBjb2Rl
IGxpc3RpbmcuDQo+Pj4NCj4+PiBbMV0gaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvZHJpdmVyLWFw
aS9kbWEtYnVmLmh0bWwNCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFRvbW15IENoaWFuZyA8b3Rv
dG90QGNocm9taXVtLm9yZz4NCj4+PiAtLS0NCj4+PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgfCAxNSArKysrKysrKystLS0tLS0NCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlv
bnMoKyksIDYgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+PiBpbmRleCA4ZmU1
YWE2N2IxNjcuLmUwODNhMGFiMDZkNyAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jDQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+IEBAIC0x
MjgyLDEwICsxMjgyLDEyIEBAIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfbW92ZV9ub3Rp
ZnksIERNQV9CVUYpOw0KPj4+ICAgICogICB2bWFwIGludGVyZmFjZSBpcyBpbnRyb2R1Y2VkLiBO
b3RlIHRoYXQgb24gdmVyeSBvbGQgMzItYml0IGFyY2hpdGVjdHVyZXMNCj4+PiAgICAqICAgdm1h
bGxvYyBzcGFjZSBtaWdodCBiZSBsaW1pdGVkIGFuZCByZXN1bHQgaW4gdm1hcCBjYWxscyBmYWls
aW5nLg0KPj4+ICAgICoNCj4+PiAtICogICBJbnRlcmZhY2VzOjoNCj4+PiArICogICBJbnRlcmZh
Y2VzOg0KPj4+ICAgICoNCj4+PiAtICogICAgICB2b2lkIFwqZG1hX2J1Zl92bWFwKHN0cnVjdCBk
bWFfYnVmIFwqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwIFwqbWFwKQ0KPj4+IC0gKiAgICAgIHZv
aWQgZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgXCpkbWFidWYsIHN0cnVjdCBpb3N5c19t
YXAgXCptYXApDQo+Pj4gKyAqICAgLi4gY29kZS1ibG9jazo6IGMNCj4+PiArICoNCj4+PiArICog
ICAgIHZvaWQgKmRtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9z
eXNfbWFwICptYXApDQo+Pj4gKyAqICAgICB2b2lkIGRtYV9idWZfdnVubWFwKHN0cnVjdCBkbWFf
YnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+PiAgICAqDQo+Pj4gICAgKiAg
IFRoZSB2bWFwIGNhbGwgY2FuIGZhaWwgaWYgdGhlcmUgaXMgbm8gdm1hcCBzdXBwb3J0IGluIHRo
ZSBleHBvcnRlciwgb3IgaWYNCj4+PiAgICAqICAgaXQgcnVucyBvdXQgb2Ygdm1hbGxvYyBzcGFj
ZS4gTm90ZSB0aGF0IHRoZSBkbWEtYnVmIGxheWVyIGtlZXBzIGEgcmVmZXJlbmNlDQo+Pj4gQEAg
LTEzNDIsMTAgKzEzNDQsMTEgQEAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9tb3ZlX25v
dGlmeSwgRE1BX0JVRik7DQo+Pj4gICAgKiAgIGVub3VnaCwgc2luY2UgYWRkaW5nIGludGVyZmFj
ZXMgdG8gaW50ZXJjZXB0IHBhZ2VmYXVsdHMgYW5kIGFsbG93IHB0ZQ0KPj4+ICAgICogICBzaG9v
dGRvd25zIHdvdWxkIGluY3JlYXNlIHRoZSBjb21wbGV4aXR5IHF1aXRlIGEgYml0Lg0KPj4+ICAg
ICoNCj4+PiAtICogICBJbnRlcmZhY2U6Og0KPj4+ICsgKiAgIEludGVyZmFjZToNCj4+PiArICoN
Cj4+PiArICogICAuLiBjb2RlLWJsb2NrOjogYw0KPj4+ICAgICoNCj4+PiAtICogICAgICBpbnQg
ZG1hX2J1Zl9tbWFwKHN0cnVjdCBkbWFfYnVmIFwqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgXCos
DQo+Pj4gLSAqICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nKTsNCj4+PiArICogICAg
IGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRtYV9idWYgKiwgc3RydWN0IHZtX2FyZWFfc3RydWN0
ICosIHVuc2lnbmVkIGxvbmcpOw0KPj4+ICAgICoNCj4+PiAgICAqICAgSWYgdGhlIGltcG9ydGlu
ZyBzdWJzeXN0ZW0gc2ltcGx5IHByb3ZpZGVzIGEgc3BlY2lhbC1wdXJwb3NlIG1tYXAgY2FsbCB0
bw0KPj4+ICAgICogICBzZXQgdXAgYSBtYXBwaW5nIGluIHVzZXJzcGFjZSwgY2FsbGluZyBkb19t
bWFwIHdpdGggJmRtYV9idWYuZmlsZSB3aWxsDQo+Pj4gLS0NCj4+PiAyLjQzLjAuMzgxLmdiNDM1
YTk2Y2U4LWdvb2cNCj4+Pg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
