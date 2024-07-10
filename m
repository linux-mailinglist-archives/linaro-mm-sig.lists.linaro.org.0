Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E8892D47F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 16:48:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35B06410FD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 14:48:27 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2051.outbound.protection.outlook.com [40.107.243.51])
	by lists.linaro.org (Postfix) with ESMTPS id 6AE6C3F392
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jul 2024 14:48:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=bMrRdvzn;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.51 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=feWMJ0vZJDw4VCcR5wb5ms0E4VTL3qS01aXjZ29nL7qG6W8PRy3xq/cYI/AiajTCXm+Rc8Ir3qLBFLwt9JBNZ7k9HdWaf55nEZN19IXVxPTZbk/TFPUj9oKOVThqtutAxOsWedbDpFvNOlU88oHI3QsLWu8u+QAYzvHsdLOfm3NUfKaacPEsQQqe0cGF78j8z0gL5DAXX4pzSuFYmEMR4oERd9J+ymwjye1KG81SSihe8wYD30Jj9SOx00ieyw6cJR/3a5gk9CmvtIMm7O/MS0JdMR8HF27bVC1ZqCEiM3d0a1vMf7DgYqFhMJR29Mf+7lEnvYbA+qgEgnrZISuk6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7CBzI8yAb0Pn8ANnJ7k83L1gWb1Ok+HOBPvyMpbF+Tk=;
 b=awTFJXgK0EaRpwg1q5g2EKHS7amdiNSq00VgjFq3Ieu1sCyIa4JhHDLzmPkamHQ1M045GLfo7qeEjELHpjQa7rU6KuMzgOqO26OmtDegDiG78prnUuMacpwXh0ntS8Aq+MCTJKvwZpmwacS53+R3gScTAJ0Um8pY/faaVTFCikK9OHykWToiGUUQoXVQ2x6SlXQLZbj0OBxkuY54FaHClXGmkh4dqpnhJgq8P6IZTnX+HFvm56hHSyX1xkaXlRQjHeF+Ql0L7RwgTECn7SFB1yuycGIL2sV5JjZ3oMzYehV7M4WOUyiTGOluOz5rw/lOk3fYWOS5yWPleoIgWkSu0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CBzI8yAb0Pn8ANnJ7k83L1gWb1Ok+HOBPvyMpbF+Tk=;
 b=bMrRdvzndLQS3fqGB+V9FiDetekbdRfPB+N5J8jVHca+BHVYYMWLH3uM9PviDBEZeVrf9yFFod/SSuOXuBDFOGsfROKpSUulilzPCnF98SqaVULCAjjfyVFkt26VRjZhTvViDvPAQYXXzhl0cj4wV8npJ385l1u0yBkwE4IGxqc=
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com (2603:10b6:a03:42b::13)
 by SN7PR12MB6692.namprd12.prod.outlook.com (2603:10b6:806:270::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Wed, 10 Jul
 2024 14:48:17 +0000
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062]) by SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062%3]) with mapi id 15.20.7741.027; Wed, 10 Jul 2024
 14:48:16 +0000
Message-ID: <0393cf47-3fa2-4e32-8b3d-d5d5bdece298@amd.com>
Date: Wed, 10 Jul 2024 16:48:07 +0200
User-Agent: Mozilla Thunderbird
To: Lei Liu <liulei.rjpt@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 Muhammad Usama Anjum <usama.anjum@collabora.com>,
 Andrei Vagin <avagin@google.com>, Ryan Roberts <ryan.roberts@arm.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-mm@kvack.org, Daniel Vetter <daniel@ffwll.ch>,
 "Vetter, Daniel" <daniel.vetter@intel.com>
References: <20240710135757.25786-1-liulei.rjpt@vivo.com>
 <5e5ee5d3-8a57-478a-9ce7-b40cab60b67d@amd.com>
 <d70cf558-cf34-4909-a33e-58e3a10bbc0c@vivo.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <d70cf558-cf34-4909-a33e-58e3a10bbc0c@vivo.com>
