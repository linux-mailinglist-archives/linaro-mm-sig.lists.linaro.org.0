Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHwaHYDV6GksQwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 16:04:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E654470A5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 16:04:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA53B4050A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 14:04:41 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011003.outbound.protection.outlook.com [52.101.52.3])
	by lists.linaro.org (Postfix) with ESMTPS id 17A743F727
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Apr 2026 14:04:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=PonzqXL3;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.52.3 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NSNZspWzT7HiAGdzYO7kUJ6GuLsmtRMcoSt2lXTI6D44HqVjpabyObLKPjoNqBoy3DR98sdVCKjtJKB1Cy8DPvjRrVN7B1iEgWZFCXSSQGocJ6rC3cvztsOWuudnZDD7v3rx8dKYVI2XeC4Ih/pCy8VzeGXJI7rimHJG8sk55Wou+upJFF4Klh2pkSK3LmVxtPmXyiW8BmT+fBSHIbnNhbVIzBJjlN4bwUAd7QYf0ugWqMx4pNjX3FdweK/kp9zprR0Tz71kxSot3LJU/D3qQTAJPDiKZKnhcpKshihM+umhszIjtwGFw7RmxPN0BQn1J8ywKZti9waix83O6QwgNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W08rXg2JXb27CWxBq1GMWSPCrtSBOL1NfSnyWZ7xGtA=;
 b=dJpK2O6PcPEiGogFJmK/XNqx8HHbPV4cKtyQ2jPdK4jDUFvHZcFrY0EfDh8GaTC5ZVHpg+qkoveKLGB5k1n4bzEtv7iBd4JvwSq8ydp99VhOb7RBqgFN+HIqtvZ0DyuoLhlaiIFUZaHnA1j7qC59rc4ikM1K3WuCGggi0o8/XsU92lZbYNsqt+BIsdCubeVrkneOwVNEtwYwClUuvfgWMuHwk8gJJmTlCVDE/Jdfp3schUcH1cGzJq0HkgzXf4D+p7+BdCggWwM1ptC7Ynpj0IAw2McRjfJGXi3naxDZLuy5yf9UyjHs8y4AB0mBtLl7H8lrDFI+8umJuoeKWgQYNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W08rXg2JXb27CWxBq1GMWSPCrtSBOL1NfSnyWZ7xGtA=;
 b=PonzqXL3TshIhODa1WsJUq1aoOkcjCy7tFzxjUftIAc92b73Y12E2bkEixCBZj6wiN23yAEVCe2EiylNb2iQCNbrXe3Agcd1jwyP7Io9nVDCcIW3hvmCtyrjPS5zL+otF98TnrfFOaud5ULpKd/MMNulNez7i6azgbeIXZI+CoM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB6489.namprd12.prod.outlook.com (2603:10b6:510:1f7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.12; Wed, 22 Apr
 2026 14:04:31 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9846.016; Wed, 22 Apr 2026
 14:04:29 +0000
Message-ID: <e67426b9-4ded-4f6c-8309-7f847adb4540@amd.com>
Date: Wed, 22 Apr 2026 16:04:19 +0200
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>
References: <21-v1-b5cab63049c0+191af-dmabuf_map_type_jgg@nvidia.com>
 <c413710b-4c28-4ed8-88ec-aeb8c4482011@amd.com>
 <20260413121628.GE2588311@nvidia.com>
 <f6d38a08-009c-4efe-9dc3-6bcf00ac35f7@amd.com>
 <20260422115306.GI3199414@nvidia.com>
 <fd8065ce-fd0e-4df5-9c80-8e9603657cfe@amd.com>
 <20260422131337.GJ3199414@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260422131337.GJ3199414@nvidia.com>
X-ClientProxiedBy: BN9P223CA0030.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:408:10b::35) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB6489:EE_
X-MS-Office365-Filtering-Correlation-Id: 2add4dbd-da79-4f21-1627-08dea0781203
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|1800799024|376014|366016|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	RfTLSNZT1IzYxVr1X548uhzClTsv0H8JOYGrUSRB57CYKAapoRXRPIYBEVuRb+Bs59j9/Ok8/D7xxEMptDFy2anjjsYUfV0Z8V/peW/1ZMzjxtuQktHgnHynghWj0ciLQsPbw889hT0F+ZlGA1w1B8SPTM60REd8qwnymOjZvfRWYCXQTX5TDX+bJmSVXZUwM1ybql4KG+65ACFn8YXrExYBwFtp/feYi5c+fY93AOiNGI90owQAy8gs2dbwax8JR3J8xw1HyrUv+jp3EsApUJ7uSncWx2bJsH7q+n15kVB1dW6YeCafUpJEkW2st35Dl3vy5pzYjxliHzs37FQ1mwv4B0MxfMAcOo0W9cp0AdKh1Fn6E4JNg1YQyvAI7VKE4wTA1QLuejQrJVDIfLPChIsihVsf3CQVJikS1qmcykhGWwXyVTYOfBYhviYuYhNiF0bEgGtQXOIqLXig6OJcP2rh081Sm95ROonK0gcYGdX2IHfBZA4c4vg3zCuuoSkjXJoOUSO1nmINPEHujb4JZmgOU8xcfMY4n9a1TPMhb7NpiQ4nGO67q3761SY2i2VUplff029jvxNJDeF4Jff4RYQqDR471Kui3SovTsoPLo7pO8lAxV5ChEiW265wB4LsZ7DKL0z2dXREMZLQjPihdhvZNqNEw0JSfLY3A+5dgZKZ2dIxLhXG/bqlVPG26B6K5czWgPUARZ48cEeUhch6FaONYy2zaY6cRH1ial+FtHQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SGkxNnhEdkdYK1FyL0xlTmx5K1R6N3NoUEVRTGpFT0VFbU4wLzFlYWVHMW44?=
 =?utf-8?B?S2oxUXQvSEIxbmZmNlFXZXN6SGltK1JBd251QmlWeVhCVjU2UXlPbGIxT3NM?=
 =?utf-8?B?UFluMm8zamZnTjJRSFpzNmhSUzh1L0dtU29EZHlNUkJEcVBOWHptZGtCcUpa?=
 =?utf-8?B?ZHJSaElHRmpMbXNJMkVJRmJVUnBOU2ljRGpDRzc4TWJKTmNVd2lHeW5EeE14?=
 =?utf-8?B?M0lyOEc3aU5iTkJndW5MMVYxa01yTktDTXIray9NdjJPS3VyYTBzZFZkaGxm?=
 =?utf-8?B?N1hxaG1zVFQ4NU5MVUExcjh1ZDBUdWJtRnFlUGkwUkZ6b3ZPaGhmcmNZQXFD?=
 =?utf-8?B?d3NvY3llVGR0U29iMGVoRjlwQTJJRzRMMVdRS1c2WEVOZjh4NjQvSktoSzVF?=
 =?utf-8?B?anpTYWVWdmpWekdIc1RWaWhjTFJ0b2RDdTlOTW1RdkxGeEpmTjcxUHNGUmlj?=
 =?utf-8?B?K3NSSC9xSXRwdC9rUnRITlhhQkwvdjM4QzBuYTVtaWtJM2pwd2oxUGo3dlZO?=
 =?utf-8?B?cTZnQXh1MUFZMDhad0dsUVhrd1V3a2dJM1JLOFM1OXpvQ3Q1TUF5aFd2eDhJ?=
 =?utf-8?B?MEp1a1BNcFZxK1lTY2lWWVFmNWRYTFJid0d1YllBUWVNcVZSZjZRdEFHK0hR?=
 =?utf-8?B?MzdFOHUvQnkzSFgzSGM1TDdtdmVvWlBnWEtzVkhKejUwY2JQM1ptY3JGaDVB?=
 =?utf-8?B?TklmOS94MFhRb0hKNkJCTzNsckJmK0Vidkt1ZFNFWXFqZ2hqRTdsd0RBU2t4?=
 =?utf-8?B?eC9ySElLbzNISlVKNU1qU3V3cmtLNkpia1N6VG9ZdmdSMlZJbHlWQ3BHR0xl?=
 =?utf-8?B?cUVudWV1amJvcXF0SVFyMVhObDBzdGQvS2poTHM3T0hYbHREM2ovcUxtOEdH?=
 =?utf-8?B?VUhuRjFxcUpLT2V2NzN6RGh0UHd1blVXQ0U2UjhUd3U2TWdhRzJPbEdKS1Y2?=
 =?utf-8?B?VjBRdzVMR1Q1WFpVWTNjUG9ZTjVKS1FyOEdoM0x3VG9YNG1FVjJsQ3RHRzNL?=
 =?utf-8?B?L0VrbVZ5ZEtJNTZTVGdJL2VteUVuZTU0bG9CL1lkclFQVkt3VWdFaVIycis2?=
 =?utf-8?B?NlBNV2dMcmpKN1VBYVF3a2I2dy9MR29uWVdHcWJVc2RRMURNVlZYRWlqbm1x?=
 =?utf-8?B?bmRNVG1lKytrVmp1TXVtTDV2UFVsOUxrSHY3STEzZlFmZVM1dEQxM1BFbHI1?=
 =?utf-8?B?Qi9sWC9od0IvZVhIeVhSUnFsUVlqb2FHaThFYU8vNitaRkx6RmlWR3ZucnV4?=
 =?utf-8?B?SXMzamtNTURyYnh0MFBwQ3RVQVovNUNibXdvMlh1Y0dwRW1tN0drdmtLTlE4?=
 =?utf-8?B?aGg1SVU1RXVub3hzZFBGMHZuMHgvWVc5UHBVR0hXUWxlMmluZkdwS0VLOFpl?=
 =?utf-8?B?RDcvNHFKUytLS2xmaEFDbVZjTm1wYUFpd0E0cHljTStNbVEzYmlKVkdBdTBr?=
 =?utf-8?B?LzgrSTdKcTR1dnBKVTVjOE9CSGV5bkpLT040S0hsL3piQkRuUjZyVHdsaE5T?=
 =?utf-8?B?ODY5akNTZWt6WFR0T0pFczZZcGtKZzk2cUdKREVWQi9LV2VmbDMxWm1KeFp2?=
 =?utf-8?B?aWNVbGVPRERkcWhzTnpFRExTcUVIOTQ4bVpVQktmT1BteVZUQkFPRXI3UE1J?=
 =?utf-8?B?TGRKZFJ3bFBub1hTYnltUm93OFVmMk92UlJwWWVTaEw4cCtTdmVrL1g5d3Rq?=
 =?utf-8?B?OHkwZHp5cXF5MEgvYXN4NnFkcTN2QnNtQ1pOSGZEa0pzN2t6UmU1cVlYVzRS?=
 =?utf-8?B?Y2FQZG1PT0JXQ3dGWGYvb3kxa0NvRklHMUxFQ0tyUWp6dWxWY1AvNWJDR3p0?=
 =?utf-8?B?Y0pkTHJVRldkWHAxaXVPci9ZWXphZTdWcTYrNXRibmdIeiswRlhOUFhzMUhU?=
 =?utf-8?B?MXZPNFhwM01TY2VaSXhDTjVhMGkzWDZhamNKWGlCNGlnRnNzaVFzLzZlOXkw?=
 =?utf-8?B?WUJjTmRmUm9aUUNjN0ZZYVVYeGZKLzdKYUIreUltdlM5R1daakVzRTlEbW1L?=
 =?utf-8?B?YXduamcxVjcrcW45QjRuTFRDVkNWbGk3dzNRSEhZcmdScEoxWlpZcG8vUHhX?=
 =?utf-8?B?bGNaOUhzYVhSb1hGSjBxeFRIV0JHVkw5dUI3MlNLckJqV2JnVXp0eWFYQnVQ?=
 =?utf-8?B?M3QrUkJ1aGNRSUx4UjY5bjFucVl5V0dORXZHWWdibGdmK0hUdHN3OVhuZ0Mv?=
 =?utf-8?B?czVIV1pGSFpiczM1dXVNY3ZDK1J0ZWQ4T3ZRak9zb2RjWFYvMXB3anhLbTJO?=
 =?utf-8?B?bGFrT0tPOHEydlVOMDBESXUxSTZ3bjg2bjh5R0dGRzhlVlhpUzJkMVh6QTFB?=
 =?utf-8?Q?rUVvXPDnWAmZtvr041?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2add4dbd-da79-4f21-1627-08dea0781203
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 14:04:29.6023
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /YzlEaNLvCAbzrECi/swVyGc0XqF4yBHARatujO3tXScsnHzDMMOgR+Ayn/j5IOf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6489
X-Spamd-Bar: ----
Message-ID-Hash: QSVJAEAON4R4MP5BCL5N4GRJHCOFHXMG
X-Message-ID-Hash: QSVJAEAON4R4MP5BCL5N4GRJHCOFHXMG
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, iommu@lists.linux.dev, Kevin Tian <kevin.tian@intel.com>, Leon Romanovsky <leonro@nvidia.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Matthew Brost <matthew.brost@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Hellstrom <thomas.hellstrom@linux.intel.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 21/26] dma-buf: Add the Physical Address List DMA mapping type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QSVJAEAON4R4MP5BCL5N4GRJHCOFHXMG/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MAILSPIKE_FAIL(0.00)[44.210.186.118:query timed out];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	NEURAL_HAM(-0.00)[-0.951];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: E0E654470A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8yMi8yNiAxNToxMywgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBXZWQsIEFwciAy
MiwgMjAyNiBhdCAwMjozOToxNlBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+
IENhbiB5b3UgYmUgbW9yZSBzcGVjaWZpYyBwbGVhc2UsIEkgc3RpbGwgaGF2ZSBubyBpZGVhIHdo
YXQgeW91IGFyZQ0KPj4+IHRoaW5raW5nIGluIHRlcm1zIG9mIGFuIGFjY2VwdGFibGUgaW1wbGVt
ZW50YXRpb24uDQo+Pg0KPj4gTGV0IG1lIHRyeSB0byBkZXNjcmliZSBpdCBkaWZmZXJlbnRseToN
Cj4+DQo+PiBUaGUgaW9tbXVmZCBkZWFscyB3aXRoIGlvbW11X2RvbWFpbiBzdHJ1Y3R1cmVzIHdo
aWNoIHVzZXJzcGFjZSBjYW4gbWFwIGRpZmZlcmVudCB0aGluZ3MgaW50by4NCj4+DQo+PiBTbyBv
ZiBoYW5kIEkgd291bGQgc2F5IHRoYXQgYW4gaW50ZXJmYWNlIHRvIG1hcCBETUEtYnVmIGludG8g
c3VjaCBhbg0KPj4gaW9tbXVfZG9tYWluIHNob3VsZCBsb29rIHNvbWV0aGluZyBsaWtlIHRoaXM6
DQo+Pg0KPj4gZG1hX2J1Zl9tYXBfYXR0YWNobWVudF9pb21tdShzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2htZW50LA0KPj4gICAgc3RydWN0IGlvbW11X2RvbWFpbiAqZG9tYWluLCB1
bnNpZ25lZCBsb25nIGlvdmEsIHVuc2lnbmVkIGxvbmcNCj4+ICAgIG9mZnNldCwgc2l6ZV90IHNp
emUsIC4uLik7DQo+Pg0KPj4gVGhlIERNQSBidWYgZXhwb3J0ZXIgdGhlbiBtYXBzIHRoZSBpdHMg
ZGF0YSBpbnRvIHRoZSBpb21tdV9kb21haW4gYXQNCj4+IGlvdmEgc3RhcnRpbmcgd2l0aCBvZmZz
ZXQgZnJvbSB3aXRoaW4gdGhlIGJ1ZmZlciBhbmQgc2l6ZSBudW1iZXIgb2YNCj4+IGJ5dGVzLg0K
PiANCj4gV2VsbCwgbXkgZmlyc3QgcmVhY3Rpb24gaXMgdmVyeSBuZWdhdGl2ZSwgdGhpcyBzdWdn
ZXN0aW9uIGlzIGxlYWtpbmcNCj4gZGVlcCBpbnRlcm5hbCBkZXRhaWxzIGxpa2UgaW9tbXVfZG9t
YWluIG91dCBvZiB0aGUgc2luZ2xlIHBsYWNlIHRoYXQNCj4gbmVlZHMgdGhlbSAtIGlvbW11ZmQg
LSBpbnRvIGFib3V0IDYgZXhwb3J0ZXIgZHJpdmVycy4gTm90IG5pY2UuIEkgaGF2ZQ0KPiB0aGUg
bWlycm9yIG9mIHlvdXIgY29uY2VybiB0aGF0IEkgZG9uJ3QgdHJ1c3QgRFJNIGRyaXZlcnMgbm90
IHRvIGFidXNlDQo+IHRoZSBpb21tdV9kb21haW4gcG9pbnRlciBpbiBzb21lIHZlcnkgY3JlYXRp
dmUgd2F5Lg0KDQpZZWFoLCBvZiBjb3Vyc2UgdGhhdCBhcmd1bWVudCBnb2VzIGludG8gYm90aCBk
aXJlY3Rpb25zLg0KDQpUaGUgcG9pbnQgaXMganVzdCB0aGF0IHdlIGhhdmUgbXVjaCBtb3JlIGlt
cG9ydGVycyB0aGFuIGV4cG9ydGVycyB0byBoYW5kbGUsIGFuZCBmcm9tIGV4cGVyaWVuY2UgaXQg
d2FzIGFsd2F5cyB0aGUgaW1wb3J0ZXIgd2hvIG1lc3NlZCB0aGluZ3MgdXAuDQoNCkJhY2tncm91
bmQgaXMgdGhhdCB0aGUgaW1wb3J0ZXIgaW50ZWdyYXRlcyB0aGUgYnVmZmVyIGludG8gaXQncyBv
d24gaGFuZGxpbmcgd2hpY2ggbWlnaHQgbm90IGJlIG1hZGUgZm9yIHRoZSB3YXkgdGhlIGV4cG9y
dGVyIGlzIGV4cGVjdGluZyB0aGluZ3MgdG8gYmUgdXNlZC4NCg0KVGhlIHJlc3VsdCByYW5nZWQg
ZnJvbSBleHRyZW1lbHkgaGFyZCB0byBkZWJ1ZyBkYXRhIGNvcnJ1cHRpb24gaXNzdWVzIGFsbCB0
aGUgd2F5IHRvIHNlY3VyaXR5IGlzc3VlcyBiZWNhdXNlIHNvbWVib2R5IHVzZWQgdm1faW5zZXJ0
X3BhZ2UoKS92bV9pbnNlcnRfcGZuKCkgd2l0aCBhIGRpZmZlcmVudCBhZGRyZXNzIHNwYWNlIG9i
amVjdCB0aGFuIHRoZSBleHBvcnRlciBleHBlY3RlZCB0byBiZSB1c2VkIGZvciBpdCdzIG1lbW9y
eS4NCg0KPiBIb3dldmVyLiBXaXRoIGEgc3VpdGFibGUgaGVscGVyIHdlIGNhbiBsYXJnZWx5IGlz
b2xhdGUgdGhpcyB0byBhDQo+IHNpbmdsZSBmdW5jdGlvbiBhbmQgeWVhaCBJIGNhbiBzZWUgbWFr
aW5nIHRoaXMgZnVuY3Rpb25hbC4NCg0KVGhlIGltcG9ydGFudCBwb2ludCBpcyB0aGF0IHRoZSBl
eHBvcnRlciBzaG91bGQgbm90IG5lZWQgdG8gZXhwb3NlIGl0J3MgcGh5c2ljYWwgZGF0YSBzdG9y
ZSBhbmQgaG93IGl0J3MgaG91c2VrZWVwaW5nIHdvcmtzLg0KDQpBcyBsb25nIGFzIHdlIGNhbiBn
dWFyYW50ZWUgdGhhdCBJJ20gZmluZSB3aXRoIGl0Lg0KDQo+IE5vdCBzdXJlIGhvdyB0aGlzIGNh
biB3b3JrIGZvciBLVk0sIGJ1dCBJJ20gZ2V0dGluZyB0aGUgZmVlbGluZyB0aGUNCj4gd2F5IGZv
cndhcmQgaGVyZSBpcyB0byAibGl2ZSBhbmQgbGVhcm4iIHRvZ2V0aGVyLg0KPiANCj4gU28sIGlu
IHRoZSBjb250ZXh0IG9mIHRoaXMgc2VyaWVzLCB5b3VyIHByb3Bvc2FsIGlzIGFuIGlvbW11X2Rv
bWFpbg0KPiBtYXBwaW5nIHR5cGUsIHRvIHJlcGxhY2UgUEFMLiBZZXM/DQoNClNvbWV0aGluZyBs
aWtlIHRoYXQsIHllcy4NCg0KPiBEbyB5b3UgaGF2ZSBhIHBvc2l0aXZlIGZlZWxpbmcgYWJvdXQg
dGhlIGdlbmVyYWwgbWFwcGluZyB0eXBlIHN5c3RlbQ0KPiBmcm9tIHRoZSBlYXJsaWVyIHBhdGNo
ZXM/DQoNCkFzIGZhciBhcyBJIGNhbiBzZWUgdGhhdCBnb2VzIGludG8gdGhlIHJpZ2h0IGRpcmVj
dGlvbiwgeWVzLg0KDQo+IA0KPiBJIHRoaW5rIGlmIHlvdSB3YW50IHRoZXNlIGtpbmRzIG9mIEFQ
SXMgdGhlcmUgYXJlIGdvaW5nIHRvIGJlIHNldmVyYWwNCj4gbWFwcGluZyB0eXBlcyByZXF1aXJl
ZCB0byBleGNoYW5nZSB0aGVpciB2ZXJ5IG5hcnJvd2x5IGRlZmluZWQNCj4gZGV0YWlsczogc2Nh
dHRlcmxpc3QsIHNjYXR0ZXJsaXN0LW5nLCBpb21tdV9kb21haW4sIHRoZSBJbnRlbCB2ZmlvDQo+
IHRoaW5nLCBVQUxpbmssIGRyaXZlciBwcml2YXRlIGludGVyY29ubmVjdHMsIGFuZCB3aGF0ZXZl
ciBLVk0gbmVlZHMuDQoNClBsdXMgdGhvc2Ugc3RyYW5nZSBkZXZpY2UgdG8gZGV2aWNlIGludGVy
ZmFjZXMgeW91IGZpbmQgb24gQVJNL0FuZHJvaWQgd2hpY2ggcGVvcGxlIGN1cnJlbnRseSBtYW5h
Z2Ugb3V0IG9mIHRoZSB1cHN0cmVhbSBrZXJuZWwgYW5kIGhhcHBlbiB0byBicmVhayBhbGwgdGhl
IHRpbWUuDQoNCj4gVGh1cyBJIHRoaW5rIHRoaXMgaXMgbWFraW5nIGEgc3Ryb25nZXIgY2FzZSB0
aGF0IHdlIHNob3VsZCBoYXZlIHRoaXMNCj4gZm9ybWFsIG5lZ290aWF0aW9uIHByb3RvY29sIGJl
dHdlZW4gZXhwb3J0ZXIgYW5kIGltcG9ydGVyIGZvciB0aGUNCj4gbWFwcGluZyB0eXBlcy4gDQoN
ClllcywgYWJzb2x1dGVseS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gVGhhbmtz
LA0KPiBKYXNvbg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
