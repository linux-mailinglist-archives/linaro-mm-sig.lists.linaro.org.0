Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FFDB2AB2D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 16:43:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DEA645DF0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 14:43:14 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2040.outbound.protection.outlook.com [40.107.93.40])
	by lists.linaro.org (Postfix) with ESMTPS id E625F45DEB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Aug 2025 14:43:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=2tF93qOC;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.40 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oKFndPcLwBKni1Y0K+SJuQtsVWjwl1OZp2zCRQC8qDeQxMhNnn88r6ySPAjZwYjmqqFIFy178Ap161aYZK4UJX9j7fx+Vo4VfA0SRMRA2uAULhxdJRgHKTyUt1PBmJGQzodk98DpoiWlGydX1vIEyfDbqNkYs5RM77RYfJhgg0EGcIh+Mc4CgDhTts0Y9V81KjHd9nvzs/z+ltGv1Sg9hrqHAPTpwUo46jQxCMeZoXyTKLHzZvP+KY3KrgWls+DzdwZAx7VgfJ7L/FdCsnZigNr5rpo75DjSW8iRGAwU3JSxkqvBRneCjx2fGhQBVmm1OZ+MNKTg9SaUApPb0Agz9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LcTGsoPxoOzIsECi4KMNSJHZ+KqpS5nS/sWPJB1lqSg=;
 b=fig+l93ikYtFcVGKV5SdiZ5R/03TanuqsXuXo18MYSCMYOMCPpYoQzBXaHd/08mrF9n/b52HjxD+BxBpWphli+NELitK50pQ1R35/mvfbTfEgDhXWCjr2iO73wzFdhmmj7DDtBJV0ppRLf2oMmy/fswsu9t8o7tWkU/dki08NKTQWvKCYwWEWbr7VLW3yb2S7bSa7IceW9qvVois9E/cRBaS14Y2rfrlOFnq0HQ9Ll2RuiAfAs9IzbxQDgShPPI1T5E/J7nvCMpkojbLTrlaJGjehdMwVzFlbPrqwMbU+vcRIYrtrHX43U3IhamlV3Z/nw3r3WO2CP0cwrsFbICX+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcTGsoPxoOzIsECi4KMNSJHZ+KqpS5nS/sWPJB1lqSg=;
 b=2tF93qOC/vxHLVc8eL6Qat/ikKui9uH0YYIoyuAtnwK2XX3UDikrVY5Z/yro4SqEumMulpVGBL/74fKPVQLbKMnjC7uYtX+B5iJMERMti+KMzjb9jRJzhPnKVpQW9dnymwQi+HmSqUjGQPL1n5tBZ5j8teIT9qZuGTBCFhNiDY4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB7097.namprd12.prod.outlook.com (2603:10b6:930:51::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 14:43:01 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 14:43:01 +0000
Message-ID: <c4bac4d8-9c5b-446c-b9a1-1bc7ac6b38ff@amd.com>
Date: Mon, 18 Aug 2025 16:42:56 +0200
User-Agent: Mozilla Thunderbird
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
References: <20250814094824.217142-6-janusz.krzysztofik@linux.intel.com>
 <20250814094824.217142-10-janusz.krzysztofik@linux.intel.com>
 <0920872a-6f8d-4301-b9fb-c8fa54b7ffe7@amd.com>
 <2443311.NG923GbCHz@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <2443311.NG923GbCHz@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: MN2PR07CA0028.namprd07.prod.outlook.com
 (2603:10b6:208:1a0::38) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB7097:EE_
X-MS-Office365-Filtering-Correlation-Id: 48790f47-a178-4b16-f601-08ddde6587f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YVg5QktsZFB1Y2JKR0labk9raEZvbHpBZng2UWR1a2pnVXpsbEplZkxLM3I0?=
 =?utf-8?B?ZE5xMUNnMVFUNWRNNnpsK0RkZ2JzL3JETUVjSCt6ZlZEVnczbFN2N0RJMVRk?=
 =?utf-8?B?bHZkcmgyN2V1VlV6MVI4aUQwRjh4YkdhZFllRkVJTUR2NXBidGFSWE1jZUtp?=
 =?utf-8?B?dDNvei9EbHo2M25jSHloeHhlVU5rRERicllFVDI5SHJkcTkxZHBTOTlFSDha?=
 =?utf-8?B?dkIvWVRzVWs4Q3pTTHJmWFE5eU16RjF3Ky8xZUtYeFBaRWNJN1NHaG16Tkl6?=
 =?utf-8?B?aGt4Z3FwWGw2ZWpnU012NVFEM1pnckNaNTRDTXJhNEQxZW9xNlM4OUN5aUlQ?=
 =?utf-8?B?UVJTTDdpeUMxVVM0ampkQmNkSk05M0k5elZvcFJtS2xic0VoclFJZzFVNXVk?=
 =?utf-8?B?eXlMMTlieTZueE9zUjV6ZnJPMDM5ZjZXbUFxZHdjd2Nrc2RpUkJ1QnFCNzd6?=
 =?utf-8?B?d0JOa3dzNEJsN1YrU3c1WEY4MSt0Z25HcVNJSGtmeENXWm9YeWs1WDVyeVlp?=
 =?utf-8?B?b2xCUHV4SmVHOEN2MzFJUzFvMWJSQmlPYzhGbFhhOC8zLzUzRHl0QXJpOWVF?=
 =?utf-8?B?ZDE4ckhYaXlsTEtpckhQQ1hGRkpLSHdldXZwVEJXTERxUG12VmU0dlI3eFU0?=
 =?utf-8?B?RHNjeVJlSHBKb2hSenk3Rm0vWkVVNktuajJiUWF5b2VXaWJ1eEpXNmtvYVVN?=
 =?utf-8?B?Vmc3ZGI5ZnZ6cFlLYUVSVkdlWUxRQ2liaktlcjNhazFUd3Vib1lYcWZrVEJa?=
 =?utf-8?B?S2swZ3h1ZitaWjlXcS9MY3hNV3U0Mk9DcTcyYW5pVUUrMmloQjltL0gwSFlN?=
 =?utf-8?B?NlI4Q2RXRTZDZUdrTzIrU1FYQWtOeGNFNjJjdUo3dFBrTlRPY29pakp2dkZw?=
 =?utf-8?B?VFJ6YkcrZTJtL1lKbHU5YkJrMm14ckNKS24yTGZBaFByR1l3ZDd0TGRXWnJR?=
 =?utf-8?B?eDYrd2NTNzBpUkZ2VitvMktKSEp2RlpuU05sbVA3bzJsOEFjNll6YnBNeWtx?=
 =?utf-8?B?cnMzQ3Z3cUlWWmp5akl3YlphNHYvZEt5c0lDZ3BTbFpSdUE3cGJva2VBV0ZL?=
 =?utf-8?B?YVZ1RXE1MmRNOWtGMHlYNk1kUlY4NTFDdlBtZHRsc3pVVWFWNmhWaFpUdTFU?=
 =?utf-8?B?NmVHNXBPZ2pyRmpLbThhK0Z2UHAyTFg2MStIY1B4QkRCUmZnQkROYXdrQXE1?=
 =?utf-8?B?ZzZFSURGNGRXV3ZjdWoyQjJrK0hvZG5rR1hON254bzR3cCs5Q0RXSmowVWEv?=
 =?utf-8?B?MXd3RGd5K1EwQ3NMT3hXSWltMlVmVjI2L0FJL1BHZVdSUXZGYUt6WEJIUUds?=
 =?utf-8?B?TXdOaTk2NnBSaVdCWmV6RllZWGdwSGJ2UEtpWm9KNHdRT3JCQnpFZmtSQkFF?=
 =?utf-8?B?amRBb3JhZUxPRDN0Z25mK2lURldpeUxHdEFzc2hPcGxlVTkrZUtJQ3hkUFd4?=
 =?utf-8?B?bmpPckF6cDdSTFlYVmV3SjhsanVwU29zd0VQWTVyY2ZXdVFjZ1FMcGYrOUtG?=
 =?utf-8?B?RndsMG5PT05WNk1lV1dyaFlmU3RCWFpVSTNpYVNPOHBoRzR3WFRITi9YaEtp?=
 =?utf-8?B?R0Q1eUw0OXQrYkRFVm12cXhkS3pBMGNlT2EwMzJkTUx0Y3J5Mng1QkJVU05n?=
 =?utf-8?B?UGx5RXhpclpLTm8zbGpjSkM1MVZudDFHS1hOY3hsQjJCWGhOMzEyaExXZFR5?=
 =?utf-8?B?dmlHZnZUQXVrSUd5U3Y5Qm90b0RHNllzcFNtaW10MWFxaGlKa2Nnd3BYSnFS?=
 =?utf-8?B?am02Ni9GWHVjMlordE5QNEhRcFN5cVRXMlpCeU5jVDdmOEZpOHdMa0RScE9s?=
 =?utf-8?Q?1irsLPvp26K0+PoxKGMwavcDR6lLJDXbVDu/M=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OTROTEhidDMvQmM2Y04vbVpvR2FQdWdYR0VQS3U5Z25jSHRKbUhEVytHc0tR?=
 =?utf-8?B?cTZ5TTBhU29jWHg3V3lJS094Y0lxbkFGQ2NJd1JWN3o5TVNWTkRXMDF3bFVo?=
 =?utf-8?B?bFVVYlQ1b0tEVjBuTitNMG9PVVo0UVZDT1JPUVhEYnlUdHpscytHV1FZZXhu?=
 =?utf-8?B?V2IzMERydU1ZdlQ0TGZUOXk2K0tPMFRTVmxYVW9NcUJaQW4rTVJLZmlkeHF0?=
 =?utf-8?B?dmZMaE1QQmlCYjJBOUNsM0gvREtudjFNNnlKVzRGdU13aXJ6T0NMVXBHaTZs?=
 =?utf-8?B?S3J6dVJUQ1huKzN6aE1zR1I5TTFQdjNwbUZLeUxPQXVLNmVjNjcxSmIrakxw?=
 =?utf-8?B?RFYrZ2ZtRk5id1NvY1pFUndnNXFHWG94ZjJWSldFVXMzem94eVNIM3FIL1gx?=
 =?utf-8?B?bVZoUklqUlZHTk5aZm1Qa3Uwb0pVeUtOSURjVFhUOEppV24vUXVvQUhDVXV6?=
 =?utf-8?B?VEdrdEk2RDhoUEhEczlxTlhLQ080b1lvYXRwQ1UreFg2QXNIUjBqbUlWR1pP?=
 =?utf-8?B?WFRxU2hpSzhiek1TdXArUTZyNWFRNGI4dG82ckRqSmZsNjFqSVNaa0pZMnRB?=
 =?utf-8?B?aXhabnl6VjZYSzBKanJBUHp3YWcyMWRpai80U3BNUFRNVks0REVrY29lWm5s?=
 =?utf-8?B?LzJlb1FVYyt3RTQ1U0ZVbnh5R0haRmt2aDA4Vmc2SURtSE0wd284eXpqRDVn?=
 =?utf-8?B?TzA5TmZ3ZFJHZFBPZ0Z1TXg3TXZPSFI1SFBLV0NQazFQN3NhQUhPSGZsR3Yx?=
 =?utf-8?B?QlZocFhOSUdHZ2h2dDZHTnBXblY3SS84VFNvdzZGelJWamIvaHRSR2Fib2U3?=
 =?utf-8?B?MWJhTnAvY0hiN0tsRDVsWUw2Qkh5TzQ2NEg4NGNFdmlBSlBON2lMRlY1ZTFu?=
 =?utf-8?B?azJqTXQ1SjFRQlFjNTUrdlk1dWt2M1F4RU5PdE93UU1vaDFEbERjL1o1bGpK?=
 =?utf-8?B?eVpZcDJON1JacHZBV0FRdU03UGJUK0RoZDlLTUI3RXYzeWI3cEVGWjhnTzEz?=
 =?utf-8?B?Y3ZKWDNpWndjOURQR1VBTzF6TEF3Skc0YlRNU1A1WTFINCtRem43Nmp0MEJI?=
 =?utf-8?B?bS85WG0rSTZIa1RvYVQyWjVRNlphYnN0eHdIV3Z0Q2xqY1lZSTFCU1duelBN?=
 =?utf-8?B?L1YzQ1JtVWwxQmxLQXhpMTJ6SGltdkVhaXc4N2g2NllEdXRoTTZJQ0dFTFhP?=
 =?utf-8?B?RWFvZFRCOTVMTHE0UTRRTWpFekZPREZCeVBSaVI4Y0dHTnFkYmNOSEdmMmxy?=
 =?utf-8?B?ZGFrM255dGNjaGhQMG1kTzZ6Q09ubXI2Q3lNRitFWXRRVVRJbzA1UFlRTGxv?=
 =?utf-8?B?aXNPRmU2aUZuT3NZTFluUzJVZHFyQ3lhVXkyOHQ4Q1dSWWp4S21LV2FHSXZv?=
 =?utf-8?B?SGVVWHB3NUxjZjBkTEgrRWgyYnMvbmZVcTdITVVFdU9JWk96OFpQMUM3blZt?=
 =?utf-8?B?U2oxNHk4c3pvcFVMTnhNbEljWDFFblpLemg3OVBvMFgxcVpWbXJwNmpSZFdt?=
 =?utf-8?B?QUpYQUl3OGxJNmFzR1lmTzRKTWs5WStZUVBKK1NLUWYrS2dwQ041QTBHNVQ0?=
 =?utf-8?B?V3lacnlwRG5JdVg4N0NUSlROL0UwdHFwTGpCbXJsdytCenNTUmh2KysrT1JR?=
 =?utf-8?B?WTdmVk5GWFQ2QnpPVE10cGxtNGJqMUpVb1JPK1BsdXRubGJrcFRLRXgwMEhW?=
 =?utf-8?B?WDdFU1FWWHUxZjJQdEVLSnRvdGRCZXNiT3g4MUQrTXJkN00wR0JkRzdJL3RG?=
 =?utf-8?B?emNHNkg5ekpyY1MyTlgrSlM3NytVT1p2NnhHeFpya3RSdUwrRDBIa3BOb0lK?=
 =?utf-8?B?NVdJWWJIWCs0K0kyaGhHSldJOFdBbGQxMWk2bEo0ZUdRbFhBOFl3bUJZNkhH?=
 =?utf-8?B?UDJoaFNuQUVOWU1iQ01ra3V6V1JVYUY2YkJ3OXlSYjhoSjhaSkxyMVVoS1Zp?=
 =?utf-8?B?WXZKaGxoZXZsVlh5Uk1xVWpqRjNDSS9jUXRmb0NoUUFSeDZsWUVPNTBnNnhn?=
 =?utf-8?B?L2NGQ1JKbUlLR01LWjBUSHFlcHJFNDdOSnpzSEtzd3ZBK3hzc2xxZlJJVkxE?=
 =?utf-8?B?dVZvN0FXTUZCS3FWdFdmbHR6THc5VXYvSnJaYjRIQUI5aXRWZ0ZZcG8wTUdS?=
 =?utf-8?Q?vI3ulcY530ZRJ0uQYa0gssvms?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48790f47-a178-4b16-f601-08ddde6587f3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 14:43:01.3119
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /chb0O9WPXRUxkDPY1xHH0SFfrBY7dIHIXqqUtWeY9tTYLygEpskzVf/axKeOPoL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7097
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E625F45DEB
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.40:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: EIDDI7U2J6SU26IM74VUDTLC7NYHYARL
X-Message-ID-Hash: EIDDI7U2J6SU26IM74VUDTLC7NYHYARL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Chris Wilson <chris.p.wilson@linux.intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/4] dma-buf/fence-chain: Speed up processing of rearmed callbacks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EIDDI7U2J6SU26IM74VUDTLC7NYHYARL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTguMDguMjUgMTY6MzAsIEphbnVzeiBLcnp5c3p0b2ZpayB3cm90ZToNCj4gSGkgQ2hyaXN0
aWFuLA0KPiANCj4gT24gVGh1cnNkYXksIDE0IEF1Z3VzdCAyMDI1IDE0OjI0OjI5IENFU1QgQ2hy
aXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+DQo+PiBPbiAxNC4wOC4yNSAxMDoxNiwgSmFudXN6IEty
enlzenRvZmlrIHdyb3RlOg0KPj4+IFdoZW4gZmlyc3QgdXNlciBzdGFydHMgd2FpdGluZyBvbiBh
IG5vdCB5ZXQgc2lnbmFsZWQgZmVuY2Ugb2YgYSBjaGFpbg0KPj4+IGxpbmssIGEgZG1hX2ZlbmNl
X2NoYWluIGNhbGxiYWNrIGlzIGFkZGVkIHRvIGEgdXNlciBmZW5jZSBvZiB0aGF0IGxpbmsuDQo+
Pj4gV2hlbiB0aGUgdXNlciBmZW5jZSBvZiB0aGF0IGNoYWluIGxpbmsgaXMgdGhlbiBzaWduYWxl
ZCwgdGhlIGNoYWluIGlzDQo+Pj4gdHJhdmVyc2VkIGluIHNlYXJjaCBmb3IgYSBmaXJzdCBub3Qg
c2lnbmFsZWQgbGluayBhbmQgdGhlIGNhbGxiYWNrIGlzDQo+Pj4gcmVhcm1lZCBvbiBhIHVzZXIg
ZmVuY2Ugb2YgdGhhdCBsaW5rLg0KPj4+DQo+Pj4gU2luY2UgY2hhaW4gZmVuY2VzIG1heSBiZSBl
eHBvc2VkIHRvIHVzZXIgc3BhY2UsIGUuZy4gb3ZlciBkcm1fc3luY29iag0KPj4+IElPQ1RMcywg
dXNlcnMgbWF5IHN0YXJ0IHdhaXRpbmcgb24gYW55IGxpbmsgb2YgdGhlIGNoYWluLCB0aGVuIG1h
bnkgbGlua3MNCj4+PiBvZiBhIGNoYWluIG1heSBoYXZlIHNpZ25hbGluZyBlbmFibGVkIGFuZCB0
aGVpciBjYWxsYmFja3MgYWRkZWQgdG8gdGhlaXINCj4+PiB1c2VyIGZlbmNlcy4gIE9uY2UgYW4g
YXJiaXRyYXJ5IHVzZXIgZmVuY2UgaXMgc2lnbmFsZWQsIGFsbA0KPj4+IGRtYV9mZW5jZV9jaGFp
biBjYWxsYmFja3MgYWRkZWQgdG8gaXQgc28gZmFyIG11c3QgYmUgcmVhcm1lZCB0byBhbm90aGVy
DQo+Pj4gdXNlciBmZW5jZSBvZiB0aGUgY2hhaW4uICBJbiBleHRyZW1lIHNjZW5hcmlvcywgd2hl
biBhbGwgTiBsaW5rcyBvZiBhDQo+Pj4gY2hhaW4gYXJlIGF3YWl0ZWQgYW5kIHRoZW4gc2lnbmFs
ZWQgaW4gcmV2ZXJzZSBvcmRlciwgdGhlIGRtYV9mZW5jZV9jaGFpbg0KPj4+IGNhbGxiYWNrIG1h
eSBiZSBjYWxsZWQgdXAgdG8gTiAqIChOICsgMSkgLyAyIHRpbWVzIChhbiBhcml0aG1ldGljIHNl
cmllcykuDQo+Pj4NCj4+PiBUbyBhdm9pZCB0aGF0IHBvdGVudGlhbCBleGNlc3NpdmUgYWNjdW11
bGF0aW9uIG9mIGRtYV9mZW5jZV9jaGFpbg0KPj4+IGNhbGxiYWNrcywgcmVhcm0gYSB0cmltbWVk
LWRvd24sIHNpZ25hbCBvbmx5IGNhbGxiYWNrIHZlcnNpb24gdG8gdGhlIGJhc2UNCj4+PiBmZW5j
ZSBvZiBhIHByZXZpb3VzIGxpbmssIGlmIG5vdCB5ZXQgc2lnbmFsZWQsIG90aGVyd2lzZSBqdXN0
IHNpZ25hbCB0aGUNCj4+PiBiYXNlIGZlbmNlIG9mIHRoZSBjdXJyZW50IGxpbmsgaW5zdGVhZCBv
ZiB0cmF2ZXJzaW5nIHRoZSBjaGFpbiBpbiBzZWFyY2gNCj4+PiBmb3IgYSBmaXJzdCBub3Qgc2ln
bmFsZWQgbGluayBhbmQgbW92aW5nIGFsbCBjYWxsYmFja3MgY29sbGVjdGVkIHNvIGZhciB0bw0K
Pj4+IGEgdXNlciBmZW5jZSBvZiB0aGF0IGxpbmsuDQo+Pg0KPj4gV2VsbCBjbGVhciBOQUsgdG8g
dGhhdCEgWW91IGNhbiBlYXNpbHkgb3ZlcmZsb3cgdGhlIGtlcm5lbCBzdGFjayB3aXRoIHRoYXQh
DQo+IA0KPiBJJ2xsIGJlIGhhcHB5IHRvIHByb3Bvc2UgYSBiZXR0ZXIgc29sdXRpb24sIGJ1dCBm
b3IgdGhhdCBJIG5lZWQgdG8gdW5kZXJzdGFuZCANCj4gYmV0dGVyIHlvdXIgbWVzc2FnZS4gIENv
dWxkIHlvdSBwbGVhc2UgcG9pbnQgb3V0IGFuIGV4YWN0IHBpZWNlIG9mIHRoZSANCj4gcHJvcG9z
ZWQgY29kZSBhbmQvb3IgZGVzY3JpYmUgYSBzY2VuYXJpbyB3aGVyZSB5b3UgY2FuIHNlZSB0aGUg
cmlzayBvZiBzdGFjayANCj4gb3ZlcmZsb3c/DQoNClRoZSBzZW50ZW5jZSAicmVhcm0gLi4gdG8g
dGhlIGJhc2UgZmVuY2Ugb2YgYSBwcmV2aW91cyBsaW5rIiBzb3VuZHMgbGlrZSB5b3UgYXJlIHRy
eWluZyB0byBpbnN0YWxsIGEgY2FsbGJhY2sgb24gdGhlIHNpZ25hbGluZyB0byB0aGUgcHJldmlv
dXMgY2hhaW4gZWxlbWVudC4NCg0KVGhhdCBpcyBleGFjdGx5IHdoYXQgSSBwb2ludGVkIG91dCBw
cmV2aW91c2x5IHdoZXJlIHlvdSBuZWVkIHRvIGJlIHN1cGVyIGNhcmVmdWwgYmVjYXVzZSB3aGVu
IHRoaXMgY2hhaW4gc2lnbmFscyB0aGUgY2FsbGJhY2tzIHdpbGwgZXhlY3V0ZSByZWN1cnNpdmVs
eSB3aGljaCBtZWFucyB0aGF0IHlvdSBjYW4gdHJpdmlhbGx5IG92ZXJmbG93IHRoZSBrZXJuZWwg
c3RhY2sgaWYgeW91IGhhdmUgbW9yZSB0aGFuIGEgaGFuZGZ1bCBvZiBjaGFpbiBlbGVtZW50cy4N
Cg0KSW4gb3RoZXIgd29yZHMgQSB3YWl0cyBmb3IgQiwgQiB3YWl0cyBmb3IgQywgQyB3YWl0cyBm
b3IgRCBldGMuLi4uIHdoZW4gRCBmaW5hbGx5IHNpZ25hbHMgaXQgd2lsbCBjYWxsIEMgd2hpY2gg
aW4gdHVybiBjYWxscyBCIHdoaWNoIGluIHR1cm4gY2FsbHMgQS4NCg0KRXZlbiBpZiB0aGUgY2hh
aW4gaXMgYSByZWN1cnNpdmUgZGF0YSBzdHJ1Y3R1cmUgeW91IGFic29sdXRlbHkgY2FuJ3QgdXNl
IHJlY3Vyc2lvbiBmb3IgdGhlIGhhbmRsaW5nIG9mIGl0Lg0KDQpNYXliZSBJIG1pc3VuZGVyc3Rv
b2QgeW91ciB0ZXh0dWFsIGRlc2NyaXB0aW9uIGJ1dCByZWFkaW5nIGEgc2VudGVuY2UgbGlrZSB0
aGlzIHJpbmdzIGFsbCBhbGFybSBiZWxscyBoZXJlLiBPdGhlcndpc2UgSSBjYW4ndCBzZWUgd2hh
dCB0aGUgcGF0Y2ggaXMgc3VwcG9zZWQgdG8gYmUgb3B0aW1pemluZy4NCg0KPj4NCj4+IEFkZGl0
aW9uYWwgdG8gdGhpcyBtZXNzaW5nIHdpdGggdGhlIGZlbmNlIG9wcyBvdXRzaWRlIG9mIHRoZSBk
bWFfZmVuY2UgY29kZSBpcyBhbiBhYnNvbHV0ZSBuby1nby4NCj4gDQo+IENvdWxkIHlvdSBwbGVh
c2UgZXhwbGFpbiB3aGF0IHBpZWNlIG9mIGNvZGUgeW91IGFyZSByZWZlcnJpbmcgdG8gd2hlbiB5
b3Ugc2F5IA0KPiAibWVzc2luZyB3aXRoIHRoZSBmZW5jZSBvcHMgb3V0c2lkZSB0aGUgZG1hX2Zl
bmNlIGNvZGUiPyAgSWYgbm90IHRoaXMgcGF0Y2ggDQo+IHRoZW4gd2hpY2ggcGFydGljdWxhciBv
bmUgb2YgdGhpcyBzZXJpZXMgZGlkIHlvdSBtZWFuPyAgSSdtIGFzc3VtaW5nIHlvdSANCj4gZGlk
bid0IG1lYW4gZHJtX3N5bmNvYmogY29kZSB0aGF0IEkgbWVudGlvbmVkIGluIG15IGNvbW1pdCBk
ZXNjcmlwdGlvbnMuDQoNClNlZSBiZWxvdy4NCg0KPiANCj4gVGhhbmtzLA0KPiBKYW51c3oNCj4g
DQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4NCj4+PiBDbG9zZXM6IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5
MDQNCj4+PiBTdWdnZXN0ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AbGludXgu
aW50ZWwuY29tPg0KPj4+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6
LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4NCj4+PiAtLS0NCj4+PiAgZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS1jaGFpbi5jIHwgMTAxICsrKysrKysrKysrKysrKysrKysrKysrKystLS0t
LQ0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgODQgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0p
DQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQo+Pj4gaW5kZXggYThhOTBhY2Y0
ZjM0ZC4uOTBlZmYyNjRlZTA1YyAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWNoYWluLmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWlu
LmMNCj4+PiBAQCAtMTE5LDQ2ICsxMTksMTEzIEBAIHN0YXRpYyBjb25zdCBjaGFyICpkbWFfZmVu
Y2VfY2hhaW5fZ2V0X3RpbWVsaW5lX25hbWUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+Pj4g
ICAgICAgICAgcmV0dXJuICJ1bmJvdW5kIjsNCj4+PiAgfQ0KPj4+ICANCj4+PiAtc3RhdGljIHZv
aWQgZG1hX2ZlbmNlX2NoYWluX2lycV93b3JrKHN0cnVjdCBpcnFfd29yayAqd29yaykNCj4+PiAr
c3RhdGljIHZvaWQgc2lnbmFsX2lycV93b3JrKHN0cnVjdCBpcnFfd29yayAqd29yaykNCj4+PiAg
ew0KPj4+ICAJc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hhaW47DQo+Pj4gIA0KPj4+ICAJY2hh
aW4gPSBjb250YWluZXJfb2Yod29yaywgdHlwZW9mKCpjaGFpbiksIHdvcmspOw0KPj4+ICANCj4+
PiAtCS8qIFRyeSB0byByZWFybSB0aGUgY2FsbGJhY2sgKi8NCj4+PiAtCWlmICghZG1hX2ZlbmNl
X2NoYWluX2VuYWJsZV9zaWduYWxpbmcoJmNoYWluLT5iYXNlKSkNCj4+PiAtCQkvKiBPaywgd2Ug
YXJlIGRvbmUuIE5vIG1vcmUgdW5zaWduYWxlZCBmZW5jZXMgbGVmdCAqLw0KPj4+IC0JCWRtYV9m
ZW5jZV9zaWduYWwoJmNoYWluLT5iYXNlKTsNCj4+PiArCWRtYV9mZW5jZV9zaWduYWwoJmNoYWlu
LT5iYXNlKTsNCj4+PiAgCWRtYV9mZW5jZV9wdXQoJmNoYWluLT5iYXNlKTsNCj4+PiAgfQ0KPj4+
ICANCj4+PiAtc3RhdGljIHZvaWQgZG1hX2ZlbmNlX2NoYWluX2NiKHN0cnVjdCBkbWFfZmVuY2Ug
KmYsIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQ0KPj4+ICtzdGF0aWMgdm9pZCBzaWduYWxfY2Io
c3RydWN0IGRtYV9mZW5jZSAqZiwgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpDQo+Pj4gK3sNCj4+
PiArCXN0cnVjdCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluOw0KPj4+ICsNCj4+PiArCWNoYWluID0g
Y29udGFpbmVyX29mKGNiLCB0eXBlb2YoKmNoYWluKSwgY2IpOw0KPj4+ICsJaW5pdF9pcnFfd29y
aygmY2hhaW4tPndvcmssIHNpZ25hbF9pcnFfd29yayk7DQo+Pj4gKwlpcnFfd29ya19xdWV1ZSgm
Y2hhaW4tPndvcmspOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0aWMgdm9pZCByZWFybV9pcnFf
d29yayhzdHJ1Y3QgaXJxX3dvcmsgKndvcmspDQo+Pj4gK3sNCj4+PiArCXN0cnVjdCBkbWFfZmVu
Y2VfY2hhaW4gKmNoYWluOw0KPj4+ICsJc3RydWN0IGRtYV9mZW5jZSAqcHJldjsNCj4+PiArDQo+
Pj4gKwljaGFpbiA9IGNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmNoYWluKSwgd29yayk7DQo+
Pj4gKw0KPj4+ICsJcmN1X3JlYWRfbG9jaygpOw0KPj4+ICsJcHJldiA9IHJjdV9kZXJlZmVyZW5j
ZShjaGFpbi0+cHJldik7DQo+Pj4gKwlpZiAocHJldiAmJiBkbWFfZmVuY2VfYWRkX2NhbGxiYWNr
KHByZXYsICZjaGFpbi0+Y2IsIHNpZ25hbF9jYikpDQo+Pj4gKwkJcHJldiA9IE5VTEw7DQo+Pj4g
KwlyY3VfcmVhZF91bmxvY2soKTsNCj4+PiArCWlmIChwcmV2KQ0KPj4+ICsJCXJldHVybjsNCj4+
PiArDQo+Pj4gKwkvKiBPaywgd2UgYXJlIGRvbmUuIE5vIG1vcmUgdW5zaWduYWxlZCBmZW5jZXMg
bGVmdCAqLw0KPj4+ICsJc2lnbmFsX2lycV93b3JrKHdvcmspOw0KPj4+ICt9DQo+Pj4gKw0KPj4+
ICtzdGF0aWMgaW5saW5lIGJvb2wgZmVuY2VfaXNfc2lnbmFsZWRfX25lc3RlZChzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZSkNCj4+PiArew0KPj4+ICsJaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFH
X1NJR05BTEVEX0JJVCwgJmZlbmNlLT5mbGFncykpDQo+Pj4gKwkJcmV0dXJuIHRydWU7DQo+Pj4g
Kw0KDQo+Pj4gKwlpZiAoZmVuY2UtPm9wcy0+c2lnbmFsZWQgJiYgZmVuY2UtPm9wcy0+c2lnbmFs
ZWQoZmVuY2UpKSB7DQoNCkNhbGxpbmcgdGhpcyBvdXRzaWRlIG9mIGRtYS1mZW5jZS5bY2hdIGlz
IGEgY2xlYXIgbm8tZ28uDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4+PiArCQl1bnNpZ25l
ZCBsb25nIGZsYWdzOw0KPj4+ICsNCj4+PiArCQlzcGluX2xvY2tfaXJxc2F2ZV9uZXN0ZWQoZmVu
Y2UtPmxvY2ssIGZsYWdzLCBTSU5HTEVfREVQVEhfTkVTVElORyk7DQo+Pj4gKwkJZG1hX2ZlbmNl
X3NpZ25hbF9sb2NrZWQoZmVuY2UpOw0KPj4+ICsJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVu
Y2UtPmxvY2ssIGZsYWdzKTsNCj4+PiArDQo+Pj4gKwkJcmV0dXJuIHRydWU7DQo+Pj4gKwl9DQo+
Pj4gKw0KPj4+ICsJcmV0dXJuIGZhbHNlOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0aWMgYm9v
bCBwcmV2X2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluKQ0KPj4+ICt7
DQo+Pj4gKwlzdHJ1Y3QgZG1hX2ZlbmNlICpwcmV2Ow0KPj4+ICsJYm9vbCByZXN1bHQ7DQo+Pj4g
Kw0KPj4+ICsJcmN1X3JlYWRfbG9jaygpOw0KPj4+ICsJcHJldiA9IHJjdV9kZXJlZmVyZW5jZShj
aGFpbi0+cHJldik7DQo+Pj4gKwlyZXN1bHQgPSAhcHJldiB8fCBmZW5jZV9pc19zaWduYWxlZF9f
bmVzdGVkKHByZXYpOw0KPj4+ICsJcmN1X3JlYWRfdW5sb2NrKCk7DQo+Pj4gKw0KPj4+ICsJcmV0
dXJuIHJlc3VsdDsNCj4+PiArfQ0KPj4+ICsNCj4+PiArc3RhdGljIHZvaWQgcmVhcm1fb3Jfc2ln
bmFsX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQ0KPj4+
ICB7DQo+Pj4gIAlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbjsNCj4+PiAgDQo+Pj4gIAlj
aGFpbiA9IGNvbnRhaW5lcl9vZihjYiwgdHlwZW9mKCpjaGFpbiksIGNiKTsNCj4+PiAtCWluaXRf
aXJxX3dvcmsoJmNoYWluLT53b3JrLCBkbWFfZmVuY2VfY2hhaW5faXJxX3dvcmspOw0KPj4+ICsJ
aWYgKHByZXZfaXNfc2lnbmFsZWQoY2hhaW4pKSB7DQo+Pj4gKwkJLyogT2ssIHdlIGFyZSBkb25l
LiBObyBtb3JlIHVuc2lnbmFsZWQgZmVuY2VzIGxlZnQgKi8NCj4+PiArCQlpbml0X2lycV93b3Jr
KCZjaGFpbi0+d29yaywgc2lnbmFsX2lycV93b3JrKTsNCj4+PiArCX0gZWxzZSB7DQo+Pj4gKwkJ
LyogVHJ5IHRvIHJlYXJtIHRoZSBjYWxsYmFjayAqLw0KPj4+ICsJCWluaXRfaXJxX3dvcmsoJmNo
YWluLT53b3JrLCByZWFybV9pcnFfd29yayk7DQo+Pj4gKwl9DQo+Pj4gKw0KPj4+ICAJaXJxX3dv
cmtfcXVldWUoJmNoYWluLT53b3JrKTsNCj4+PiAtCWRtYV9mZW5jZV9wdXQoZik7DQo+Pj4gIH0N
Cj4+PiAgDQo+Pj4gIHN0YXRpYyBib29sIGRtYV9mZW5jZV9jaGFpbl9lbmFibGVfc2lnbmFsaW5n
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4+ICB7DQo+Pj4gIAlzdHJ1Y3QgZG1hX2ZlbmNl
X2NoYWluICpoZWFkID0gdG9fZG1hX2ZlbmNlX2NoYWluKGZlbmNlKTsNCj4+PiArCWludCBlcnIg
PSAtRU5PRU5UOw0KPj4+ICANCj4+PiAtCWRtYV9mZW5jZV9nZXQoJmhlYWQtPmJhc2UpOw0KPj4+
IC0JZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoKGZlbmNlLCAmaGVhZC0+YmFzZSkgew0KPj4+IC0J
CXN0cnVjdCBkbWFfZmVuY2UgKmYgPSBkbWFfZmVuY2VfY2hhaW5fY29udGFpbmVkKGZlbmNlKTsN
Cj4+PiArCWlmIChXQVJOX09OKCFoZWFkKSkNCj4+PiArCQlyZXR1cm4gZmFsc2U7DQo+Pj4gIA0K
Pj4+IC0JCWRtYV9mZW5jZV9nZXQoZik7DQo+Pj4gLQkJaWYgKCFkbWFfZmVuY2VfYWRkX2NhbGxi
YWNrKGYsICZoZWFkLT5jYiwgZG1hX2ZlbmNlX2NoYWluX2NiKSkgew0KPj4+ICsJZG1hX2ZlbmNl
X2dldChmZW5jZSk7DQo+Pj4gKwlpZiAoaGVhZC0+ZmVuY2UpDQo+Pj4gKwkJZXJyID0gZG1hX2Zl
bmNlX2FkZF9jYWxsYmFjayhoZWFkLT5mZW5jZSwgJmhlYWQtPmNiLCByZWFybV9vcl9zaWduYWxf
Y2IpOw0KPj4+ICsJaWYgKGVycikgew0KPj4+ICsJCWlmIChwcmV2X2lzX3NpZ25hbGVkKGhlYWQp
KSB7DQo+Pj4gIAkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOw0KPj4+IC0JCQlyZXR1cm4gdHJ1ZTsN
Cj4+PiArCQl9IGVsc2Ugew0KPj4+ICsJCQlpbml0X2lycV93b3JrKCZoZWFkLT53b3JrLCByZWFy
bV9pcnFfd29yayk7DQo+Pj4gKwkJCWlycV93b3JrX3F1ZXVlKCZoZWFkLT53b3JrKTsNCj4+PiAr
CQkJZXJyID0gMDsNCj4+PiAgCQl9DQo+Pj4gLQkJZG1hX2ZlbmNlX3B1dChmKTsNCj4+PiAgCX0N
Cj4+PiAtCWRtYV9mZW5jZV9wdXQoJmhlYWQtPmJhc2UpOw0KPj4+IC0JcmV0dXJuIGZhbHNlOw0K
Pj4+ICsNCj4+PiArCXJldHVybiAhZXJyOw0KPj4+ICB9DQo+Pj4gIA0KPj4+ICBzdGF0aWMgYm9v
bCBkbWFfZmVuY2VfY2hhaW5fc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+Pg0K
Pj4NCj4gDQo+IA0KPiANCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
