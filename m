Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D22F8A77F00
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 17:35:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8F974628C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 15:35:01 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2076.outbound.protection.outlook.com [40.107.220.76])
	by lists.linaro.org (Postfix) with ESMTPS id 2319343F6B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 15:30:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=B7eEi1E2;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.76 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aIEHKmXO6EqEn4Yvz61yiP/lAWAaFg4thMJ3U2eX1f4AKox2PSisTnL9Jo7pAC70fRALL/Dhr59dz4yUH99MfP3ElzhPD4T0kyNJke4ViQhdKaR6oaaFQlZK3uBJyvzyknjNomPbJyozhGF069Uqt6F63wb+bNvYPUYJWLeaYRZuyMcbIhITKrAx8fpU7eMBkDW9cKvATXxhdmrUbKRIYnElSVv8NVB9ABBlWPLzl922P4LPTaV01oeo7oiKo8JmlBcCmW9MNw7jCe2yh/5EAGs0C4c2ErzolCjhtkDHUt3vqlh0PXLQO8EcU6g28bjJORAyeCOkuhq4S0QRa13YFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9fho9N6HnKoc4uh0mleAvOGCm4dCDwcB9d0A/j+eQw4=;
 b=g+WgDBEsyvz55pJiEDifCrlOQQUzhfK8tfktAfEGSTLFaEhvJ21GwfMJ0Nr5V220DAfNqhCaVguN29W5LJIakJ19+DHBRhoNcK4dlth7OtRCe0wv0dDVmjtN6dGp5GKdOSS3xTNKPpOGhZGwL/3jTu0odjKeneldrmRYTSLwOF8j9x86L2P9XMqAxc4W94n3cA12e+/2AUK8oIF7YkGUqbhrOL31BE5u6mDsJ+WrKLmDvogtTv7SGO3T7r7am7g4lyNO4cdrrz9YPzlApkoVrRgmObMdTKtE8n9AWoHnwmUtav4PrShAtVysjl40A58NuBkgDdB4pYeTdGh3ngYprQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9fho9N6HnKoc4uh0mleAvOGCm4dCDwcB9d0A/j+eQw4=;
 b=B7eEi1E2MRyEnrJNE9IQOCrnjsLaCgPW4rDVURWcCXxS8Jmq6/qRwQ50snFIKHRESgSjY1y1AALwShygbcLCDCt4sYjzk+mUa6d156iLikAD6AIIUW8pwIgYJcUJCtN8FWcl+So8aWhmtlFWZP6GmGp8UG2XsI0L0C2WgGN03Hg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4408.namprd12.prod.outlook.com (2603:10b6:208:26c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.47; Tue, 1 Apr
 2025 15:28:50 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8534.043; Tue, 1 Apr 2025
 15:28:50 +0000
Message-ID: <e268d75d-c75a-499e-872d-09f91defed6b@amd.com>
Date: Tue, 1 Apr 2025 17:28:43 +0200
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>
References: <20250401-dma-buf-ecc-heap-v2-0-043fd006a1af@kernel.org>
 <20250401-dma-buf-ecc-heap-v2-1-043fd006a1af@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250401-dma-buf-ecc-heap-v2-1-043fd006a1af@kernel.org>
X-ClientProxiedBy: FR3P281CA0133.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4408:EE_
X-MS-Office365-Filtering-Correlation-Id: fcb49872-4a1f-4301-953a-08dd7131e706
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YlE4SXNlaG5tTFNQQWFIcmdQbEU4WUFBa1lQSmNtYkJjNUpKc2Qxbi9zNVov?=
 =?utf-8?B?VFJJekZ5S0RjZktGVVl2Q1h0STZxemo0SFhaeVRQcUYrK0NpM3cwOFVCR0d6?=
 =?utf-8?B?b2djUzhCNGNXK2VTZXgrZWlVck0zQit3MWliRnFGQlZGdTZzRS9RWkswaTRL?=
 =?utf-8?B?U3dqVU5UQi81VUszRGZXeEFyQWJXZURIWDMrUVdjN21vQ0s0YUhsMkpPbDdT?=
 =?utf-8?B?TFpDUDFkVStEa3R1NGc4WDBmc3p0VGN2VkN4L3FxUkJSZCtFamExOTdycDNr?=
 =?utf-8?B?Q2NVdjlpR3pGR0lVL1hxWnA2VGI4NDJFY0Y3U2FpMFlqNnhMS0NVNDlSM1lW?=
 =?utf-8?B?OWI3eUc4Z1pTTDN4aFdUZ1kvQ2g5WnVPN2JOMzRyU0M3TkpLalI5OGF4THV0?=
 =?utf-8?B?TXJsbjE5MmE1RjV4Mm5WUVBrRnBGQnRneVppbHFBVXVEMUgvcWZRMS81YjNI?=
 =?utf-8?B?VnVpUFVveU9mci9mOWZZT0F1THRSRE1HWUlxWmRNMVNCb1RwZWZtbFFLY0Rs?=
 =?utf-8?B?VjJNK3hTNjEyd21hUmRPdGtnb3ppaGdYR200VHRrWEV4TzNoT05iUnhEUlMv?=
 =?utf-8?B?M1dUYkFWTDgrZkxZMyt0NUZrTk4zLzR5eDFISE1aTmxFbEoxNXdkVmFvWHdE?=
 =?utf-8?B?YzcxVy9xQ0NyRCtGeFdBQmN0eWlhZ1hTVUMvVkRUVVI4MldFUURaMzdwV3Z1?=
 =?utf-8?B?MDRCcmlacEZuU1pPWnMwN0s1MVFjNU9Ta2R2UmFaL2V4ZGJWTjVYWDlJNHcr?=
 =?utf-8?B?K29jbVFPYzNUemwvNERKZHFDbzFZM2xaeDEyajNMTk9NT1U3UHhZUkJSTm9G?=
 =?utf-8?B?ajVlcWNVTTJEZ05XREdWNEFPbGQzNC9iZ1I4OW5MTC9FRVhvS29uNXlUMnQ1?=
 =?utf-8?B?UGViamRJM2RQUXhpNkZCWGR2UlZ4RjhoSlNYRm5TeWg1ZkNxYlBMZ0Y3ZCtZ?=
 =?utf-8?B?WGFTWU9VR3h1Q2RjM05LWTVlV1Q1eGxFbHNqWWtQb3NOMmE4YytISGsxMlNI?=
 =?utf-8?B?WDBpSC9OZWtjcmMvT3cyMmN6MVYvdUp1dDRsSXgrcmwxU1VneVhFakZlYmhJ?=
 =?utf-8?B?dmtNSEZxUWhDRUpVUnlkcGc4ZmtzUmREanM3VHdFNUVZZVNBdEZrTUYvUWts?=
 =?utf-8?B?OFl1cFlTRXFpSUcyRnRXb1EvNmRYRlFteTVYMyt3VGhCbnlibHV1bE8zZUtS?=
 =?utf-8?B?MTVucWFYVStqd25IUXYveG9VMTBHcG1LOURON2VFTXJPZ21WZ2FET3ZvKzdO?=
 =?utf-8?B?c0I3N2ZJcGpWekM1cnJwbGpRTmNUb09URnNZY25abEl5L1lIVTg3V2MxbVVX?=
 =?utf-8?B?ZWxla3FGTVU5OFE3ZVVpRWJyaGhkWlJrYnZaNGc1NWF5STA3ZUNhT05PTUJN?=
 =?utf-8?B?TWJ2KzUrUVQ1bytTNUh2ZXpmV0IwZ3lEcWE1aUFLWVYrMW9wVjRZMExwQ0t5?=
 =?utf-8?B?NkNyNUV5VnRoSXNiaXNKZ0hBakRkcGwrV2NiVElWOVgwQ1ExMEYzTWxVK2gy?=
 =?utf-8?B?cWl2dGRQREpTQUEycmhlRGVvandZbjhtSzlWMWI4eU81dWpUMENRTWJUcGFW?=
 =?utf-8?B?VWUydkhEY0x5YjdQU0NqYmRLVCtZUlNjODF6Y09HSEVSdkFOTG9nVlNFeHlq?=
 =?utf-8?B?QTdibkxhKzVBeXhBcVVzQ2FEOGo3bmhlRllnQ1RkNXhlbDZRb1l0azRjNUdp?=
 =?utf-8?B?NXd5WEZ6L2hiNjhydzVpOUsyaWJMamFEUUxlbzRhcHBTYTFOazFySmVUKzR6?=
 =?utf-8?B?VEl6VTA4Wmh2QWlKS2ZYKzNXRWVBbFkzRFNlT29JRVVHY0JVRXJUMTJnKzhV?=
 =?utf-8?B?SkpRRFBhV09FcTZTRXhOSEdvTUd4RGl2bUVjY1A2RHVwTU9WcGNZSDMwenBl?=
 =?utf-8?B?dFNmdW1uUnFYYVFKTDFPMUlqa3F5a0dSYkcvYlB1eVhFdEg3NkV2dnJrUU1j?=
 =?utf-8?Q?1BeqbABdhgU=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MlVmVG1LZ3BPUWVWdEpubWRZajd1SzJzbGxmMGNQSnVhT1MyRnNrTi9jaUJu?=
 =?utf-8?B?cnNGU2FFZnBtTTUwVmZuMUdHZ04wWVNDb1RJTlZoaTBNN3luK2VSZlVlNjdo?=
 =?utf-8?B?eHA1TDluZFZmcUlsaVV3dnY2cVVtL3hHWFE1Z052UUV4bFJIbS9mc3pkMjNL?=
 =?utf-8?B?UDBhNnIvOW5Ya25tUnRnRFE5N1Z0Rm1uRU5iYmV6MjV0Vi9YL0k0dlZpNkR3?=
 =?utf-8?B?eEZCNzRrb01YZmt3eHpqblZGRHJZY3VYN3RmV3RYSS9GQ3hVZTA4NTlidTBY?=
 =?utf-8?B?K2JaYlc0L0tjZTNFYTJvQUR1R1k5cmo3WFg4b0xrQmlhQys3cGd2bmxOMSt4?=
 =?utf-8?B?ZURnOXBoMldOcVFBRUJNLzE2a2hyNWc2QkJ5K0pEVitST0d3bkYrMXhEdkUv?=
 =?utf-8?B?RlZmVXl6eXNqNmp3bXJEY2ZJekdBTVZLQVU2MGx2SVNWdDB0QlRIRzRNWU1L?=
 =?utf-8?B?WmlXdWxqdDczdGxueS85QXRYOVppYjVuaUw3Zng3d281RXg3RFRJS2JlcWpl?=
 =?utf-8?B?VVdia3pZSldTTm5KbUxOOGNUM0I0L3NNeFZXZVlOckxpVlJrZ0tFZDN1R0U2?=
 =?utf-8?B?Z1FCK0tUaC9BNlBjMXp0aXRDZk5TcWxiVXAvb0lyUTlnVmdhQjBmN3BFL1dF?=
 =?utf-8?B?NEJ5ZUtXSUIzMW5TbEI1cDZNalRjbkZnOHBQdzBDV2t1dXRPRDdLQkZaNlZ2?=
 =?utf-8?B?QXVVVG82U0xUWXE0UFpCZkREc3l0NDV3RzU2VmJoN3phTHo2U256dEJQOW5Y?=
 =?utf-8?B?S21RQ2N6MU5wT042SXBaenl0YzZxQ2t1RHNna25VWHJQdlVsanQ5OG9BT0c2?=
 =?utf-8?B?b1dHRVNsOU5kcmUwSG84TmtSZmx3R2E4RG9Dd0JPTlpmMGtRTGN6TjcrSTFL?=
 =?utf-8?B?NDBmQUR0OHdBN3dxa1RBWWpkOSt6MEZNZkpKM1IxY3ZrRVdlK2pPVVRtbU95?=
 =?utf-8?B?aUwwR2FoWlY0eEdvditXZ2w1OUx4WXdDYklOOU9lTXFnSEp2ZjJCOE5sOHZ2?=
 =?utf-8?B?bm9WV0lpYU1KUGdXdndjaWFzUE83SCsvVmxLMjJLVnpoM0V1MlY2aU5xUzJs?=
 =?utf-8?B?TThaa1hldWhWaHdDcUNYalBSLzZ1TmRLS0FOSFpZTDg5NnV0NXFoekNUQmxx?=
 =?utf-8?B?MmJVOUc0d005VEExZXkwcEw1N3R0ZUszVW1Mc0tYZUIyaE1wb2ZHbHhOVHhK?=
 =?utf-8?B?UFJ2eDJsbjZmMGxZVU1zOFFrWEZJaWxxSllUMEwvNkx5RnZFM0lUbFRnQkxt?=
 =?utf-8?B?eEJ4MlZuMUZDdENwVTZlRmFia2RLLzZTdWFsaDZHbmNCTUQ2aUpLaHNNWXY0?=
 =?utf-8?B?NmNFUzhlbGtDUUwwRGNUU0MzSFpxM2JTQ3R3ME5wdFA1U29WSGRGcCtoSnlt?=
 =?utf-8?B?dVV2UWlUbEF6NHloUzRkRk9hclgrSXl0bHFwdHpneVBybDFIejBGRURNc1Va?=
 =?utf-8?B?bmtrRUozL1A2MWduYWwzUWdzSGdQelBXZHhoN0cwc2ZnNHlRcjZKYktUY3Az?=
 =?utf-8?B?ZkZpREp5ZmhaTzB1aklKVVJTVGplOGV5ME40RWtwOUtHSDBwVEF0MmZFMFNO?=
 =?utf-8?B?Rkd2a0kzcDhOdFkycGpUc3RaQWFna3VEU2UvQXpHNVV1VDU0TEI5d1NyWW9t?=
 =?utf-8?B?VDVyVUd2bU5RcUw3YTZNbk1TcjUxR3owSzVFZHdocERZR2RxRk9sNEk5TU9V?=
 =?utf-8?B?RVdKRFNXUzdyVDhtZlJvenBmTmNweGxMT000NmZ0Wi9kWWVSOEZUSWhnM3ZI?=
 =?utf-8?B?czVBU0JHTTdiZ1poNVF3dkVrK3o0U2FVMVF6TkkyQmc2WFA4RmhZQ3FUL2tN?=
 =?utf-8?B?RlRQRmFlK1Fsc0trUFpacTUxSWpveDQ3RkJucGp0Ulk3UGFITFJJVWhUbVRz?=
 =?utf-8?B?S1VLNWxrdk9JWGNyM2RSQi9KTWgvZVVqdW5UQTN3NEdYSm1iYzJ6bjhoalpL?=
 =?utf-8?B?dHhxcWhJaDBubGhuRVlWTTV2OEUvYUtVbEZoV1c1NjYxdk9vRDY2MVB4YlN3?=
 =?utf-8?B?cUZtU1F1V25OVHUybnNjZm5qNzM1Q3BwM0tqSHd1QzZLSE42WjF1OFphUnZS?=
 =?utf-8?B?cFZ2bmd5OXBGTW5VbnhNODNCSFhLaTkzc2J4NnNqUTBkL011TGQ0U05OLzJ3?=
 =?utf-8?Q?UY83MiJdKU28T+GVQQQvy+dQC?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcb49872-4a1f-4301-953a-08dd7131e706
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2025 15:28:50.3498
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Apy6AbHLT9SNoYf6Scn0rZceHO6LCXQS/VTOp6tax0r/POWkTHiAcc993w9NxWhD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4408
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2319343F6B
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.220.76:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.76:from];
	RCPT_COUNT_TWELVE(0.00)[14];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: RNENSXCMHCGLULINR2I6PKG5MUFPVUMT
