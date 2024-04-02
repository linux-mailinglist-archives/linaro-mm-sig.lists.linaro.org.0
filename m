Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 32075894D24
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Apr 2024 10:08:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6ABFD3E80F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Apr 2024 08:08:08 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2135.outbound.protection.outlook.com [40.107.92.135])
	by lists.linaro.org (Postfix) with ESMTPS id A7F743E80F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Apr 2024 08:08:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="YXB0F/+X";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.135 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cID9GekIsWc+TonfvyuB1S/fyjWyVfHqwj9McCd7mhX+nm6hI5aNW1alEIhnICW1lvX1D2S5DXEZzvPSKBnVABAA7wUmjUMlRbrXf8aXckasAqL0ITyhpderspE0k2lIsxq9w3fXlbVkDx9L0j57T1lEAQz1d8d333M8GqjwFmYtL4PN65VDg9edpMsrYsCvzz8K9O6tLoGPT+8NWmVmCtzUN+j14WKLIfKg8+faHVHArrAO3qA4cZpYUqEydoYghGz67N6YpgnqKCUoYCaOSeVFAUoRFC1mrrIIBkVnVpkyHXAmzuUPPzHP8Hed6W0nbWJ/Q6AyxnLbg+zD1Zkxew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HTyaHWL78fB3l8oKFz28irrxiiZOl8BnjYdp4CoDqMA=;
 b=gqg6D99xRqZJVsFXgtOXfKtKuDEMTPYJlm9KRSCCHlgpjjviyDNPRSdV3X6Pyr5eylt74+9q7tDMd+ulJDr9HEAhCpNnmljmypxdXhEAAyIl+uFr3DFbqUYmkzWFki6AEboVACTxEbbmM4I9QEf5EyGVBbY+hpKWoSCNAERKJmkaiSMIPN+dD32bxwSEDpEuwmY5VO7j9uQECpaegjfKZZY6g+160+vCgrrSIZxwrdfayr+CW98bpSWecQmbWfK8bFKeWyzg3PbLfOL28Q9uUSjrbTFaNfsJEKLBCl4+H6jlY2SsTRa0TLXEhELSGBYHaOdcm89xOFQluRmuhlKRGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HTyaHWL78fB3l8oKFz28irrxiiZOl8BnjYdp4CoDqMA=;
 b=YXB0F/+XcHhwQSB4Em9mFJMm2y9AxJAwjQdrQI5HCIq+AQIyYFTD73S3jUyrZz3KPYypFs8D/yxoivQNonNmhwE/R10eiq8yVUGOqJw+spcg/KUW7WxuGRJ6gQxg0tyHiCgnJ2gB5jX1do+Wrd78YxFxHGABbPH3No1h8SyT7t0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BL1PR12MB5707.namprd12.prod.outlook.com (2603:10b6:208:386::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 2 Apr
 2024 08:08:04 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7409.042; Tue, 2 Apr 2024
 08:08:03 +0000
Message-ID: <23375ba8-9558-4886-9c65-af9fe8e8e8b6@amd.com>
Date: Tue, 2 Apr 2024 10:07:57 +0200
User-Agent: Mozilla Thunderbird
To: zhiguojiang <justinjiang@vivo.com>, Sumit Semwal
 <sumit.semwal@linaro.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
References: <20240327022903.776-1-justinjiang@vivo.com>
 <5cf29162-a29d-4af7-b68e-aac5c862d20e@amd.com>
 <cc7defae-60c1-4cc8-aee5-475d4460e574@vivo.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <cc7defae-60c1-4cc8-aee5-475d4460e574@vivo.com>
X-ClientProxiedBy: FR2P281CA0159.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BL1PR12MB5707:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hQ+ILirV9bvcJtiGQdxJfoVr5Q9MVWYSdMOKXD5OBjv/LJpCCdPtebNiRRWp4T45F7j5t1iCG2KdAPf3C68JFRlOs9Aydb8sS6rNmd6izRS6RE6AMYAf6+ZcBwd2zXuxb9MZvVHsn6nCQwuFYkA+14dhJTb2eW3Cm429v4N0M2ZLd9+eL0Nl5Oahoj75+AfVT35S/2eikl24Ut1XS5s0+5Vn705HpaH7fA2z4ESvh7qQQ5YAJXvU1bMUhoIBN/pQeOt40aJuUsFde2lbRjO1SC715ZEu7bqMRsPIKbDtJyKi9eErVjraZtyKj3W78GJWG02M+RM7Lh805e8kczx1QONODg1zgON6pE+1br47Fvhact5DcoO3Cb8SlVGSzqlWCJCJXgHCWpEfA6lf9uR/Mykt/vasHj7eT52cgBE/LECTA17Xd2KMasW5mmT26RKHkZiPg0zM2wuXYivh3FO7DTggGBFjTHScoX33TF1dENqRellfDsqkP/RYxu7ngd5IfjZ40eDeCk+nj5VbZm56qwjFSA2wyODlg9VI79tziXFy5WRPhm76nT95sw1etkUaHrN//U0Kh6MbpnXEcJXRq8ziwmILvivkH1K373DHJKOs8PjVbgzkdj7hr3dAWma0ZX4WE5LsTQt6dbGpDa7IUCFnguagxhEFqIntZCvNgG4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZVczTVR5dUZycHFGakZ3VTJtWmF5YmNBRmZpSVJ1SWdOQjZiaSs4VDJBWWlK?=
 =?utf-8?B?YjF2ekN1VWpQSitaZWhONVFjczdnQlBxanMwTHJVTmNLOCtaYlB0NWNzaTA1?=
 =?utf-8?B?TDJmVVFBZS9MV2hIVzVNMUhoVzNaeGhaV0JkVWVvZm5PdmhTRlR2eHRxYk50?=
 =?utf-8?B?L3kwYkRROE9RSGZpWXNIekpyUUtFdk84WUJvV0VWTFloc0xkRi9UVm9rTmpE?=
 =?utf-8?B?ZkpmcjI4cWYzVHBaK2V4VHVBdEhWMDBEbXhNaGN0MVBrQlYyL2RKa1lKeVJt?=
 =?utf-8?B?cUNCMU42SmNJbStlZzJ4OUVHQUNYQmViT0tQTDVodHdSWHNKZjI3Z3plMm5s?=
 =?utf-8?B?dVBSZ0pwSnRqb3Y3K2NicDA3R2FxRlZCZkhXYWliR0lLNXhBQS9qYTczamFa?=
 =?utf-8?B?dGRPM1JENVAySm9qRVRSSnBHc05jZXV3eTVKM3ZiNXQ5L0s5VDhBQkhKYmw3?=
 =?utf-8?B?dGpHQVNZV1FSbUo4bjgzQnRuTjVzb24zc2Rqek9CcjZGR0dzK3dCM0IrYndR?=
 =?utf-8?B?TUloZjBlQmRpUlRxS3lHaDQ2TG9DdDNzTmlnMWY5YjY4SFZjUlcvdWJGR0VJ?=
 =?utf-8?B?S0xRYUJ6WTJQMDFWQXZ5aHJGVEVYcFNSODBwSnE3enQ4UU1JSlFyYVFCWjV6?=
 =?utf-8?B?dGl1RWZsYnlvRk1jbjlYWUlOc1FDbzMzbTZkcXA5RUJRM1hnNEtlRjNoUk9H?=
 =?utf-8?B?MWlmUXhzRDMySjNYK0JPZmNYNy9aWHZPTndNMjNyZ3hxOHFJa211UGx6OEp1?=
 =?utf-8?B?N3BuL0IvOVhRQ2gvcnR6TFJESDBCYS83NG5RNmYveXQycVBKdTZ1SUE3bFZL?=
 =?utf-8?B?eGZBS1kvQ1hwTUhtVnVzV1ZrOGh0Wm1ldm5zcWdyTGorYUFzZDh4RDBmTXpX?=
 =?utf-8?B?NXJWV1ptRWpuaU1vbzlCaVFXZG5OaVg3THl5VnJSTVhPUm8vbllMN0Z3OXg0?=
 =?utf-8?B?MnFvSHdWM1VSSUV6NStxZmxRV3VWaHVqMHd6MWgxd2xpWDhERTMwSERmbDV4?=
 =?utf-8?B?cGVqYThPSFFGQlVXMnoxZmgrZGFybkQ2RlFTd0l1NGt6RXVGckxFNXczZ1da?=
 =?utf-8?B?ZmFTUzNDZHpaMXRtM21VbWpGTGZ2Q01CVWMyTjd1Q2NwNEIxM003MEoxZTJa?=
 =?utf-8?B?WGRLajFHc01FT1JPdVBlMTB3bC9MSnQwdCtsdG9ZOVpSS1RnTWtTSForTjR1?=
 =?utf-8?B?cFl4VFFvUjBVeUdjSkV6VXhtdmNGYWc4bUs1UUpMclU1QTBRZXNWMmdFcmx0?=
 =?utf-8?B?VGFNcmRmclZMbE1OcDdreHZTOHNlSTJyMzI2V0RuSEVXZG14UTliNitMK2xM?=
 =?utf-8?B?YmdRZXNqVEFMd3VMV1I5SnQvdHFuR1FjWDNBTE1FSmx3elNRdlV1c3A2Y1Uy?=
 =?utf-8?B?cEtZYzRjYUVKSmo3dlBmRThpK01TVUZsb2dSZTM0VGo1NDFCamxXR3hIOEl4?=
 =?utf-8?B?Rk9scy8ycnpRQmRqL2d5MnJiYkdsNFNQVldYNWNWc2pwNjcyYSsrZUlEcVZI?=
 =?utf-8?B?alNUdEIzc0FPQysyV3NTdjM4cWg0M0o5aVZsZWNvbkxjK2FtNzVzSE9qUFN1?=
 =?utf-8?B?L241T09NWmdUOGN6U1JZVGg0OU91cEdoK2RXMTNRaTB1SlFzQnM2UXhzWlp5?=
 =?utf-8?B?YkhLSFFOMllnSHkxWFVpbEcySVN6dTZwZnFBYlcwWjlzalQxdThwTDNCbUFL?=
 =?utf-8?B?QnhScTJrbjFUZW5oUjh3WWFuaWhySFFKaXU0ZS9URnJ4TTl5RjNWMlJobE9W?=
 =?utf-8?B?ZG5TUVdwQWNQWXlJNDFiTUFvY3E4dThJRWs1VGt1MmJ5T3BtMjg5ekVoVndB?=
 =?utf-8?B?R003V0tCMXd2TDZIT0JNYVJWeEdXSVVtV21vUmJGb3o0cHhLdGR3bzhiVG5H?=
 =?utf-8?B?L0t2cFROaW5hM3JpNE16QUxLQ3d3WHg5SGR1TVBncjExRjdyQ1VhZWdwNXJv?=
 =?utf-8?B?SjIzc1o3T1V2a1kzNGxGemwvU1pHcVl4SVN5Q2Z0c25QRHppc3Y2aitldnVy?=
 =?utf-8?B?Ti93aFY1SXdLYzVxa1pZYm5Gd3cwQ1JXdyttbm1wM0R5Mk9vRUQ1SnpKalhU?=
 =?utf-8?B?QUpFODMzWUZkai9IMmZpa0hpSk13TDgrWUVQY2diWEdNZ005UVRaRFR0U29W?=
 =?utf-8?Q?ccNRwKeCrGzBjTb2hOS++56Bw?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13956af9-963d-48bd-53f6-08dc52ec0582
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2024 08:08:03.8787
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mnQmsR9F+oZVHfO/JO5+9fiOdz9YIHhde+DMRTLPqtsftFnISTLDDib+axoALPRx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5707
X-Rspamd-Queue-Id: A7F743E80F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:dkim,vivo.com:email];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.135:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: UK6TUQNFCQMGV77GMZ2C4NGAIYBDU2DN
X-Message-ID-Hash: UK6TUQNFCQMGV77GMZ2C4NGAIYBDU2DN
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UK6TUQNFCQMGV77GMZ2C4NGAIYBDU2DN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDIuMDQuMjQgdW0gMDg6NDkgc2NocmllYiB6aGlndW9qaWFuZzoNCj4+IEFzIGZhciBhcyBJ
IGNhbiBzZWUgdGhhdCdzIG5vdCBiZWNhdXNlIG9mIHRoZSBETUEtYnVmIGNvZGUsIGJ1dCANCj4+
IGJlY2F1c2UgeW91IGFyZSBzb21laG93IHVzaW5nIHRoaXMgaW50ZXJmYWNlIGluY29ycmVjdGx5
Lg0KPj4NCj4+IFdoZW4gZG1hX2J1Zl9wb2xsKCkgaXMgY2FsbGVkIGl0IGlzIG1hbmRhdG9yeSBm
b3IgdGhlIGNhbGxlciB0byBob2xkIA0KPj4gYSByZWZlcmVuY2UgdG8gdGhlIGZpbGUgZGVzY3Jp
cHRvciBvbiB3aGljaCB0aGUgcG9sbCBvcGVyYXRpb24gaXMgDQo+PiBleGVjdXRlZC4NCj4+DQo+
PiBTbyBhZGRpbmcgY29kZSBsaWtlICJpZiAoIWZpbGVfY291bnQoZmlsZSkpIiBpbiB0aGUgYmVn
aW5uaW5nIG9mIA0KPj4gZG1hX2J1Zl9wb2xsKCkgaXMgY2VydGFpbmx5IGJyb2tlbi4NCj4+DQo+
PiBNeSBiZXN0IGd1ZXNzIGlzIHRoYXQgeW91IGhhdmUgc29tZSB1bmJhbGFuY2VkIA0KPj4gZG1h
X2J1Zl9nZXQoKS9kbWFfYnVmX3B1dCgpIHNvbWV3aGVyZSBpbnN0ZWFkLg0KPj4NCj4+DQo+IEhp
IENocmlzdGlhbiwNCj4NCj4gVGhlIGtlcm5lbCBkbWFfYnVmX3BvbGwoKSBjb2RlIHNob3VuZCBu
b3QgY2F1c2Ugc3lzdGVtIGNyYXNoZXMgZHVlIHRvIA0KPiB0aGUgdXNlciBtb2RlIHVzYWdlIGxv
Z2ljYWwgaXNzdWVzID8NCg0KV2hhdCB1c2VyIG1vZGUgbG9naWNhbCBpc3N1ZXMgYXJlIHlvdSB0
YWxraW5nIGFib3V0PyBDbG9zaW5nIGEgZmlsZSANCndoaWxlIHBvbGxpbmcgb24gaXQgaXMgcGVy
ZmVjdGx5IHZhbGlkLg0KDQpkbWFfYnVmX3BvbGwoKSBpcyBjYWxsZWQgYnkgdGhlIGZpbGVzeXN0
ZW0gbGF5ZXIgYW5kIGl0J3MgdGhlIGZpbGVzeXN0ZW0gDQpsYXllciB3aGljaCBzaG91bGQgbWFr
ZSBzdXJlIHRoYXQgYSBmaWxlIGNhbid0IGJlIGNsb3NlZCB3aGlsZSBwb2xsaW5nIA0KZm9yIGFu
IGV2ZW50Lg0KDQpJZiB0aGF0IGRvZXNuJ3Qgd29yayB0aGVuIHlvdSBoYXZlIHN0dW1ibGVkIG92
ZXIgYSBtYXNzaXZlIGJ1ZyBpbiB0aGUgZnMgDQpsYXllci4gQW5kIEkgaGF2ZSBzb21lIGRvdWJ0
cyB0aGF0IHRoaXMgaXMgYWN0dWFsbHkgdGhlIGNhc2UuDQoNCldoYXQgaXMgbW9yZSBsaWtlbHkg
aXMgdGhhdCBzb21lIGRyaXZlciBtZXNzZXMgdXAgdGhlIHJlZmVyZW5jZSBjb3VudCANCmFuZCBi
ZWNhdXNlIG9mIHRoaXMgeW91IHNlZSBhbiBVQUYuDQoNCkFueXdheSBhcyBmYXIgYXMgSSBjYW4g
c2VlIHRoZSBETUEtYnVmIGNvZGUgaXMgY29ycmVjdCByZWdhcmRpbmcgdGhpcy4NCg0KUmVnYXJk
cywNCkNocmlzdGlhbi4NCg0KPg0KPiBUaGFua3MNCj4NCj4NCj4g5ZyoIDIwMjQvNC8xIDIwOjIy
LCBDaHJpc3RpYW4gS8O2bmlnIOWGmemBkzoNCj4+IEFtIDI3LjAzLjI0IHVtIDAzOjI5IHNjaHJp
ZWIgWmhpZ3VvIEppYW5nOg0KPj4+IFRoZSBpc3N1ZSBpcyBhIFVBRiBpc3N1ZSBvZiBkbWFidWYg
ZmlsZSBmZC4gVGhyb2dodCBkZWJ1Z2dpbmcsIHdlIGZvdW5kDQo+Pj4gdGhhdCB0aGUgZG1hYnVm
IGZpbGUgZmQgaXMgYWRkZWQgdG8gdGhlIGVwb2xsIGV2ZW50IGxpc3RlbmVyIGxpc3QsIGFuZA0K
Pj4+IHdoZW4gaXQgaXMgcmVsZWFzZWQsIGl0IGlzIG5vdCByZW1vdmVkIGZyb20gdGhlIGVwb2xs
IGxpc3QsIHdoaWNoIGxlYWRzDQo+Pj4gdG8gdGhlIFVBRihVc2UtQWZ0ZXItRnJlZSkgaXNzdWUu
DQo+Pg0KPj4gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGF0J3Mgbm90IGJlY2F1c2Ugb2YgdGhlIERN
QS1idWYgY29kZSwgYnV0IA0KPj4gYmVjYXVzZSB5b3UgYXJlIHNvbWVob3cgdXNpbmcgdGhpcyBp
bnRlcmZhY2UgaW5jb3JyZWN0bHkuDQo+Pg0KPj4gV2hlbiBkbWFfYnVmX3BvbGwoKSBpcyBjYWxs
ZWQgaXQgaXMgbWFuZGF0b3J5IGZvciB0aGUgY2FsbGVyIHRvIGhvbGQgDQo+PiBhIHJlZmVyZW5j
ZSB0byB0aGUgZmlsZSBkZXNjcmlwdG9yIG9uIHdoaWNoIHRoZSBwb2xsIG9wZXJhdGlvbiBpcyAN
Cj4+IGV4ZWN1dGVkLg0KPj4NCj4+IFNvIGFkZGluZyBjb2RlIGxpa2UgImlmICghZmlsZV9jb3Vu
dChmaWxlKSkiIGluIHRoZSBiZWdpbm5pbmcgb2YgDQo+PiBkbWFfYnVmX3BvbGwoKSBpcyBjZXJ0
YWlubHkgYnJva2VuLg0KPj4NCj4+IE15IGJlc3QgZ3Vlc3MgaXMgdGhhdCB5b3UgaGF2ZSBzb21l
IHVuYmFsYW5jZWQgDQo+PiBkbWFfYnVmX2dldCgpL2RtYV9idWZfcHV0KCkgc29tZXdoZXJlIGlu
c3RlYWQuDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4NCj4+PiBUaGUg
VUFGIGlzc3VlIGNhbiBiZSBzb2x2ZWQgYnkgY2hlY2tpbmcgZG1hYnVmIGZpbGUtPmZfY291bnQg
dmFsdWUgYW5kDQo+Pj4gc2tpcHBpbmcgdGhlIHBvbGwgb3BlcmF0aW9uIGZvciB0aGUgY2xvc2Vk
IGRtYWJ1ZiBmaWxlIGluIHRoZQ0KPj4+IGRtYV9idWZfcG9sbCgpLiBXZSBoYXZlIHRlc3RlZCB0
aGlzIHNvbHZlZCBwYXRjaCBtdWx0aXBsZSB0aW1lcyBhbmQNCj4+PiBoYXZlIG5vdCByZXByb2R1
Y2VkIHRoZSB1YWYgaXNzdWUuDQo+Pj4NCj4+PiBjcmFzaCBkdW1wOg0KPj4+IGxpc3RfZGVsIGNv
cnJ1cHRpb24sIGZmZmZmZjhhNmYxNDNhOTAtPm5leHQgaXMgTElTVF9QT0lTT04xDQo+Pj4gKGRl
YWQwMDAwMDAwMDAxMDApDQo+Pj4gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0t
DQo+Pj4ga2VybmVsIEJVRyBhdCBsaWIvbGlzdF9kZWJ1Zy5jOjU1IQ0KPj4+IEludGVybmFsIGVy
cm9yOiBPb3BzIC0gQlVHOiAwMDAwMDAwMGYyMDAwODAwIFsjMV0gUFJFRU1QVCBTTVANCj4+PiBw
YyA6IF9fbGlzdF9kZWxfZW50cnlfdmFsaWQrMHg5OC8weGQ0DQo+Pj4gbHIgOiBfX2xpc3RfZGVs
X2VudHJ5X3ZhbGlkKzB4OTgvMHhkNA0KPj4+IHNwIDogZmZmZmZmYzAxZDQxM2QwMA0KPj4+IHgy
OTogZmZmZmZmYzAxZDQxM2QwMCB4Mjg6IDAwMDAwMDAwMDAwMDAwYzAgeDI3OiAwMDAwMDAwMDAw
MDAwMDIwDQo+Pj4geDI2OiAwMDAwMDAwMDAwMDAwMDAwIHgyNTogMDAwMDAwMDAwMDAwMDAwMCB4
MjQ6IDAwMDAwMDAwMDAwODAwMDcNCj4+PiB4MjM6IGZmZmZmZjhiMjJlNWRjYzAgeDIyOiBmZmZm
ZmY4OGE2YmUxMmQwIHgyMTogZmZmZmZmOGIyMmU1NzJiMA0KPj4+IHgyMDogZmZmZmZmODAyNTRl
ZDBhMCB4MTk6IGZmZmZmZjhhNmYxNDNhMDAgeDE4OiBmZmZmZmZkYTVlZmVkM2MwDQo+Pj4geDE3
OiA2MTY1NjQyODIwMzE0ZTRmIHgxNjogNTM0OTRmNTA1ZjU0NTM0OSB4MTU6IDRjMjA3MzY5MjA3
NDc4NjUNCj4+PiB4MTQ6IDZlM2UyZDMwMzk2MTMzMzQgeDEzOiAyOTMwMzAzMTMwMzAzMDMwIHgx
MjogMDAwMDAwMDAwMDAwMDAxOA0KPj4+IHgxMTogZmZmZmZmOGI2YzE4ODAwMCB4MTA6IDAwMDAw
MDAwZmZmZmZmZmYgeDkgOiA2Yzg0MTNhMTk0ODk3YjAwDQo+Pj4geDggOiA2Yzg0MTNhMTk0ODk3
YjAwIHg3IDogNzQ3MDc1NzI3MjZmNjMyMCB4NiA6IDZjNjU2NDVmNzQ3MzY5NmMNCj4+PiB4NSA6
IGZmZmZmZjhiNmMzYjJhM2UgeDQgOiBmZmZmZmY4YjZjM2IyYTQwIHgzIDogZmZmZjEwMzAwMDAw
MTAwNQ0KPj4+IHgyIDogMDAwMDAwMDAwMDAwMDAwMSB4MSA6IDAwMDAwMDAwMDAwMDAwYzAgeDAg
OiAwMDAwMDAwMDAwMDAwMDRlDQo+Pj4gQ2FsbCB0cmFjZToNCj4+PiDCoCBfX2xpc3RfZGVsX2Vu
dHJ5X3ZhbGlkKzB4OTgvMHhkNA0KPj4+IMKgIGRtYV9idWZfZmlsZV9yZWxlYXNlKzB4NDgvMHg5
MA0KPj4+IMKgIF9fZnB1dCsweGY0LzB4MjgwDQo+Pj4gwqAgX19fX2ZwdXQrMHgxMC8weDIwDQo+
Pj4gwqAgdGFza193b3JrX3J1bisweGNjLzB4ZjQNCj4+PiDCoCBkb19ub3RpZnlfcmVzdW1lKzB4
MmEwLzB4MzNjDQo+Pj4gwqAgZWwwX3N2YysweDVjLzB4YTQNCj4+PiDCoCBlbDB0XzY0X3N5bmNf
aGFuZGxlcisweDY4LzB4YjQNCj4+PiDCoCBlbDB0XzY0X3N5bmMrMHgxYTAvMHgxYTQNCj4+PiBD
b2RlOiBkMDAwNmZlMCA5MTJjNTAwMCBmMmZiZDVhMiA5NDIzMWEwMSAoZDQyMTAwMDApDQo+Pj4g
LS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tDQo+Pj4gS2VybmVsIHBhbmljIC0g
bm90IHN5bmNpbmc6IE9vcHMgLSBCVUc6IEZhdGFsIGV4Y2VwdGlvbg0KPj4+IFNNUDogc3RvcHBp
bmcgc2Vjb25kYXJ5IENQVXMNCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFpoaWd1byBKaWFuZyA8
anVzdGluamlhbmdAdml2by5jb20+DQo+Pj4gLS0tDQo+Pj4gwqAgZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysrKy0tLS0NCj4+PiDCoCAxIGZpbGUg
Y2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4+PiDCoCBtb2RlIGNo
YW5nZSAxMDA2NDQgPT4gMTAwNzU1IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+Pg0KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYw0KPj4+IGluZGV4IDhmZTVhYTY3YjE2Ny4uZTQ2OWRkOTI4OGNjDQo+Pj4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCj4+PiBAQCAtMjQwLDYgKzI0MCwxMCBAQCBzdGF0aWMgX19wb2xsX3QgZG1hX2J1
Zl9wb2xsKHN0cnVjdCBmaWxlICpmaWxlLCANCj4+PiBwb2xsX3RhYmxlICpwb2xsKQ0KPj4+IMKg
wqDCoMKgwqAgc3RydWN0IGRtYV9yZXN2ICpyZXN2Ow0KPj4+IMKgwqDCoMKgwqAgX19wb2xsX3Qg
ZXZlbnRzOw0KPj4+IMKgICvCoMKgwqAgLyogQ2hlY2sgaWYgdGhlIGZpbGUgZXhpc3RzICovDQo+
Pj4gK8KgwqDCoCBpZiAoIWZpbGVfY291bnQoZmlsZSkpDQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiBFUE9MTEVSUjsNCj4+PiArDQo+Pj4gwqDCoMKgwqDCoCBkbWFidWYgPSBmaWxlLT5wcml2
YXRlX2RhdGE7DQo+Pj4gwqDCoMKgwqDCoCBpZiAoIWRtYWJ1ZiB8fCAhZG1hYnVmLT5yZXN2KQ0K
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gRVBPTExFUlI7DQo+Pj4gQEAgLTI2Niw4ICsy
NzAsMTUgQEAgc3RhdGljIF9fcG9sbF90IGRtYV9idWZfcG9sbChzdHJ1Y3QgZmlsZSAqZmlsZSwg
DQo+Pj4gcG9sbF90YWJsZSAqcG9sbCkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3Bpbl91bmxv
Y2tfaXJxKCZkbWFidWYtPnBvbGwubG9jayk7DQo+Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChldmVudHMgJiBFUE9MTE9VVCkgew0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIFBh
aXJlZCB3aXRoIGZwdXQgaW4gZG1hX2J1Zl9wb2xsX2NiICovDQo+Pj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZ2V0X2ZpbGUoZG1hYnVmLT5maWxlKTsNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAvKg0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBQYWlyZWQgd2l0aCBmcHV0
IGluIGRtYV9idWZfcG9sbF9jYiwNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogU2tp
cCBwb2xsIGZvciB0aGUgY2xvc2VkIGZpbGUuDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAqLw0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghZ2V0X2ZpbGVfcmN1KCZkbWFi
dWYtPmZpbGUpKSB7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBldmVudHMg
Jj0gfkVQT0xMT1VUOw0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGNiLT5h
Y3RpdmUgPSAwOw0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBjbGVh
cl9vdXRfZXZlbnQ7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQ0KPj4+IMKgIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghZG1hX2J1Zl9wb2xsX2FkZF9jYihyZXN2LCB0cnVl
LCBkY2IpKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogTm8gY2Fs
bGJhY2sgcXVldWVkLCB3YWtlIHVwIGFueSBvdGhlciB3YWl0ZXJzICovDQo+Pj4gQEAgLTI3Nyw2
ICsyODgsNyBAQCBzdGF0aWMgX19wb2xsX3QgZG1hX2J1Zl9wb2xsKHN0cnVjdCBmaWxlICpmaWxl
LCANCj4+PiBwb2xsX3RhYmxlICpwb2xsKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9DQo+Pj4g
wqDCoMKgwqDCoCB9DQo+Pj4gwqAgK2NsZWFyX291dF9ldmVudDoNCj4+PiDCoMKgwqDCoMKgIGlm
IChldmVudHMgJiBFUE9MTElOKSB7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFf
YnVmX3BvbGxfY2JfdCAqZGNiID0gJmRtYWJ1Zi0+Y2JfaW47DQo+Pj4gwqAgQEAgLTI4OSw4ICsz
MDEsMTUgQEAgc3RhdGljIF9fcG9sbF90IGRtYV9idWZfcG9sbChzdHJ1Y3QgZmlsZSANCj4+PiAq
ZmlsZSwgcG9sbF90YWJsZSAqcG9sbCkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3Bpbl91bmxv
Y2tfaXJxKCZkbWFidWYtPnBvbGwubG9jayk7DQo+Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChldmVudHMgJiBFUE9MTElOKSB7DQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogUGFp
cmVkIHdpdGggZnB1dCBpbiBkbWFfYnVmX3BvbGxfY2IgKi8NCj4+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBnZXRfZmlsZShkbWFidWYtPmZpbGUpOw0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC8qDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFBhaXJlZCB3aXRoIGZwdXQg
aW4gZG1hX2J1Zl9wb2xsX2NiLA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBTa2lw
IHBvbGwgZm9yIHRoZSBjbG9zZWQgZmlsZS4NCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICovDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFnZXRfZmlsZV9yY3UoJmRtYWJ1
Zi0+ZmlsZSkpIHsNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV2ZW50cyAm
PSB+RVBPTExJTjsNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRjYi0+YWN0
aXZlID0gMDsNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gY2xlYXJf
aW5fZXZlbnQ7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQ0KPj4+IMKgIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmICghZG1hX2J1Zl9wb2xsX2FkZF9jYihyZXN2LCBmYWxzZSwg
ZGNiKSkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIE5vIGNhbGxi
YWNrIHF1ZXVlZCwgd2FrZSB1cCBhbnkgb3RoZXIgd2FpdGVycyAqLw0KPj4+IEBAIC0zMDAsNiAr
MzE5LDcgQEAgc3RhdGljIF9fcG9sbF90IGRtYV9idWZfcG9sbChzdHJ1Y3QgZmlsZSAqZmlsZSwg
DQo+Pj4gcG9sbF90YWJsZSAqcG9sbCkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQ0KPj4+IMKg
wqDCoMKgwqAgfQ0KPj4+IMKgICtjbGVhcl9pbl9ldmVudDoNCj4+PiDCoMKgwqDCoMKgIGRtYV9y
ZXN2X3VubG9jayhyZXN2KTsNCj4+PiDCoMKgwqDCoMKgIHJldHVybiBldmVudHM7DQo+Pj4gwqAg
fQ0KPj4NCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
