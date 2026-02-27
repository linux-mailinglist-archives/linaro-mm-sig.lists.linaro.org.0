Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /Oo+OGW2oWnmvwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 16:21:09 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0121B9A52
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 16:21:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECA283F9BF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 15:21:07 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010006.outbound.protection.outlook.com [52.101.56.6])
	by lists.linaro.org (Postfix) with ESMTPS id 636D93F9BF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 15:21:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=IywS8lKy;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.56.6 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OKhZVOloECsNntNsaTeVwA4s3UNx77xAj7wqIIJxbzbpEOktRK3xETqYcZyJJfR5FHG+nWoIkbkMMm9xBzpaodzmBAxMcefIDhlEa0VNcWCtm+uiSg2W3NSCv1GJAVKc91zGNKq/9wu15In7VSVs2+sbYCANFyBc2ChvLMyjwLf0ZsqjF0gz5Jw1Nf6MOfUGFPEGGQ8pTiz6A8EMYmBk1WjpB41slBtt6MqSN2OJK2TWxLcCvPx4kNWk3z80nmW2XKG10LQpPYnwfgPHwAtnezM/dALKuvdTOeH4R4oXcZVjAaGN4nuhf9SbStRt16bq0/ejzsj1FBKOrkluengbuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b3tDzevO92hFp0MiTb2w4uy5SBTIBEUoPh9az88rqkA=;
 b=JBF5cwAnOgGnsf7x8eyn8jjS+9B0AbmShkowMQEK9HR/34FDnEEVjMk5gDX425VQunHnWnAe+X0U5eu0rkNqw3WYZs7HyTeNTPWWVMCE1W7KZ5ZWkptFlYwKg+BnxdgJqbPAlWc293CUeKCLGeRU/kn+VF1g8flU2A7DQsaKkZ2pRdRGlyEZH5AKbnzOGcZXB3jHMWwFJCZPXMjbcVXIf/t33HpPdA5EPQOjREUTsNhgnlmlqXmlSJwolpDc0j1Sjwg+bJKflgOofLKGCTl5UohU+XAHMrwyIO/CFAXQg+YX3pXoC++7VYy9zprjMPvY+hO2112r7HozYBg4COrmtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b3tDzevO92hFp0MiTb2w4uy5SBTIBEUoPh9az88rqkA=;
 b=IywS8lKyKUyyl4LRWHODtXN+eh0nvGFLjq74oWMN6WVyGcp1BvkRKRanRm+wR/tS1U4iOtqUEpeDBnDBv3MBykwDZD7af+4631BGiJ/0ptdchBzmG3HayLxVHyyw/C8TvSOCGaHyZtxnP5IQ9x2bLnQ2Kqp+o4SQWGbxn35lxZo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB8172.namprd12.prod.outlook.com (2603:10b6:806:352::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Fri, 27 Feb
 2026 15:21:01 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 15:21:01 +0000
Message-ID: <a006b938-cd53-4c56-8131-30f557919ec6@amd.com>
Date: Fri, 27 Feb 2026 16:20:54 +0100
User-Agent: Mozilla Thunderbird
To: Matt Evans <mattev@meta.com>, Alex Williamson <alex@shazbot.org>,
 Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>,
 Alex Mastro <amastro@fb.com>, Mahmoud Adam <mngyadam@amazon.de>,
 David Matlack <dmatlack@google.com>
References: <20260226202211.929005-1-mattev@meta.com>
 <20260226202211.929005-5-mattev@meta.com>
 <f75088c6-5795-49cc-8932-ea46c2223d74@amd.com>
 <ad614dc4-0fd3-4897-b879-5d78a22b534f@meta.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ad614dc4-0fd3-4897-b879-5d78a22b534f@meta.com>
X-ClientProxiedBy: FR4P281CA0395.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cf::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB8172:EE_
X-MS-Office365-Filtering-Correlation-Id: 530a7277-bc6f-45da-00a4-08de7613d08a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	hQI6wjMuaAXEMrbaK2wVx0LMIG1qBRKRabX/EIrW7Q33BgbFG84CW45QRXRUUB9suXWFzFJvgApf+1VT/ok9E+sDz8Re0PV4pNoeWfEzTTRAn3jqbGFBsKnyEtUBarlETWMchgDIy8IcGLbY+huv52nq2Byr+eJAiTktm+9UTLLCuYkbtfW75+UWARNkmqmywrMBTx4RIwKGikx6/ceFlzGn3FCoOcDbEI0/C4qZ/zdjgoZQlWijpKZw3N4p9ndYdR+lzccNXtRdQ6aHi2TB8bDT7BO5Wki9gL/X6/27bwu6z8hrDorTbWwlvXbU+vhsdbJeTV9c8KXDfzAaQF9UtwTJ3cC0BR0eZvs1+9JC1laJ4ID1iWZ7JNHJVs5e2U2MyC0K+6d3cYpe0LiR1DLCfBSzuAhnywvgfgrlbC69x5/ONfDvCQ0GGO6y5SfTxkUIKYo+EOPai7NLBMu2tXwL2vIz/UCE4ZNxf8PduIjSnAyJmG+L1WZL9vRZG0CyQeqQMwc6eviLE9Z0cyTHu7du28rkiG5Rywp2zIUMDOxSMfZBNhdZLfauhZvd3HStKkikoQHzlVIKXWsKXoO87bJM3UhC0BObvxt74h6QXlYq7Q+sdJRCqQtwSyIkvgdy6XKpiFReilQGowsM/95+M3PaHZtHfT31ej71y34Rx8FmNxLNlTWpA1HCimxCj+wRh2cB
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NDgzMGdPTjVqcUM4R29uaVQza1FaN0ZsaVJKQzNjMFJSeFJOckVFeWk5ZVJ5?=
 =?utf-8?B?dmtEZTRtSjZqRk4wMnF4RlhvUUtwQnVuU0F3am1RN2lrejRqL3kzL1hGWnBI?=
 =?utf-8?B?aGJmY09Ba2RtRTJES3lVcDhBRUpMTitYZVg2TWFtdzNWV0dYeFplZ01IVDJM?=
 =?utf-8?B?TnVORkVha1M0RFNTeXZvNmlYMVptWmxaQU9kU3JLMnZvbFh2YnVTOFI4UGgv?=
 =?utf-8?B?TkdJYVZTWUNCeXVVejFtMWwzdWxFa2Niakpsa2RvSWx3OWk1dG1SaTZ1SU9H?=
 =?utf-8?B?VFhkY09uNVNYTDQrd2FHelAxWmxXK3JYUVNJS0haU3piQ0crTVBXeVFnNUZx?=
 =?utf-8?B?QnFkN201SUJNTE8vWk9HR3hCeVJXelkySGwyeU9Hc1JUZVFWclc0M1k1YUJh?=
 =?utf-8?B?S05zKzAwdmlCNmtzWXIreDZQWXEydURjNTdkNGJXTmpoQUdNZ3hvV2NNS20z?=
 =?utf-8?B?cEkzOFNnWDNtWEJCbUpRV282MWxadFppTjJwTUd2d2sxc0diQkNSdkExVDIx?=
 =?utf-8?B?WXRmWTlEYUdiSS83VnkwekF2Vklpb3dSeDdvNnhzNkw0Y3JORTZHY24zZm1O?=
 =?utf-8?B?d1BMcWFJMW5HdUE0QjNTRmhoUGdWVTlwRUcwRHFZMHlzRStlSzhYTnp2U3k1?=
 =?utf-8?B?Z2xkR1dWZkY0Z1Y4R3M3c25jODVOREtUSzZDZC9QV2h1NWNibTVvdEJxS3p4?=
 =?utf-8?B?d2VlamJTNlkrbkU5TnNjNWIrZ2llK3JPakszTnR5TUZVRHd4UVlOMDJvazVo?=
 =?utf-8?B?WjAvb0hQT1djaFhacnFDNitTWU1CTlZlVXlVVXJEeExBQ3BZRmgyTXVKZVZ3?=
 =?utf-8?B?K2UvS1JxQkhIbFFkUHlRSWpVdzZRR1I0TzRhOWlZTDg4Qm9jMHluWTBPSy9G?=
 =?utf-8?B?dGJ6Q1huVEh6bXh6L0JwSFRJb280V2E0c21tV01pVTlnWVF0SFkvUkxKZm8z?=
 =?utf-8?B?NE9uVDVQVUJpTldsdHJYRmc5RG5uNGY5Zk5CV2t6VkJBUlVVOXgxbmpuR0pT?=
 =?utf-8?B?dmcyYVlEdERyZlk0NUVyNll3aStrWGcwTFpKU21yaWxPaGZMaHZnYjFmNVpD?=
 =?utf-8?B?SnV5QXZZUDhhL0phYnoyT3lkdVhMZWw4OEgxZ2U2YlN3ZVcxeVJZRHYrNzEz?=
 =?utf-8?B?eTJndlZLUnFkM0pZQUhFOHRFWFJ2eXRtKzlZek8rTCtXa0RWZ1pBRlVJV3Fn?=
 =?utf-8?B?SUNqTjJWU2JjWmw0djNFVjBMbHVIcVpiL0k5OVNQSy80Ym1kWkVhVTY0K2Jj?=
 =?utf-8?B?ajYrSFlEWTJIVHFVYTlIWmxNUGpPUkZTVnNSQTExRmg0bXdVSnQ5enhmZWJP?=
 =?utf-8?B?WUQxK2ZyUisyVkdrRTFtWjhkdU5IMk4rSkdxV2JFYXE1ZStHMFVzYW40cGZn?=
 =?utf-8?B?VEp4cTIwai9RMzZIWmNDK3BpUFd2T3lBNTkyTlVTMUtWUVZBcE10T1NiZWJq?=
 =?utf-8?B?eWlVZUhDdEhWSG1Ybi9teHlEZ0c4RmxCckowdXQ5N2hickl6MDNJbVRCOHVh?=
 =?utf-8?B?L1JrZFhwajRBSmtjMTBRbmg5VnBha3htQmZxaEY0dko5ajhmS3d6MUVpODd2?=
 =?utf-8?B?OFo5Vi95MENUT3JXOW05UUVXT1N1Mi9Id2xtS3BGVFJLSVNKSnpZOHVJbXpC?=
 =?utf-8?B?WENXYTNYOW55K2hqMHRZRkVDTUVIU3ljUk9YZEJCWmFxMFNDQzdFSzlhOHRm?=
 =?utf-8?B?UzhkbXF2OXZ0Rkh4SVZ2b2pqM0NMZmdVYkh6emFXd0cycWJkZXpCdWJlYWZh?=
 =?utf-8?B?TEJyQ2RMU3ZTSHNpMTc5QmFTOUhDTlJsR0NlbUVPV1QrekRnc3VTV0kxUERk?=
 =?utf-8?B?bXpLMG5EWXVQbjcrcmxJaE82Ym1NSld2a055RWJvM0hQaFMyeTRIRWtLN3lp?=
 =?utf-8?B?Y21qRUJuYzZRL1VIck9uVVhtNGUwNlcya0FvK2hXeGVNeFN2Vy83VktVLzdF?=
 =?utf-8?B?MlZQN21LYS80aTlLbElZbzhzZjI5dDdWRlVhU2xsWWFTZHBoOFhaakYwczZJ?=
 =?utf-8?B?cEpnM0JjRFdsYjJIbGZwRXFsR2UxOExyTS9kMFdjQVBleTZsWisvcnc5Y1kw?=
 =?utf-8?B?NExZOG9xS0dTQUV3OHlLMFYxczhSV2dOYWdYMzJXNUd5S0JYMVEvMldsdk5h?=
 =?utf-8?B?TmlhdVBmL1kvZmF0bFdPR2VvTTBUVWRwMDcxMnRjTWV3a0pQOThpb3BiUkVx?=
 =?utf-8?B?TXFVYU5PWjRkZTZrdmh3aE1Ndmp0azlUaVpiZXA1UlNEZWwxaSszSFB4bWU0?=
 =?utf-8?B?Z24zZlRwVE1DSHBwSW9ZV2U5WEFHYXh6TVVNNWE2Vi93VWFFblVJK2hRaENG?=
 =?utf-8?Q?6uAZh7MfumrJE/VQHl?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 530a7277-bc6f-45da-00a4-08de7613d08a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 15:21:01.2509
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NkGk85FD5fPT7pg3ayoQGrcsztbtuLfvxbDihFAAtqkGpcS9KbP5w8EbZyqIL3TG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8172
X-Spamd-Bar: -----
Message-ID-Hash: MJO4CCO5WAFOI675PEUL5FD37VRR6D4H
X-Message-ID-Hash: MJO4CCO5WAFOI675PEUL5FD37VRR6D4H
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 4/7] dma-buf: uapi: Mechanism to revoke DMABUFs via ioctl()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MJO4CCO5WAFOI675PEUL5FD37VRR6D4H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,meta.com:email]
X-Rspamd-Queue-Id: 3F0121B9A52
X-Rspamd-Action: no action

