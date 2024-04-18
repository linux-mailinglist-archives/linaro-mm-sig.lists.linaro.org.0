Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA518A9CE1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Apr 2024 16:23:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A038B44027
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Apr 2024 14:23:32 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2087.outbound.protection.outlook.com [40.107.243.87])
	by lists.linaro.org (Postfix) with ESMTPS id 9080C44027
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Apr 2024 14:23:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=FD+JlwXv;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.87 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0Ry3IAI17nOVn/0ZUBu3SRM36abshf0+dNLIJibaslonyhD0uJOwy6pfqmXdRJ+uPKWKrYVIHYhHyH9yrbxN6k8IIABRpgtXQWR6ahv7WtuF8S+aeAKbqbRu920GaGd7X4CTidg7vIZAjFWOdW/QskW22SPZ7d+veWUHG0/0X1LZpt3/+QUNCl05SXxJ7r7KA40CZiue9yduiBfkdJOiA+oiOUdG158xT4WoeX9pjXBz924xpppB6GGlHUAviWTZNgkqEHkomX78FtJZ3jojKP0V9qfOBHOUn12r31PO6i61dvQV9jZyxyzNGnHID7jxcfAxgwoxGHCJlXZpHxxxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PiQva18MHvigi1RI1gtKIOyTuAKZeAtuAjFdCoStwaI=;
 b=fod9HYdpdLALVvGFxiMKixK1afakbPn/2d6Edf1BzuXtms669Lrzsz59wIvYaap8pocLjNoGDPCouPpN9pnAL4lNce3mCEYygKzk+7xS0F4oXykYhX4YpDWOfku7AdJiig2H1DLqVcQapJqYU3v4KtvFH6tyn7tJQEJPrsXrPOES4UX+Jtm3HqiiMZk2GFXD6vyqwoDrQdxjlyu8jvlR+Tdl2tn232oYADoBCwZkdP5UJuHAElBqepmiR4EJK72jPhcafUkzxQoe7Dj7wJetIb79GeQctDXOrF4+3KasA7RZyook6oxslBdr+Ny1l5sjUHiJqmArj0POkHs4NvYdNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PiQva18MHvigi1RI1gtKIOyTuAKZeAtuAjFdCoStwaI=;
 b=FD+JlwXvE7MpykT25TqRUUGM0aArSk2cMWoCxAYKynEToi3aWx0/IZSzHSb9ScpA1abx3AN0q80DFdOkyb6pk2tf8j8L0JDTKVB/OsFOwekqt8SGm6kgiL2a9HzSMEd3WCr9LnFbT7lY1unsSTeTopuYzZGOUFt9Swn3BIV8Fak=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN0PR12MB6080.namprd12.prod.outlook.com (2603:10b6:208:3c8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.41; Thu, 18 Apr
 2024 14:23:27 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7472.037; Thu, 18 Apr 2024
 14:23:26 +0000
Message-ID: <fd8d8a88-a457-40b1-b8f6-4c91c9d964da@amd.com>
Date: Thu, 18 Apr 2024 16:23:21 +0200
User-Agent: Mozilla Thunderbird
To: Baruch Siach <baruch@tkos.co.il>, Sumit Semwal <sumit.semwal@linaro.org>
References: <505484b83fedebce3c65b10b076b34df075074b6.1713329988.git.baruch@tkos.co.il>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <505484b83fedebce3c65b10b076b34df075074b6.1713329988.git.baruch@tkos.co.il>
X-ClientProxiedBy: FR3P281CA0060.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN0PR12MB6080:EE_
X-MS-Office365-Filtering-Correlation-Id: 04f619d4-67a2-4d55-4e37-08dc5fb31cad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2Z6yCRm18xZ6GDdfGFcujgqnN0LT1u3OZS/4YOY1sf8KHgNXFUup2KfMfQEfNZ7wQnKBNnGEkPKH3GFzB4O7fY/tvhaD5nG7TU1kFGb7iughR/uXHpSeaimV/RYcDMfqfXnWDLrvFo5eHJDdc8yxUgcnDoNOuKeR5z0n0tmrLj+q74XecnkVpMoHF2JHxdRgSx2ubwsOmaAu1f5f/qnStLtzCreyCthMoEgq/4gWDhmM7L+1hu1bQo7D0ZkmJzzqe0s4zjAOTkJtCauHdGwjSp7t7UBVEA5kTgmHCf5P4sIPOpcrSyMi3UWIiu0nhK9pOjzeZ7FyDa8rTaK0L7A9N3j4WlZpfHTnG05UfOT+ieaZYJdxGckcnCc6PJR2B5DwWt3qh6Ipgsa3euAZ6w6tIaeQaUYSENvWbvx+rdYnZ14eGXLpm2g7OYcstT5ImL13jkbNcrhy9z+PdoLqf5wucOQHjKKUXYt4D8NUb9VbWzNkKUkPgi0b/ya/uruYzZ8k+tqG8Hx3cVmK2AWb7hr3KFbXeoBoQYtqy9/QqIydYFgIptkfX6vDGBh4gcO4tDgJLL0V1xBs+tbbPpEi88r7wjXIbf7JzXBpXwMXrlzU9HWeKZBg4MumUtt82uJCN1mE+57dayXAcpCzCw4OPkzVnLmcMgj0vXhNkL1tznPQJE4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aVBvSzZMbXFoU043NlVaK2FDcDVXMWt5anc0TEFFNWJMdVJpbDhwbWNwSlQx?=
 =?utf-8?B?MnBoeEliZVRGZUZDR2dvMUdlb0tibnNCOE9XZjJETnR2ZFBCUlhBL3pMbjZD?=
 =?utf-8?B?YkJiTHNlOEVnUXdGN1dDY2pITGVFeHlvZjQwSk1xeUt6SXB6WkV2dnd1Qjlz?=
 =?utf-8?B?djNkRkZXMjQyUFRDSjY3eVF2VHAwZDAzWXBsNnhSVmhaV2ExNi84UGpqVHc1?=
 =?utf-8?B?NTFGYytWVkQ5TkRrTzZidWUyNjZHL0hteW03Rm4xWjBLcTBjK2dwVEpqeTB6?=
 =?utf-8?B?ME9KVC9BTVAyWkFncWNHWmZXT0FydVVoVzAvVDNCSnJIdklzbmtGVnBkNzVh?=
 =?utf-8?B?dkZNM3RQVi9lNkRkYzNNZWtzRTllUk1jSjZnV0o5RStScWRmS3QrbVJjMkxP?=
 =?utf-8?B?ZG1iRUk4WW1JSkx2Q3oyK0JzOGtLRmJQaGo1RFB6bk00NmszUE40U3JTMXdw?=
 =?utf-8?B?NWUzUUppVUpmdmw2bHB1S09TVFBTWFhRSzZtQU15QmZORVcveG9sTzBsbDdY?=
 =?utf-8?B?VmlpWDI0L0EzclZsRjFYYUphTC90aW9qTFhqOC9oYmdDMXlQUXdDRTFhTWRr?=
 =?utf-8?B?elB6QW56Z3NVMFUyNjExTzBXUERSQmM1dUNRMzlFSmJRcTlQQXNzU1hNVVhG?=
 =?utf-8?B?MmhiT2FRU2g2SWV6Sll5RXZWM1p4YUthUDRWOEdyVFJrN3JGR1JhV2k5UVkw?=
 =?utf-8?B?bHRXT3dSQitGS1hpeStNQXlLeU1wMEdMSnY3WHczNVBXRXRkd29FZ3Z6Z3FY?=
 =?utf-8?B?WERSaDEyQTFzWUZZWEdJY25YVDl2VVc5bmc0eGRaVUgxRFBnTkFBRFNvRmF2?=
 =?utf-8?B?ZUZ5elpJWW9hUHlreDYvd0x5NDhMaXVtU1pzejlyai9SYVJIcnN0WGpzWUJv?=
 =?utf-8?B?WVhvZk5XZk5BN1Boenc5cUM5eUJiaHhWSTlDcmt6ejRrRE4rbllvSmZUc3E1?=
 =?utf-8?B?ZUlzMDYrdTlWbTI2ekVBRzB5N3hWa2k0ejQrUXllVTRzb2Z3UjJTRWJlcXNV?=
 =?utf-8?B?MEVIY3RKa21CM21zM0sxRndhT0VxZkNhT0o2QXhBcGFRRW40citkREUyK1RB?=
 =?utf-8?B?bVhyOGx3b0tSaWhLcXYrb1RmWHI0Um4wWWEweVdiYUZIRktreFRpQmtXaFQ2?=
 =?utf-8?B?NnQ3bTVYMWswR2FGcmlLalk3aWl3WXlIWG9peDQ2aU9WUUdZSHZrZGhGQW91?=
 =?utf-8?B?eXErSDZnWXh2NXBHNlgrdFFzdk54cG8rRmxRZWhSMkg1dGJyTzV6a2lyTXJv?=
 =?utf-8?B?R2prdjUvck0zNHo5cEZId3pQOWsweTltOXFsRm96aVJXT05FOWpINjB3TE9M?=
 =?utf-8?B?WjhPQ2RKOXVwOXM4NWVadDAxamN1Y0xrZVJ5all4WURQd3dtcURHbVlQRWsw?=
 =?utf-8?B?MktsK0JKWkhjR3lVa21nK0NYV1VKdUhQcDIrZEVCM3JyclVmOXZ1RWMraHIv?=
 =?utf-8?B?c1pBSDNnY0VlZ2EvQ0wyTitRWXp1a0F6ZXcyeXd2UStUT3IzVHFyOGxEcVJu?=
 =?utf-8?B?bG8vdVlxSDVPVk1nc0t2NVFaM1RNcWhUbVQ3a1NiRmp3NTE2QjhlVHRUSE9i?=
 =?utf-8?B?cGxQM0lGZEFabGtVcmZ1cDBTblg1SnB1UElQVDB5STNVRWhxamx4TGdpcjdI?=
 =?utf-8?B?Q0RRbUhLcERORmM2aHdNZWpPcytPbWtNQVdHcVRYbGlBR2dtQnhhNXQ2M2RG?=
 =?utf-8?B?SlJlcEp6OGozU3NSbCt6eHJ2L1FZODRjYy8xdVhDUFp0NlhNbjNLWGFhclU4?=
 =?utf-8?B?dEdBRWl1ZUZmd2YzaE1pMzNSbVc3czBXZVhTMk93R2VMakt5TTgwUS9zQzZo?=
 =?utf-8?B?MUFabFBCcmVUNkUxTGhodTJIdGhDRlRaWHZubWg1VWQxR1QzalV5eGpvaFBC?=
 =?utf-8?B?a2xkYWkvR2RscWJUVmJQM212M0ZJc1dpRGpVQ1J3bXdQZGdNdS85NmwyeC9K?=
 =?utf-8?B?ZVBkRVNyaS9PZkt0WGk3V20yN3hGMDVrc2p2VDVuWkhyKy9aRmR2VkFuWldn?=
 =?utf-8?B?RzNzMjFjb1RBUUp2eTBtYVh1bU5EOWhNSTU1TjZadTRVMCtTSWNYcnloM1ln?=
 =?utf-8?B?ZTRPa3I5b2o4a3VrNGV6MUNHS051cFJZcko0Z3BLMG04dGNaQXVpdVZESEtE?=
 =?utf-8?Q?IYi0CBO7GxNCWMgXGFuH5ljGB?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04f619d4-67a2-4d55-4e37-08dc5fb31cad
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 14:23:26.7601
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t6pruC2BKVHGCeU01O8p03RPUKmNa3w0y2K/dR711D3xwVGta3MIfbShKLOhuP6J
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6080
X-Rspamd-Queue-Id: 9080C44027
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.87:from];
	URIBL_BLOCKED(0.00)[amd.com:dkim,mail-dm6nam12on2087.outbound.protection.outlook.com:rdns,checkpatch.pl:url];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6EPOG4B44LJCUPNOGFMG5TNR5DPAVJHA
