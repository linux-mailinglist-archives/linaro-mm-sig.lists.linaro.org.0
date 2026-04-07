Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKkSAPG61GlRwwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Apr 2026 10:06:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 571E93AB177
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Apr 2026 10:06:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 688F640470
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Apr 2026 07:58:05 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012017.outbound.protection.outlook.com [40.107.200.17])
	by lists.linaro.org (Postfix) with ESMTPS id 499A63F96E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2026 07:58:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=TrISM8vO;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.200.17 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kJZLhx/2a2P9Wb0COhy0YJzEsV+vLBy904tZ0OmAha33/gGNYEaxPhCFrPcwJdn4Bi52oPw+pmcvVtnREftdaoOIYG9xN2zZzgdmNt5OqeL6Y0C2HlhZIxtjy44jDcQbYx6fpGimYAljhETsX7eCMUWGryMPJturHYYZuPZxkbU3Myyrnck0dduBfNgSzEWoIoUA7HUq+fiGK3tpkke2/b7RNiKC4rT3hJe+f8FhGMLfjJSLBwt6XoEOwW+Gr0wA3tVS7O3fqhmxR68DtUV7ZC9aRYXyTcQPWHsFdnGJjklDmR9iONwL5j9R59sWu+ywL8SlCuBujI78vWpyNRbzsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=52fT8NQ0UBtszwl+Q3sXubjCt0TeMB/mkCRSG6WdtEc=;
 b=MyptjJDRMs0TSyWnahw4ioknPvD0zSplKFICesCF1p5I11WRjTZ/wX0tOFe1frvta+Jt5T7weLLH3A/jEaiGp7S2DjzFAXthWwV2G/8yEU0CXf9FzvDUyGoxkE/qY+BNyw+je5eKmfYaQlUA1Jj+MrwVeWB4L/NrpL7xc5+SutHDY1V6yacEn6HT7fZAC3BI8bdXoJXudxT1aY/MKYQAzKZL6T5LJpakEHiSw3UFNKbE6o2F3jPZ+6mPF16AvjbG21ErNTlQqpKUQHvBdZ1bU68atEsKgZ4cx2GySwaLZNBo7cNnqSOU5R7NQPV/3tCbbAbeb2Xfd0G6+PuTJ5bHuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=52fT8NQ0UBtszwl+Q3sXubjCt0TeMB/mkCRSG6WdtEc=;
 b=TrISM8vOyN6oQ2bm4XZWOvOhkE6xC4of1hHwpdbttH6darkG50MZ7q6F8IxdAybdk/ZaXzNFX84GyUfYj9W1op7/7SRONDmhWJTs3eJe7279AdOtNgSqFNyIwEMw49sr0xIEb+tVj9OxVHPEohqHHxoYYCeHc8Q+q4ZnvfsKkZA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM6PR12MB4484.namprd12.prod.outlook.com (2603:10b6:5:28f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Tue, 7 Apr
 2026 07:57:59 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 07:57:59 +0000
Message-ID: <a6d1c89a-3c71-4e06-adcb-56595071dcc2@amd.com>
Date: Tue, 7 Apr 2026 09:57:55 +0200
User-Agent: Mozilla Thunderbird
To: "Barry Song (Xiaomi)" <baohua@kernel.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20260406214938.24142-1-baohua@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260406214938.24142-1-baohua@kernel.org>
X-ClientProxiedBy: FR4P281CA0147.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b8::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM6PR12MB4484:EE_
X-MS-Office365-Filtering-Correlation-Id: 37cdf0eb-c758-466a-cd46-08de947b62f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|1800799024|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	+5r2qHoE0f+7vL0n5K+/bwytGjMmghz5LHvjJC2hK3TJTZTYH/lchGqRXUk3ijec9K9TO8womLsCtZpNOqmuh0HdZV7TGeWURoX73Rhp9kipnXF6KiQc0O3J4TE2B0r3jeluJBDuy6YvViwRZKw94XnS/jgDrUvcIOLpZBMJuMmEddNwieodtJ8fSMAh2FYwNuvDY48uWH52w0mH3yC2S6kCzX9iBmxDcvXse50VLJWxEKh0DbOO0NcEZt3EDAOhRB5kT0FwpU1werz4377CYLNwoe6SsP5InNptRGeJBN0l/ir5wd9/h+JX6K+hEffZnQvfCuJMNUE2aVYKmJA40hrT9evKLLeUPEKYjh42MQns7coL5d1XE4w3lxQ7zFprFjz2IlWNnZbgi9PlluIewNoMShHlUJxhg4Opi0XTdn57xZ57KlCHx/TzRgzAG9Qlq1M/sgjZCvOjya2iJPUJyayb7tdz5xcMlHbJ1m2HSh2wv4unyKgJSNgCdRFdLFCCxEV+MNMcwre4PAO4/07hjKogW4wYcmZktiOhbanP3N9FHMLu0Px8pQNFjW64r4qmuRyitUFybF2rFvG7Iya5ES/RLkrIY5LMy+z+5qsO5yiZKQP17LcPMF3JXFoW3tm0aukxQKJNbmPt8m8XnlIvV8w6fkxdyY1rAyfGKRl+aRuc1/devvp9rUujrPxFD/k39Jc+rpj/TGzv/tbs1+ti10Bpo9uiySptoIETY9XsMR4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WCtwbHNRam14Mnc1b3VYODB4cFlrRkpSamhJcUY1VW1GOStJSUhHM3ZTaWhp?=
 =?utf-8?B?WWVVLzNKNjlhQjZzdFFqZ1M0WTYyZVhKOTdsMmlRb3Yxd0ZSeEE0V3BIQ24y?=
 =?utf-8?B?czhFeGszQmlobzBqMmdNZHliZXJFUUJQaWxoWU9lcEVXUkliRzgxUFV3dkRh?=
 =?utf-8?B?QUExckg5ZWxBR1lGTk5jek56WjFUbENUK3FrY1h3WlEySSs3OHNrL3BmckE0?=
 =?utf-8?B?cGlLNkJXV1daMlBuNXp1akQyWnFYckt5Tk5xMEIxcFRINUx4eGV4bnVNSEU2?=
 =?utf-8?B?alNPYmluYmRWcFpjNHF0RU4zQjRPVkhBLzBQUnRZdW1Uc0trRThJRGdFTUdJ?=
 =?utf-8?B?MGJldkpvVnBSQzNBNXI2S3ZuUmlZZ1RYaGVmR29XYjYxbmdwODdqUVRUenVB?=
 =?utf-8?B?SHNaWWRsNnE2S2dmUWJyMXhORUpsQUtOQnAvWm5Ha3hkdXU0Y3RhYU9idWZv?=
 =?utf-8?B?UlUwbEp4UmlmbW5EMXNSZ2dPc29ZaXJkNzVsb0xzWk4reXZEVzN0dE9lZUk0?=
 =?utf-8?B?NDluYUhpYklVckhBYzMzeTkrdHFlL3dPVnFJeFVnWWJna0o1ZnhSUk9tamxS?=
 =?utf-8?B?dXR4RlJEZ2thcFJVY3RCb2tGY0RCOWZJYXJOeW9icG9mcmJhN3piR3BOYlN2?=
 =?utf-8?B?TGgyRFk0SVVFWHhiSjYwSzk4Ni84YldKN2NGQ1dtMklGTXY2MlRLSDdjY2k1?=
 =?utf-8?B?bkZpaUw2bGF6Nkd4MjBCa3VGQzVIV2JTV2xsR0FKcHo2VHczN1dNTGswNFYx?=
 =?utf-8?B?dE5ic25FNmk2c3dlZlIvV2psWitFbFgzN2hwMXRHcGVPUStsY1EvNFJmdEV6?=
 =?utf-8?B?WlVmMTJaa1padlhyYUI2OGJJZW9HZVAxTlVJbjcvcHBaemltNi9BYzFuYVFp?=
 =?utf-8?B?VUlWYWZLc0hUUXlEbE10QWlCOWtFN280c2VNMHN6eDIzTjkrSklqYVg5dENs?=
 =?utf-8?B?ZlQ5VHJIWVFuSjN6Q3ZrU1hZMzdiWmI4VmlVb3V4MTlMbmxVWTQvMlNSbHRj?=
 =?utf-8?B?WmxQZk1VU0RsOWRpQkJDVXpuSXhLQ2N2RjFEWU5veVNwMHNRZkRzZmovdGNF?=
 =?utf-8?B?K0FKN2JUSThsaU1zbWd0amRvbVlhQnpRbVdxSkdDM0tSOU1jL1cydjU3OVE1?=
 =?utf-8?B?UXI4MWRSeGRldTZZZC9ueis2ZDVYYWVxdFdSaVE2ZnVXR1JHRHltZ3lpSzFJ?=
 =?utf-8?B?L2JCR2phSkNQLzFQbFlRK1J2aDMyZjZZKzI3aUE3aDZ5cmhnM2xHaElwdmhO?=
 =?utf-8?B?aXU1ZTYrczQzc0VDTVhQd0RDV0FERTF1TWJYdVg1d2RsV3ZleTFpVlN2VTd5?=
 =?utf-8?B?bWxHZ0FRdmJQbjlNQXB3WUc0OXZNcGJSbWorM2NsZXN6NFpISnVHWmFIcEsw?=
 =?utf-8?B?KzZBcHZvajRsb0J1K0tWbi9qYkJQVkwyMWppZ2xsa2NGenJuaGl6MGFPaTlY?=
 =?utf-8?B?b2dadWlCaCtuRC9INVB1cnk5RjlVRWxuV0RQZkYvZHJCVzZhVTcxeStkQVRB?=
 =?utf-8?B?NmpoYUhNRmFUVmdZVHNyT3FqYzE3SW02dC9MelNYWUxyVXVFc0pOTFVCOTBQ?=
 =?utf-8?B?VG0wTUJHUEFPL0pIdldUZkxIUm1nVUFXaElJb3A0YTVNQkhTVGRDQjFaVTYz?=
 =?utf-8?B?SWpHdVpuWHB4dUxyV3hHQkM4YmkydXlOLy9JOHNERFAyTDV6cFVYQVV6MVht?=
 =?utf-8?B?TnIrQjNmRnlHY21TN3VsZlVvRytCUURQZ09WbFdJN0djUUJNdXQ2SVJMV2FE?=
 =?utf-8?B?OHFZUkFqcy9Sb2F5N3loR3ZkcVlLZG1MdHBBMTYyOTU0MXZoV3N4dkZFWm90?=
 =?utf-8?B?VmdpbDJocWZna1dhd1hwb2V3WnlrUXZJa0p3blVEYkRnRjJ6ejZ1eFFtMEFP?=
 =?utf-8?B?VnVaL3IwYmFQRVJlNndnTFVzSWpDK2JMOStTYzVtaUFmMzU0ZkVLK0VBZ3V0?=
 =?utf-8?B?MGluVGk4dXZxRk9PY1FYcWdnUE5LeFhIT0p0K21zY0tsK25QbzR6TktHQjc5?=
 =?utf-8?B?a0t6NWZ4YlFJS0FIZi9BWmRDeWZNODdQZ2dFc3V0Ung0Q25WS3h0OEhWVXZW?=
 =?utf-8?B?d0VSckZVQUpjT1Z0OUU0VTJMMTE4cVF0bUN3NnVzbm1kQXNNK0xJYzhHV3V6?=
 =?utf-8?B?ZjdBWFQ0eHJjMDVOMGFCaDVsQVlSQnJxL21Ra3NhRjBzbXl0Ymt0TXNubkZm?=
 =?utf-8?B?ZWN4WWY3d3NOL1VxYmZxeVU5bEYrUjJNR0hkZko0N1pJS1hLM1hYUXQ3NEN4?=
 =?utf-8?B?dnQ3WUxmUHZoWUhleDgxNkw3NmJFSEZMam1BVnFUMzd0RGlVVjdLM0IvekVR?=
 =?utf-8?Q?UAPUV08IEuH6nZzb0m?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37cdf0eb-c758-466a-cd46-08de947b62f5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 07:57:59.6897
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wjc/X75ZsfO8XkGD/zigEVoUJbC7w9u01pcn4K0HO6ENo+q7dsrlzJSHWaVilG0X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4484
X-Spamd-Bar: ----
Message-ID-Hash: WPOJWR2G6MTCU75RDSERBYQAN4UEE425
X-Message-ID-Hash: WPOJWR2G6MTCU75RDSERBYQAN4UEE425
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Xueyuan Chen <Xueyuan.chen21@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: Optimize sg_table-to-pages conversion in vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WPOJWR2G6MTCU75RDSERBYQAN4UEE425/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,body];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,linaro.org,collabora.com,arm.com,google.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_SPAM(0.00)[0.247];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid,arm.com:email,collabora.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 571E93AB177
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC82LzI2IDIzOjQ5LCBCYXJyeSBTb25nIChYaWFvbWkpIHdyb3RlOg0KPiBGcm9tOiBYdWV5
dWFuIENoZW4gPFh1ZXl1YW4uY2hlbjIxQGdtYWlsLmNvbT4NCj4gDQo+IFJlcGxhY2UgdGhlIGhl
YXZ5IGZvcl9lYWNoX3NndGFibGVfcGFnZSgpIGl0ZXJhdG9yIGluIHN5c3RlbV9oZWFwX2RvX3Zt
YXAoKQ0KPiB3aXRoIGEgbW9yZSBlZmZpY2llbnQgbmVzdGVkIGxvb3AgYXBwcm9hY2guDQo+IA0K
PiBJbnN0ZWFkIG9mIGl0ZXJhdGluZyBwYWdlIGJ5IHBhZ2UsIHdlIG5vdyBpdGVyYXRlIHRocm91
Z2ggdGhlIHNjYXR0ZXJsaXN0DQo+IGVudHJpZXMgdmlhIGZvcl9lYWNoX3NndGFibGVfc2coKS4g
QmVjYXVzZSBwYWdlcyB3aXRoaW4gYSBzaW5nbGUgc2cgZW50cnkNCj4gYXJlIHBoeXNpY2FsbHkg
Y29udGlndW91cywgd2UgY2FuIHBvcHVsYXRlIHRoZSBwYWdlIGFycmF5IHdpdGggYSBpbiBhbg0K
PiBpbm5lciBsb29wIHVzaW5nIHNpbXBsZSBwb2ludGVyIG1hdGguIFRoaXMgc2F2ZSBhIGxvdCBv
ZiB0aW1lLg0KPiANCj4gVGhlIFdBUk5fT04gY2hlY2sgaXMgYWxzbyBwdWxsZWQgb3V0IG9mIHRo
ZSBsb29wIHRvIHNhdmUgYnJhbmNoDQo+IGluc3RydWN0aW9ucy4NCj4gDQo+IFBlcmZvcm1hbmNl
IHJlc3VsdHMgbWFwcGluZyBhIDJHQiBidWZmZXIgb24gUmFkeGEgTzY6DQo+IC0gQmVmb3JlOiB+
MTQ0MDAwMCBucw0KPiAtIEFmdGVyOiAgfjIzMjAwMCBucw0KPiAofjg0JSByZWR1Y3Rpb24gaW4g
aXRlcmF0aW9uIHRpbWUsIG9yIH42LjJ4IGZhc3RlcikNCg0KV2VsbCByZWFsIHF1ZXN0aW9uIGlz
IHdoeSBkbyB5b3UgY2FyZSBhYm91dCB0aGUgdm1hcCBwZXJmb3JtYW5jZT8NCg0KVGhhdCBzaG91
bGQgYmFzaWNhbGx5IG9ubHkgYmUgdXNlZCBmb3IgZmJkZXYgZW11bGF0aW9uIChleGNlcHQgZm9y
IFZNR0ZYKSBhbmQgd2UgYWJzb2x1dGVseSBkb24ndCBjYXJlIGFib3V0IHBlcmZvcm1hbmNlIHRo
ZXJlLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBDYzogU3VtaXQgU2Vtd2FsIDxz
dW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4gQ2M6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1p
bi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPg0KPiBDYzogQnJpYW4gU3RhcmtleSA8QnJpYW4uU3Rh
cmtleUBhcm0uY29tPg0KPiBDYzogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCj4g
Q2M6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+IENjOiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFh1ZXl1
YW4gQ2hlbiA8WHVleXVhbi5jaGVuMjFAZ21haWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBCYXJy
eSBTb25nIChYaWFvbWkpIDxiYW9odWFAa2VybmVsLm9yZz4NCj4gLS0tDQo+ICBkcml2ZXJzL2Rt
YS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyB8IDEzICsrKysrKysrKy0tLS0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvc3lzdGVtX2hlYXAuYw0KPiBpbmRleCBiMzY1MGQ4ZmQ2NTEuLjc2OWYwMWYwY2M5NiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMNCj4gKysr
IGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMNCj4gQEAgLTIyNCwxNiArMjI0
LDIxIEBAIHN0YXRpYyB2b2lkICpzeXN0ZW1faGVhcF9kb192bWFwKHN0cnVjdCBzeXN0ZW1faGVh
cF9idWZmZXIgKmJ1ZmZlcikNCj4gIAlpbnQgbnBhZ2VzID0gUEFHRV9BTElHTihidWZmZXItPmxl
bikgLyBQQUdFX1NJWkU7DQo+ICAJc3RydWN0IHBhZ2UgKipwYWdlcyA9IHZtYWxsb2Moc2l6ZW9m
KHN0cnVjdCBwYWdlICopICogbnBhZ2VzKTsNCj4gIAlzdHJ1Y3QgcGFnZSAqKnRtcCA9IHBhZ2Vz
Ow0KPiAtCXN0cnVjdCBzZ19wYWdlX2l0ZXIgcGl0ZXI7DQo+ICAJdm9pZCAqdmFkZHI7DQo+ICsJ
dTMyIGksIGosIGNvdW50Ow0KPiArCXN0cnVjdCBwYWdlICpiYXNlX3BhZ2U7DQo+ICsJc3RydWN0
IHNjYXR0ZXJsaXN0ICpzZzsNCj4gIA0KPiAgCWlmICghcGFnZXMpDQo+ICAJCXJldHVybiBFUlJf
UFRSKC1FTk9NRU0pOw0KPiAgDQo+IC0JZm9yX2VhY2hfc2d0YWJsZV9wYWdlKHRhYmxlLCAmcGl0
ZXIsIDApIHsNCj4gLQkJV0FSTl9PTih0bXAgLSBwYWdlcyA+PSBucGFnZXMpOw0KPiAtCQkqdG1w
KysgPSBzZ19wYWdlX2l0ZXJfcGFnZSgmcGl0ZXIpOw0KPiArCWZvcl9lYWNoX3NndGFibGVfc2co
dGFibGUsIHNnLCBpKSB7DQo+ICsJCWJhc2VfcGFnZSA9IHNnX3BhZ2Uoc2cpOw0KPiArCQljb3Vu
dCA9IHNnLT5sZW5ndGggPj4gUEFHRV9TSElGVDsNCj4gKwkJZm9yIChqID0gMDsgaiA8IGNvdW50
OyBqKyspDQo+ICsJCQkqdG1wKysgPSBiYXNlX3BhZ2UgKyBqOw0KPiAgCX0NCj4gKwlXQVJOX09O
KHRtcCAtIHBhZ2VzICE9IG5wYWdlcyk7DQo+ICANCj4gIAl2YWRkciA9IHZtYXAocGFnZXMsIG5w
YWdlcywgVk1fTUFQLCBQQUdFX0tFUk5FTCk7DQo+ICAJdmZyZWUocGFnZXMpOw0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