SGkgTWF0dCwNCg0KT24gMi8yNy8yNiAxNDowMiwgTWF0dCBFdmFucyB3cm90ZToNCj4gSGkgQ2hy
aXN0aWFuLA0KPiANCj4gT24gMjcvMDIvMjAyNiAxMDowNSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToNCj4+IE9uIDIvMjYvMjYgMjE6MjIsIE1hdHQgRXZhbnMgd3JvdGU6DQo+Pj4gQWRkIGEgbmV3
IGRtYS1idWYgaW9jdGwoKSBvcCwgRE1BX0JVRl9JT0NUTF9SRVZPS0UsIGNvbm5lY3RlZCB0byBh
IG5ldw0KPj4+IChvcHRpb25hbCkgZG1hX2J1Zl9vcHMgY2FsbGJhY2ssIHJldm9rZSgpLiAgQW4g
ZXhwb3J0ZXIgcmVjZWl2aW5nIHRoaXMNCj4+PiB3aWxsIF9wZXJtYW5lbnRseV8gcmV2b2tlIHRo
ZSBETUFCVUYsIG1lYW5pbmcgaXQgY2FuIG5vIGxvbmdlciBiZQ0KPj4+IG1hcHBlZC9hdHRhY2hl
ZC9tbWFwKCllZC4gIEl0IGFsc28gZ3VhcmFudGVlcyB0aGF0IGV4aXN0aW5nDQo+Pj4gaW1wb3J0
ZXJzIGhhdmUgYmVlbiBkZXRhY2hlZCAoZS5nLiB2aWEgbW92ZV9ub3RpZnkpIGFuZCBhbGwgbWFw
cGluZ3MNCj4+PiBtYWRlIGluYWNjZXNzaWJsZS4NCj4+Pg0KPj4+IFRoaXMgaXMgdXNlZnVsIGZv
ciBsaWZlY3ljbGUgbWFuYWdlbWVudCBpbiBzY2VuYXJpb3Mgd2hlcmUgYSBwcm9jZXNzDQo+Pj4g
aGFzIGNyZWF0ZWQgYSBETUFCVUYgcmVwcmVzZW50aW5nIGEgcmVzb3VyY2UsIHRoZW4gZGVsZWdh
dGVkIGl0IHRvDQo+Pj4gYSBjbGllbnQgcHJvY2VzczsgYWNjZXNzIHRvIHRoZSByZXNvdXJjZSBp
cyByZXZva2VkIHdoZW4gdGhlIGNsaWVudCBpcw0KPj4+IGRlZW1lZCAiZG9uZSIsIGFuZCB0aGUg
cmVzb3VyY2UgY2FuIGJlIHNhZmVseSByZS11c2VkIGVsc2V3aGVyZS4NCj4+DQo+PiBXZWxsIHRo
YXQgbWVhbnMgcmV2b2tpbmcgZnJvbSB0aGUgaW1wb3J0ZXIgc2lkZS4gVGhhdCBhYnNvbHV0ZWx5
IGRvZXNuJ3QgbWFrZSBzZW5zZSB0byBtZS4NCj4+DQo+PiBXaHkgd291bGQgeW91IGRvIHRoYXQ/
DQo+IA0KPiBXZWxsLCBpdCdzIGZvciBjbGVhbnVwLCBidXQgZGlyZWN0ZWQgdG8gYSBzcGVjaWZp
YyBidWZmZXIuDQo+IA0KPiBFbGFib3JhdGluZyBvbiB0aGUgb3JpZ2luYWwgZXhhbXBsZSwgYSB1
c2Vyc3BhY2UgZHJpdmVyIGNyZWF0ZXMgYSBETUFCVUYNCj4gZm9yIHBhcnRzIG9mIGEgQkFSIGFu
ZCB0aGVuIHNlbmRzIGl0cyBmZCB0byBzb21lIG90aGVyIGNsaWVudCBwcm9jZXNzDQo+IHZpYSBT
Q01fUklHSFRTLiAgVGhlIGNsaWVudCBtaWdodCB0aGVuIGRvIGFsbCBvZjoNCj4gDQo+IC0gUHJv
Y2VzcyBtYXBwaW5ncyBvZiB0aGUgYnVmZmVyDQo+IC0gaW9tbXVmZCBJTy1tYXBwaW5ncyBvZiBp
dA0KPiAtIG90aGVyIHVucmVsYXRlZCBkcml2ZXJzIGltcG9ydCBpdA0KPiAtIHNoYXJlIHRoZSBm
ZCB3aXRoIG1vcmUgcHJvY2Vzc2VzIQ0KPiANCj4gaS5lLiBwb2tpbmcgYSBwcm9ncmFtbWluZyBp
bnRlcmZhY2UgYW5kIG9yY2hlc3RyYXRpbmcgUDJQIERNQSB0byBpdC4NCj4gRXZlbnR1YWxseSB0
aGUgY2xpZW50IGNvbXBsZXRlcyBhbmQgbWVzc2FnZXMgdGhlIGRyaXZlciB0byBzYXkgZ29vZGJ5
ZSwNCj4gZXhjZXB0IHRoZSBjbGllbnQgaXMgYnVnZ3k6IGl0IGhhbmdzIGJlZm9yZSBpdCBtdW5t
YXBzIG9yIHJlcXVlc3Qgb3RoZXINCj4gZHJpdmVycyB0byBzaHV0IGRvd24vZGV0YWNoIHRoZWly
IGltcG9ydHMuDQo+IA0KPiBOb3cgdGhlIG9yaWdpbmFsIGRyaXZlciBjYW4ndCByZXVzZSBhbnkg
QkFSIHJhbmdlcyBpdCBzaGFyZWQgb3V0LCBhcw0KPiB0aGVyZSBtaWdodCBzdGlsbCBiZSBhY3Rp
dmUgbWFwcGluZ3Mgb3IgZXZlbiBvbmdvaW5nIFAyUCBETUEgdG8gdGhlbS4NCj4gDQo+IFRoZSBn
b2FsIGlzIHRvIGd1YXJhbnRlZSBhIHBvaW50IGluIHRpbWUgd2hlcmUgcmVzb3VyY2VzIGNvcnJl
c3BvbmRpbmcNCj4gdG8gYSBwcmV2aW91c2x5LXNoYXJlZCBETUFCVUYgZmQgX2Nhbm5vdF8gYmUg
YWNjZXNzZWQgYW55bW9yZTogIENQVXMsDQo+IG9yIG90aGVyIGRyaXZlcnMvaW1wb3J0ZXJzLCBv
ciBhbnkgb3RoZXIga2luZCBvZiBQMlAgRE1BLiAgU28geWVzLCBhDQo+IHJldm9rZSBtdXN0IGRl
dGFjaCBpbXBvcnRlcnMsIHVzaW5nIHRoZSBzeW5jaHJvbm91cyByZXZvY2F0aW9uIGZsb3cNCj4g
TGVvbiBhZGRlZCBpbiBbMF0gKCJkbWEtYnVmOiBVc2UgcmV2b2tlIG1lY2hhbmlzbSB0byBpbnZh
bGlkYXRlIHNoYXJlZA0KPiBidWZmZXJzIikuDQo+IA0KPiAoQXBvbG9naWVzLCBJIHNob3VsZCBy
ZWFsbHkgaGF2ZSBqdXN0IGJ1aWx0IHRoaXMgb24gdG9wIG9mIGEgdHJlZQ0KPiBjb250YWluaW5n
IHRoYXQgc2VyaWVzIHRvIG1ha2UgdGhpcyBuZWVkIGNsZWFyZXIuKQ0KPiANCj4gQnV0LCBpdCB1
bHRpbWF0ZWx5IHNlZW1zIHRvIGhhdmUgdGhlIHNhbWUgZG93bnN0cmVhbSBlZmZlY3RzIGFzIGlm
IG9uZQ0KPiB3ZXJlIHRvLCBzYXksIHNodXQgZG93biBWRklPIGRldmljZSBmZHMgYW5kIHRoZXJl
Zm9yZSB0cmlnZ2VyDQo+IHZmaW9fcGNpX2RtYV9idWZfY2xlYW51cCgpLiAgSXQncyBqdXN0IHRo
ZSByZWFzb24gdG8gdHJpZ2dlciByZXZvY2F0aW9uDQo+IGlzIGRpZmZlcmVudDogIGEgc2VsZWN0
aXZlIHVzZXJzcGFjZS10cmlnZ2VyZWQgcmV2b2NhdGlvbiBvZiBhIGdpdmVuDQo+IGJ1ZmZlciwg
aW5zdGVhZCBvZiBhbiBleHBvcnRlciBjbGVhbnVwLXRyaWdnZXJlZCByZXZvY2F0aW9uIG9mIGFs
bA0KPiBidWZmZXJzLiAgSW4gYm90aCBjYXNlcyB0aGUgZ29hbHMgYXJlIGlkZW50aWNhbCB0b28s
IG9mIGEgc3luY2hyb25pc2VkDQo+IHBvaW50IGFmdGVyIHdoaWNoIG5vIG1vcmUgRE1BL0NQVSBh
Y2Nlc3MgY2FuIGhhcHBlbi4NCj4gDQo+IChJZiBJJ3ZlIG1pc3VuZGVyc3Rvb2QgeW91ciBxdWVz
dGlvbiBwbGVhc2UgY2xhcmlmeSwgYnV0IEkgaG9wZSB0aGF0DQo+IGFuc3dlcnMgaXQhKQ0KDQpZ
ZWFoIHRoYXQgbWFrZXMgaXQgY2xlYXIsIEphc29ucyBhbnN3ZXIgYWxzbyBoZWxwZWQgcXVpdGUg
YSBiaXQgdG8gdW5kZXJzdGFuZCB3aGF0IHlvdSB3YW50IHRvIGRvIGhlcmUuDQoNCkZpcnN0IG9m
IGFsbCB5b3VyIHJlcXVpcmVtZW50cyBzb3VuZCByZWFzb25hYmxlLCBidXQgYWJzb2x1dGVseSBj
bGVhciBOQUsgdG8gdGhlIHdheSB0aG9zZSBwYXRjaGVzIGFwcHJvYWNoIG9mIGltcGxlbWVudGlu
ZyB0aGVtLiBZb3UgY29tcGxldGVseSBtaXhlZCB1cCB0aGUgZGlmZmVyZW50IERNQS1idWYgcm9s
ZXMgYW5kIHdoaWNoIGlzIHVzZWQgZm9yIHdoYXQuDQoNClNlZSB0aGUgSU9DVExzIG9uIHRoZSBE
TUEtYnVmIGZpbGUgZGVzY3JpcHRvciBhcmUgZm9yIHRoZSBpbXBvcnRlciBzaWRlIHRvIGNvbW11
bmljYXRlIHdpdGggdGhlIGV4cG9ydGVyIHNpZGUuIEUuZy4gdGhpbmtzIGxpa2UgIkknbSBkb25l
IHdyaXRpbmcgd2l0aCB0aGUgQ1BVLCBwbGVhc2UgbWFrZSB0aGF0IHZpc2libGUgdG8geW91cnNl
bGYgYW5kIG90aGVyIGltcG9ydGVycyIuLi4uLg0KDQpCdXQgd2hhdCB5b3Ugd2FudCB0byBkbyBo
ZXJlIGlzIGp1c3QgdGhlIG90aGVyIHdheSBhcm91bmQsIHRoZSBleHBvcnRlciBzaWRlIHdhbnRz
IHRvIHNpZ25hbCB0byBhbGwgaW1wb3J0ZXJzIHRoYXQgaXQgY2FuJ3QgdXNlIHRoZSBidWZmZXIg
YW55IG1vcmUsIGNvcnJlY3Q/DQoNCklmIEkgdW5kZXJzdG9vZCB0aGF0IGNvcnJlY3RseSB0aGVu
IG15IHN1Z2dlc3Rpb24gaXMgdGhhdCB5b3UgaGF2ZSBhIG5ldyBJT0NUTCBvbiB0aGUgVkZJTyBm
ZCB5b3Ugb3JpZ2luYWxseSB1c2VkIHRvIGV4cG9ydCB0aGUgRE1BLWJ1ZiBmZC4gVGhpcyBJT0NU
TCB0YWtlcyB0aGUgRE1BLWJ1ZiBmZCBhbmQgYWZ0ZXIgZG91YmxlIGNoZWNraW5nIHRoYXQgaXQg
aW5kZWVkIGlzIHRoZSBleHBvcnRlciBvZiB0aGF0IGZkIHJldm9rZXMgYWxsIGltcG9ydGVyIGFj
Y2VzcyB0byBpdC4NCg0KSSdtIGNlcnRhaW5seSBvcGVuIG9uIHN1Z2dlc3Rpb25zIG9uIGhvdyB0
byBpbXByb3ZlIHRoZSBETUEtYnVmIGRvY3VtZW50YXRpb24gdG8gbWFrZSB0aGF0IG1vcmUgY2xl
YXJlciBpbiB0aGUgZnV0dXJlLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBDaGVl
cnMsDQo+IA0KPiANCj4gTWF0dA0KPiANCj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LWlvbW11LzIwMjYwMjA1LW5vY3R1cm5hbC1wb2V0aWMtY2hhbW9pcy1mNTY2YWRAaG91YXQv
VC8jbTMxMGNkMDcwMTFlM2ExNDYxYjZmZGE0NWUzZjliODg2YmE3NjU3MWENCj4gDQo+Pg0KPj4g
UmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXR0
IEV2YW5zIDxtYXR0ZXZAbWV0YS5jb20+DQo+Pj4gLS0tDQo+Pj4gIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgICAgfCAgNSArKysrKw0KPj4+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgICAg
IHwgMjIgKysrKysrKysrKysrKysrKysrKysrKw0KPj4+ICBpbmNsdWRlL3VhcGkvbGludXgvZG1h
LWJ1Zi5oIHwgIDEgKw0KPj4+ICAzIGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykNCj4+
Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYw0KPj4+IGluZGV4IGVkYWE5ZTRlZTRhZS4uYjliMzE1MzE3ZjJkIDEw
MDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+PiArKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gQEAgLTU2MSw2ICs1NjEsMTEgQEAgc3RhdGljIGxv
bmcgZG1hX2J1Zl9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwNCj4+PiAgICAgICAgIGNhc2UgRE1B
X0JVRl9JT0NUTF9JTVBPUlRfU1lOQ19GSUxFOg0KPj4+ICAgICAgICAgICAgICAgICByZXR1cm4g
ZG1hX2J1Zl9pbXBvcnRfc3luY19maWxlKGRtYWJ1ZiwgKGNvbnN0IHZvaWQgX191c2VyICopYXJn
KTsNCj4+PiAgI2VuZGlmDQo+Pj4gKyAgICAgICBjYXNlIERNQV9CVUZfSU9DVExfUkVWT0tFOg0K
Pj4+ICsgICAgICAgICAgICAgICBpZiAoZG1hYnVmLT5vcHMtPnJldm9rZSkNCj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gZG1hYnVmLT5vcHMtPnJldm9rZShkbWFidWYpOw0KPj4+
ICsgICAgICAgICAgICAgICBlbHNlDQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJu
IC1FSU5WQUw7DQo+Pj4NCj4+PiAgICAgICAgIGRlZmF1bHQ6DQo+Pj4gICAgICAgICAgICAgICAg
IHJldHVybiAtRU5PVFRZOw0KPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYu
aCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4gaW5kZXggMGJjNDkyMDkwMjM3Li5hNjhj
OWFkN2FlYmQgMTAwNjQ0DQo+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4+PiAr
KysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPj4+IEBAIC0yNzcsNiArMjc3LDI4IEBAIHN0
cnVjdCBkbWFfYnVmX29wcyB7DQo+Pj4NCj4+PiAgICAgICAgIGludCAoKnZtYXApKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCk7DQo+Pj4gICAgICAgICB2b2lk
ICgqdnVubWFwKShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXAp
Ow0KPj4+ICsNCj4+PiArICAgICAgIC8qKg0KPj4+ICsgICAgICAgICogQHJldm9rZToNCj4+PiAr
ICAgICAgICAqDQo+Pj4gKyAgICAgICAgKiBUaGlzIGNhbGxiYWNrIGlzIGludm9rZWQgZnJvbSBh
IHVzZXJzcGFjZQ0KPj4+ICsgICAgICAgICogRE1BX0JVRl9JT0NUTF9SRVZPS0Ugb3BlcmF0aW9u
LCBhbmQgcmVxdWVzdHMgdGhhdCBhY2Nlc3MgdG8NCj4+PiArICAgICAgICAqIHRoZSBidWZmZXIg
aXMgaW1tZWRpYXRlbHkgYW5kIHBlcm1hbmVudGx5IHJldm9rZWQuICBPbg0KPj4+ICsgICAgICAg
ICogc3VjY2Vzc2Z1bCByZXR1cm4sIHRoZSBidWZmZXIgaXMgbm90IGFjY2Vzc2libGUgdGhyb3Vn
aCBhbnkNCj4+PiArICAgICAgICAqIG1tYXAoKSBvciBkbWEtYnVmIGltcG9ydC4gIFRoZSByZXF1
ZXN0IGZhaWxzIGlmIHRoZSBidWZmZXINCj4+PiArICAgICAgICAqIGlzIHBpbm5lZDsgb3RoZXJ3
aXNlLCB0aGUgZXhwb3J0ZXIgbWFya3MgdGhlIGJ1ZmZlciBhcw0KPj4+ICsgICAgICAgICogaW5h
Y2Nlc3NpYmxlIGFuZCB1c2VzIHRoZSBtb3ZlX25vdGlmeSBjYWxsYmFjayB0byBpbmZvcm0NCj4+
PiArICAgICAgICAqIGltcG9ydGVycyBvZiB0aGUgY2hhbmdlLiAgVGhlIGJ1ZmZlciBpcyBwZXJt
YW5lbnRseQ0KPj4+ICsgICAgICAgICogZGlzYWJsZWQsIGFuZCB0aGUgZXhwb3J0ZXIgbXVzdCBy
ZWZ1c2UgYWxsIG1hcCwgbW1hcCwNCj4+PiArICAgICAgICAqIGF0dGFjaCwgZXRjLiByZXF1ZXN0
cy4NCj4+PiArICAgICAgICAqDQo+Pj4gKyAgICAgICAgKiBSZXR1cm5zOg0KPj4+ICsgICAgICAg
ICoNCj4+PiArICAgICAgICAqIDAgb24gc3VjY2Vzcywgb3IgYSBuZWdhdGl2ZSBlcnJvciBjb2Rl
IG9uIGZhaWx1cmU6DQo+Pj4gKyAgICAgICAgKiAtRU5PREVWIGlmIHRoZSBhc3NvY2lhdGVkIGRl
dmljZSBubyBsb25nZXIgZXhpc3RzL2lzIGNsb3NlZC4NCj4+PiArICAgICAgICAqIC1FQkFERkQg
aWYgdGhlIGJ1ZmZlciBoYXMgYWxyZWFkeSBiZWVuIHJldm9rZWQuDQo+Pj4gKyAgICAgICAgKi8N
Cj4+PiArICAgICAgIGludCAoKnJldm9rZSkoc3RydWN0IGRtYV9idWYgKmRtYWJ1Zik7DQo+Pj4g
IH07DQo+Pj4NCj4+PiAgLyoqDQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9k
bWEtYnVmLmggYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oDQo+Pj4gaW5kZXggNWE2ZmRh
NjZkOWFkLi44NGJmMmRkMmQwZjMgMTAwNjQ0DQo+Pj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4
L2RtYS1idWYuaA0KPj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9kbWEtYnVmLmgNCj4+PiBA
QCAtMTc4LDUgKzE3OCw2IEBAIHN0cnVjdCBkbWFfYnVmX2ltcG9ydF9zeW5jX2ZpbGUgew0KPj4+
ICAjZGVmaW5lIERNQV9CVUZfU0VUX05BTUVfQiAgICAgX0lPVyhETUFfQlVGX0JBU0UsIDEsIF9f
dTY0KQ0KPj4+ICAjZGVmaW5lIERNQV9CVUZfSU9DVExfRVhQT1JUX1NZTkNfRklMRSBfSU9XUihE
TUFfQlVGX0JBU0UsIDIsIHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9zeW5jX2ZpbGUpDQo+Pj4gICNk
ZWZpbmUgRE1BX0JVRl9JT0NUTF9JTVBPUlRfU1lOQ19GSUxFIF9JT1coRE1BX0JVRl9CQVNFLCAz
LCBzdHJ1Y3QgZG1hX2J1Zl9pbXBvcnRfc3luY19maWxlKQ0KPj4+ICsjZGVmaW5lIERNQV9CVUZf
SU9DVExfUkVWT0tFICAgX0lPKERNQV9CVUZfQkFTRSwgNCkNCj4+Pg0KPj4+ICAjZW5kaWYNCj4+
PiAtLQ0KPj4+IDIuNDcuMw0KPj4+DQo+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