X-Message-ID-Hash: 6EPOG4B44LJCUPNOGFMG5TNR5DPAVJHA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] doc: dma-buf: fix grammar typo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6EPOG4B44LJCUPNOGFMG5TNR5DPAVJHA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

V2VsbCBjaGVja3BhdGNoLnBsIHN0aWxsIGNvbXBsYWluZWQ6DQoNCkVSUk9SOiB0cmFpbGluZyB3
aGl0ZXNwYWNlDQojMTU3OiBGSUxFOiBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5y
c3Q6ODA6DQorwqAgSWYgbGxzZWVrIG9uIGRtYS1idWYgRkRzIGlzbid0IHN1cHBvcnRlZCB0aGUg
a2VybmVsIHdpbGwgcmVwb3J0IA0KLUVTUElQRSBmb3IgYWxsXk0kDQoNClRoYXQgYWN0dWFsbHkg
bG9va3MgbGlrZSB5b3UgdXNlZCBhIFdpbmRvd3MgbGluZSBlbmRpbmcuDQoNCkkgZml4ZWQgaXQg
dXAgYW5kIHB1c2hlZCB0aGUgcGF0Y2gsIGJ1dCBwbGVhc2UgdGFrZSBhIGJpdCBtb3JlIGNhcmUg
bmV4dCANCnRpbWUuDQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KQW0gMTcuMDQuMjQgdW0gMDY6
NTkgc2NocmllYiBCYXJ1Y2ggU2lhY2g6DQo+IFVzZSAnc3VwcG9ydGVkJyBpbnN0ZWFkIG9mICdz
dXBwb3J0Jy4gJ3N1cHBvcnQnIG1ha2VzIG5vIHNlbnNlIGluIHRoaXMNCj4gY29udGV4dC4NCj4N
Cj4gU2lnbmVkLW9mZi1ieTogQmFydWNoIFNpYWNoIDxiYXJ1Y2hAdGtvcy5jby5pbD4NCj4gLS0t
DQo+IHYyOiBBZGQgY29tbWl0IGxvZyBtZXNzYWdlIChDaHJpc3RpYW4gS8O2bmlnKQ0KPiAtLS0N
Cj4gICBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QgfCAyICstDQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QgYi9Eb2N1bWVudGF0aW9u
L2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QNCj4gaW5kZXggMGMxNTNkNzljY2M0Li4yOWFiZjFlZWJm
OWYgMTAwNjQ0DQo+IC0tLSBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdA0K
PiArKysgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QNCj4gQEAgLTc3LDcg
Kzc3LDcgQEAgY29uc2lkZXIgdGhvdWdoOg0KPiAgICAgdGhlIHVzdWFsIHNpemUgZGlzY292ZXIg
cGF0dGVybiBzaXplID0gU0VFS19FTkQoMCk7IFNFRUtfU0VUKDApLiBFdmVyeSBvdGhlcg0KPiAg
ICAgbGxzZWVrIG9wZXJhdGlvbiB3aWxsIHJlcG9ydCAtRUlOVkFMLg0KPiAgIA0KPiAtICBJZiBs
bHNlZWsgb24gZG1hLWJ1ZiBGRHMgaXNuJ3Qgc3VwcG9ydCB0aGUga2VybmVsIHdpbGwgcmVwb3J0
IC1FU1BJUEUgZm9yIGFsbA0KPiArICBJZiBsbHNlZWsgb24gZG1hLWJ1ZiBGRHMgaXNuJ3Qgc3Vw
cG9ydGVkIHRoZSBrZXJuZWwgd2lsbCByZXBvcnQgLUVTUElQRSBmb3IgYWxsDQo+ICAgICBjYXNl
cy4gVXNlcnNwYWNlIGNhbiB1c2UgdGhpcyB0byBkZXRlY3Qgc3VwcG9ydCBmb3IgZGlzY292ZXJp
bmcgdGhlIGRtYS1idWYNCj4gICAgIHNpemUgdXNpbmcgbGxzZWVrLg0KPiAgIA0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