X-Message-ID-Hash: RNENSXCMHCGLULINR2I6PKG5MUFPVUMT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] dma-buf: heaps: system: Remove global variable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RNENSXCMHCGLULINR2I6PKG5MUFPVUMT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



Am 01.04.25 um 17:12 schrieb Maxime Ripard:
> The system heap has been using its struct dma_heap pointer but wasn't
> using it anywhere.
>
> Since we'll need additional parameters to attach to that heap type,
> let's create a private structure and set it as the dma_heap drvdata,
> removing the global variable in the process.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/dma-buf/heaps/system_heap.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
> index 26d5dc89ea1663a0d078e3a5723ca3d8d12b935f..adf422eaa33a52794f952d9d4260b8743d37f421 100644
> --- a/drivers/dma-buf/heaps/system_heap.c
> +++ b/drivers/dma-buf/heaps/system_heap.c
> @@ -19,11 +19,13 @@
>  #include <linux/module.h>
>  #include <linux/scatterlist.h>
>  #include <linux/slab.h>
>  #include <linux/vmalloc.h>
>  
> -static struct dma_heap *sys_heap;
> +struct system_heap {
> +	struct dma_heap *heap;
> +};
>  
>  struct system_heap_buffer {
>  	struct dma_heap *heap;
>  	struct list_head attachments;
>  	struct mutex lock;
> @@ -422,17 +424,22 @@ static const struct dma_heap_ops system_heap_ops = {
>  };
>  
>  static int __init system_heap_create(void)
>  {
>  	struct dma_heap_export_info exp_info;
> +	struct system_heap *sys_heap;
> +
> +	sys_heap = kzalloc(sizeof(*sys_heap), GFP_KERNEL);
> +	if (!sys_heap)
> +		return -ENOMEM;
>  
>  	exp_info.name = "system";
>  	exp_info.ops = &system_heap_ops;
> -	exp_info.priv = NULL;
> +	exp_info.priv = sys_heap;

Why do you even need this?

>  
> -	sys_heap = dma_heap_add(&exp_info);
> -	if (IS_ERR(sys_heap))
> -		return PTR_ERR(sys_heap);
> +	sys_heap->heap = dma_heap_add(&exp_info);
> +	if (IS_ERR(sys_heap->heap))
> +		return PTR_ERR(sys_heap->heap);

That's clearly missing freeing sys_heap again.

Christian.

>  
>  	return 0;
>  }
>  module_init(system_heap_create);
>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