X-ClientProxiedBy: FR4P281CA0128.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::17) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB5673:EE_|SN7PR12MB6692:EE_
X-MS-Office365-Filtering-Correlation-Id: 919a9205-e24c-4d81-eae1-08dca0ef553f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?anpiUmVQbmFJN2NnSG4vQmxBNi9DNWRTbTFrZThLcG5tMndrbEg2dlY0TGVq?=
 =?utf-8?B?VEt6eU50R1NFV0FYN3dXS3JrdDdUeXNESVN6dzAxNkhuWU9XbmR1dmlNTzNw?=
 =?utf-8?B?MGV0ckI0ZkJaR2FaRVl5RW9pMDBZZGF6K0hKKzFEaFBUZTBXY1VjekszTFhr?=
 =?utf-8?B?WlR2eTg5TDltNkJodHgwRXE3MUkza0dBdE1qUm9tSmFSZlp0aStwNGhWZ1Er?=
 =?utf-8?B?VEdxYVplM1U1cVZiYktQR01TTzNpdGd6bnl4Nk1RQlFSRDVQdlZXd0dEZDVz?=
 =?utf-8?B?bGRsR2t6RTVSeHJBS01kMGR6cEJWbnNSaUZ5VFZvRkFrUTNRcGlHcFlGNU1z?=
 =?utf-8?B?UEM2U0ticldUdG13MlB4dkJPZkMvbERUNEdmTWZuZkZiVnIwT1VVeVdTWFhp?=
 =?utf-8?B?WDIrSlhPQm1XcXl2bnBPWHNjblB2b0pFc2prQ0JnZEovZXhhQkhWcmNiSzVG?=
 =?utf-8?B?cmRjOE81WURRLy9SWmVNV0Q0RGVIU05aNVM2SDBjNVhvblhqTjJad2xxTkhV?=
 =?utf-8?B?RjRFSTVJQk4wc1hTTTdSdjRRZlR1WHpmVmY1YUdsRHJ6V2pVWGI0NVVDSHV6?=
 =?utf-8?B?cm9SNjJISHN3QzJ4YXYxU3BrbzU1RDNEVHhFZWZVMFIweGRkM2pzV1lTYjBX?=
 =?utf-8?B?d1ZXa3UraUpuZXduczVGZW9PdmpINVBjZ0JuS0ZQd2R1UUNGTTlLNmZ1T1li?=
 =?utf-8?B?V3E4SUNuTmMrVm44eWhUcjNsMGt2MWZPdkNacUhXUXp4Y2dOWkhZWjd3VEVQ?=
 =?utf-8?B?SjErSGJzWmVMQkgxTFlabnBZQUhQMUV0anRua2c5bDdKbWFhd290VXE2L0g4?=
 =?utf-8?B?QVJQdHR3VVkrTGdQRU4rTU9xSGdRRmVweEF1Y0JzdSs1T2diWVNKNHlsL05Z?=
 =?utf-8?B?Z3Rob09seUhLb2k0UUlMa2lQd3N5anc2VXNBSnczZkNnWTk0WWJoRXR4cncr?=
 =?utf-8?B?VXdHM0gzZ01KMlhXMjhpQ0JjRzZNZEZMYmZiY1Q4cUJiYmRvM0M4cmw3dE9K?=
 =?utf-8?B?Nkt2dGdvNXJVRnJ5TXFuSTdTakpMNVRMUHA4a0tmUytKRGNEcmJoUHVIeFMv?=
 =?utf-8?B?UThjYXIydUozK1RZRVVLMVh5UU4xSFlEVjVpK2ttbFJSTmd6b0d1S2Q0WTU1?=
 =?utf-8?B?MW9NYmlXYUgrcmROUUhxWk9CcXZPWW1GdWZZTFpoaEtSWGJWQlUrR0tDZHJK?=
 =?utf-8?B?MzM3LzhrWkkzL3ZVQk9yYVcyK2VsSm9hNGFteENocHFnd3ZHUXJnZDdPamg0?=
 =?utf-8?B?V0E0R0prLzQ3WHNzeHk0bm5VS3dzWkJKWmtFT1JzODNLTk1ucEFwSVc2UGtM?=
 =?utf-8?B?VFJjSGUwVWVHV0tpVE1ZbnFZYlorY1N1dXNSZlB3QVArOWxudUQ4MVBjVmNK?=
 =?utf-8?B?RHE0aDlJam1yQTlxUlk3ekt4TmZ1UWNZajRrUDR3RGpRQlVxNFk3TDJPajhR?=
 =?utf-8?B?eXhUV21DQkdUMWQ2VHd6T09yY2lZb3VKd1ptNlBMRGc3bjQyeWxsZWJSeVJy?=
 =?utf-8?B?ZmpCc1hYZHd6bHZGV0RnWFNwZnVUL1I3MWJvL3dqeDV2Y0x5S2Y5T0wyZzNR?=
 =?utf-8?B?U1VudURxWmRkNnB1eFNoWURCNmlnUlNVbVVpQ2JZUGVvQkhaTTIzbndrTFo4?=
 =?utf-8?B?TzBZSDBZTUhPNGZtb3pmR2Vsdm1RaE1DejAxdlRwS3AwSWVCVGZXcHd4b0p3?=
 =?utf-8?B?NkVPN2tqSDN4UVljbi8rUmg4dnhNRTQzTm9GTnJqZFJjWGQxcmtyRVVsU3c2?=
 =?utf-8?B?UVBjcXJZbGduUWhYSUxINlRsU2ZoR1VVTlQ0SWJMSjQwQnpUbXo4bENlVzZz?=
 =?utf-8?B?RGsyL1NHMVExY0VqTGhDbzUycXM3dytUT1NaeUxyL0FKeDNzUmJxdXpOY0RF?=
 =?utf-8?Q?QAqgtY+2W0Zoq?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5673.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?U1VJRElDNGZHSjdtbUQrQUxNWHpaSlRoL2JBTjE5L2Fla09PRnhPamFDRlZI?=
 =?utf-8?B?UkwvT2JIMFExemwrOU5KRlUvN1hpSE1rOXc5R1hhZEFGdVV3Wlc1TGxpV0FX?=
 =?utf-8?B?WmtKaXBoeVRMcVRzTXpySHRabXlYRmFYdTg1MGQ3V1hmVlZNa043VndZN0Vq?=
 =?utf-8?B?WkczQ1ZUTEJ3Q2lrQ2Q4MW5OelBBUmI4VVJ1NFpCQjFWQXQ3VmRDZ0hrMDNU?=
 =?utf-8?B?SHM4elUxZmtQVWVLNDIvSk9tS1lodzZjbDFZb3ZXOVI2NzgrODhHeFFDeW1J?=
 =?utf-8?B?ZG53ZWJRdGdTV3hSTzAyQXJoM3didFV2TzRVT1Z5TzhVOHRsaldYMnBJbWQ3?=
 =?utf-8?B?ai9ja0FxTXluN0Y4VHpUa2YwalVONVhyWkRuQWdMOVp1cHlsSmVmRjhRUDRZ?=
 =?utf-8?B?MkFaRDJqZWNtZHZnQlJRMXdHUDV4TTlSd3N5RkFsQmRSb0phNVk0Zzhwa2FE?=
 =?utf-8?B?a0JmQUI3dlhqQkREMEk5LzNaQVNtaUdUSi9Ba1ZQRjZlR1B2dVNHejh2blVQ?=
 =?utf-8?B?TW5wSFE5cXpvWmF5ck1KQjVLQnpnMDAyVnFpU0R3bUlRN0tzQWlWNlFicTVQ?=
 =?utf-8?B?Q0tNOXp1Z2lhRjFMTitRWkpzSGFzMUtQdWtvTDh4aWQ1RnQxa2toUGFxWDJC?=
 =?utf-8?B?bm5POHdvZmpCNjBoMC94YXdxR3QwSU9tVnFGSHRkUUhibGhjNU1yYXJXdWtp?=
 =?utf-8?B?eE5pL2pUUVJYR3Vxa2NvbkhJVDZKQnZXQzhvb0lTWDVGRERXSjJvazFwR3FV?=
 =?utf-8?B?Nkhqd1lIQk0vT2JjT0ZBUFVCSlNvTEtnM0RvY0pHSDRBRnFZOWs4N0kxZlJ2?=
 =?utf-8?B?OEVjRWpPRnJZcjJ1WldCWkxmN0FVaFdHM3ZwME8vTk4vcU1rdVBucVdFQkdF?=
 =?utf-8?B?Z0xMZXE0YXBTRVJvZHYxRDVGU0hLQ000cjB6VGsyZHpzL0FIS2ZyWWN0YkQv?=
 =?utf-8?B?clkyeGIyeWN6WWpYOEZlc1EvYTZsM1V3eTRXdW53NWRPeHBNcUJhQXVaSTVT?=
 =?utf-8?B?VTR6THBVZi83UWdxSmdQa0l1NHdBRk52OHFnUVVnMktqRW1GTTRGT3dVWnNT?=
 =?utf-8?B?YlhBR1dFenhSc3hVVnJ1TGkrSVVtRXhBUGdod3E1WFBFeG5lR2dKanZ6R21w?=
 =?utf-8?B?VmVQb1ZxWHBZeWNhUHZvMW9nTXFwdjV2UDV1ck5Kb1RIQjRRUFAza1pEY1hw?=
 =?utf-8?B?RVpqMHZVbDZlL1gvaEx1Z0ZGaVpwNHFvTXFpVm1wVkhhSTRrSHF6VkxTSGJv?=
 =?utf-8?B?UUgwOURJTnY4REhvbEcxcW1RamswcHRzamFHZjJJOEl6WDArVFVqRlQxN3d0?=
 =?utf-8?B?MGhHMm1zeDZabSthYkFxUEs5STFRL0pCREZMT1JBQWF5OTFncVlra1F4bkdE?=
 =?utf-8?B?VWQvMzdSSHYvblhqOUtxcEJRS3VjUXlINGtWWlovb1VUZWxIYlk4K3R4TFEr?=
 =?utf-8?B?bkpIcFZxekExcWk5R2NBQnA3VU92WklMaC91U1pCL3ord0hKRysyTGViMWJo?=
 =?utf-8?B?WHVRSFpnV2N6L05PaCtlRDYvTDB6SE9GTkMrcWxURmF6aENuUFdUM01RZ0ps?=
 =?utf-8?B?eStaWjFleXRkcXJyWk1QdEJhNUdIN01iZEN0OER0RWp4OHl0R3pXRUdYWHBk?=
 =?utf-8?B?VGZKSXdnQ2NobSs5dlNPSXQzNEJEalQ4QnF1Nm1meHJlUS8yUW9wWktXZDFw?=
 =?utf-8?B?ZmFNL0pleldyUmlKaGxteUVYMGRVeFRiSVJvd3NsdEFlbk54TUlmTXBvMFhv?=
 =?utf-8?B?RHFobWp1Ni81ME9LL3d2Y05Rd3Q0VWIxcWRFNmlVdGI4WVg2K2l6b1RNa0FV?=
 =?utf-8?B?a1RiRUVJTnBNdWtJZ3I1UmNPUXJ1TVlFYXFEa0FKRkYzK0krZUVnZXovd1Mz?=
 =?utf-8?B?STdiOWNKRDV3bUgzaFJJazNha0I2RmlpbnF1aDkvYk5QQm5FOGVic1B2VWY5?=
 =?utf-8?B?RDhJdVc2VUNtR1AwTms1dEV1QWphNndRMjBLZU9NS3kwSUZQTTV4UWU3Z2dB?=
 =?utf-8?B?RjRUeEhkSWhtN0NXeENjSmV2T2RsZlZteWQ3TkVWVTJoNzY1SzZwT0J5cGhH?=
 =?utf-8?B?b2QrTkN0Z3dZQ3lYODJhWlF2NCtBSVg2eTBFK1RoVW84NmtBTzlaUlZVSUV6?=
 =?utf-8?Q?YavE=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 919a9205-e24c-4d81-eae1-08dca0ef553f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2024 14:48:16.8875
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vQ/pWqGmU0i8YbcTENfdUQRo92/2Xdfz9Kgpg76Dks/i7Kz/GKXqb6mZIQOprJrR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6692
X-Rspamd-Queue-Id: 6AE6C3F392
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.51:from];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PIZ3QR6M4SWEO4QYQOCB62MJ5EBXAISA
X-Message-ID-Hash: PIZ3QR6M4SWEO4QYQOCB62MJ5EBXAISA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/2] Support direct I/O read and write for memory allocated by dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PIZ3QR6M4SWEO4QYQOCB62MJ5EBXAISA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTAuMDcuMjQgdW0gMTY6MzUgc2NocmllYiBMZWkgTGl1Og0KPg0KPiDlnKggMjAyNC83LzEw
IDIyOjE0LCBDaHJpc3RpYW4gS8O2bmlnIOWGmemBkzoNCj4+IEFtIDEwLjA3LjI0IHVtIDE1OjU3
IHNjaHJpZWIgTGVpIExpdToNCj4+PiBVc2Ugdm1faW5zZXJ0X3BhZ2UgdG8gZXN0YWJsaXNoIGEg
bWFwcGluZyBmb3IgdGhlIG1lbW9yeSBhbGxvY2F0ZWQNCj4+PiBieSBkbWFidWYsIHRodXMgc3Vw
cG9ydGluZyBkaXJlY3QgSS9PIHJlYWQgYW5kIHdyaXRlOyBhbmQgZml4IHRoZQ0KPj4+IGlzc3Vl
IG9mIGluY29ycmVjdCBtZW1vcnkgc3RhdGlzdGljcyBhZnRlciBtYXBwaW5nIGRtYWJ1ZiBtZW1v
cnkuDQo+Pg0KPj4gV2VsbCBiaWcgTkFLIHRvIHRoYXQhIERpcmVjdCBJL08gaXMgaW50ZW50aW9u
YWxseSBkaXNhYmxlZCBvbiBETUEtYnVmcy4NCj4NCj4gSGVsbG8hIENvdWxkIHlvdSBleHBsYWlu
IHdoeSBkaXJlY3RfaW8gaXMgZGlzYWJsZWQgb24gRE1BQlVGPyBJcyB0aGVyZSANCj4gYW55IGhp
c3RvcmljYWwgcmVhc29uIGZvciB0aGlzPw0KDQpJdCdzIGJhc2ljYWxseSBvbmUgb2YgdGhlIG1v
c3QgZnVuZGFtZW50YWwgZGVzaWduIGRlY2lzaW9uIG9mIERNQS1CdWYuIA0KVGhlIGF0dGFjaG1l
bnQvbWFwL2ZlbmNlIG1vZGVsIERNQS1idWYgdXNlcyBpcyBub3QgcmVhbGx5IGNvbXBhdGlibGUg
DQp3aXRoIGRpcmVjdCBJL08gb24gdGhlIHVuZGVybHlpbmcgcGFnZXMuDQoNCj4+DQo+PiBXZSBh
bHJlYWR5IGRpc2N1c3NlZCBlbmZvcmNpbmcgdGhhdCBpbiB0aGUgRE1BLWJ1ZiBmcmFtZXdvcmsg
YW5kIHRoaXMgDQo+PiBwYXRjaCBwcm9iYWJseSBtZWFucyB0aGF0IHdlIHNob3VsZCByZWFsbHkg
ZG8gdGhhdC4NCj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPg0KPiBUaGFuayB5b3Ug
Zm9yIHlvdXIgcmVzcG9uc2UuIFdpdGggdGhlIGFwcGxpY2F0aW9uIG9mIEFJIGxhcmdlIG1vZGVs
IA0KPiBlZGdlaWZpY2F0aW9uLCB3ZSB1cmdlbnRseSBuZWVkIHN1cHBvcnQgZm9yIGRpcmVjdF9p
byBvbiBETUFCVUYgdG8gDQo+IHJlYWQgc29tZSB2ZXJ5IGxhcmdlIGZpbGVzLiBEbyB5b3UgaGF2
ZSBhbnkgbmV3IHNvbHV0aW9ucyBvciBwbGFucyBmb3IgDQo+IHRoaXM/DQoNCldlIGhhdmUgc2Vl
biBzaW1pbGFyIHByb2plY3RzIG92ZXIgdGhlIHllYXJzIGFuZCBhbGwgb2YgdGhvc2UgdHVybmVk
IG91dCANCnRvIGJlIGNvbXBsZXRlIHNoaXB3cmVja3MuDQoNClRoZXJlIGlzIGN1cnJlbnRseSBh
IHBhdGNoIHNldCB1bmRlciBkaXNjdXNzaW9uIHRvIGdpdmUgdGhlIG5ldHdvcmsgDQpzdWJzeXN0
ZW0gRE1BLWJ1ZiBzdXBwb3J0LiBJZiB5b3UgYXJlIGludGVyZXN0IGluIG5ldHdvcmsgZGlyZWN0
IEkvTyANCnRoYXQgY291bGQgaGVscC4NCg0KQWRkaXRpb25hbCB0byB0aGF0IGEgbG90IG9mIEdQ
VSBkcml2ZXJzIHN1cHBvcnQgdXNlcnB0ciB1c2FnZXMsIGUuZy4gdG8gDQppbXBvcnQgbWFsbG9j
ZWQgbWVtb3J5IGludG8gdGhlIEdQVSBkcml2ZXIuIFlvdSBjYW4gdGhlbiBhbHNvIGRvIGRpcmVj
dCANCkkvTyBvbiB0aGF0IG1hbGxvY2VkIG1lbW9yeSBhbmQgdGhlIGtlcm5lbCB3aWxsIGVuZm9y
Y2UgY29ycmVjdCBoYW5kbGluZyANCndpdGggdGhlIEdQVSBkcml2ZXIgdGhyb3VnaCBNTVUgbm90
aWZpZXJzLg0KDQpCdXQgYXMgZmFyIGFzIEkga25vdyBhIGdlbmVyYWwgRE1BLWJ1ZiBiYXNlZCBz
b2x1dGlvbiBpc24ndCBwb3NzaWJsZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBS
ZWdhcmRzLA0KPiBMZWkgTGl1Lg0KPg0KPj4NCj4+Pg0KPj4+IExlaSBMaXUgKDIpOg0KPj4+IMKg
wqAgbW06IGRtYWJ1Zl9kaXJlY3RfaW86IFN1cHBvcnQgZGlyZWN0X2lvIGZvciBtZW1vcnkgYWxs
b2NhdGVkIGJ5IA0KPj4+IGRtYWJ1Zg0KPj4+IMKgwqAgbW06IGRtYWJ1Zl9kaXJlY3RfaW86IEZp
eCBtZW1vcnkgc3RhdGlzdGljcyBlcnJvciBmb3IgZG1hYnVmIA0KPj4+IGFsbG9jYXRlZA0KPj4+
IMKgwqDCoMKgIG1lbW9yeSB3aXRoIGRpcmVjdF9pbyBzdXBwb3J0DQo+Pj4NCj4+PiDCoCBkcml2
ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyB8wqAgNSArKystLQ0KPj4+IMKgIGZzL3By
b2MvdGFza19tbXUuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDggKysr
KysrKy0NCj4+PiDCoCBpbmNsdWRlL2xpbnV4L21tLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoCAxICsNCj4+PiDCoCBtbS9tZW1vcnkuY8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDE1ICsrKysrKysrKystLS0tLQ0KPj4+IMKg
IG1tL3JtYXAuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgIDkgKysrKystLS0tDQo+Pj4gwqAgNSBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRp
b25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4+Pg0KPj4NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
