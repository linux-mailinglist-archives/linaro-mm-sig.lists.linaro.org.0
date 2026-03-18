Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOEbKZhgumnFUgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Mar 2026 09:21:44 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B4B2B7CEE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Mar 2026 09:21:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0878D3F9B8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Mar 2026 08:21:43 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010019.outbound.protection.outlook.com [52.101.56.19])
	by lists.linaro.org (Postfix) with ESMTPS id 057693F9B8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2026 08:21:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=FLDrvCrg;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.56.19 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jEc9b2v+ZDo2uaDh4q43NssfLDpq4CDYLq6oRNMIwFz+Kec0XZINIc0O4l7ZFv0xJAygiWoLqcj1nmNEjDkFPkprZ1QCnRMmyS15/qOQ5GpS9oAaC6nz3HFEKlgEvam7hV4LGnJ/cwqS9Jd2NpYBsZmWKIE9qtq1r9r4lnpfBeHWalGz6TITE1EFZXcm+BuRvkczT400hzivAP3sB5ICeur8rzQwFXVLWfwo7G44FvbZ+rubXrhoXEnrAXJU9zOaBkLVdJeXMpeY6riQ/fSesh+rfsws/U1B8qBuio9NJUjGBjGwbVwO7jQQd0DvQyI9uL2ZRPz4O33Mog+3M7m6Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=clmqi+7yDCnyreBPUAIP/mNVfOPKtXF2ycLUwzk6Ap8=;
 b=IS0k1msay6bF/LgR3U57RHyhA2yaIFiJDAXj32D9eU8vBDXRs1zWCUJdNi9wa8eRUHYUbMy537L/dXcvc17i4ctjGvf9qWtaYoAcL3eO8x0XLvKi3Qdk003V0HVjzlOyrM9e18nnWIgmus+gdt8mSmo9BPiJpYlGA6RytH4QjDBQvh6oQU74YKO/ZFVndS36y8BOBa2iuC4BLe0/aLMYhiACwWX06+Ze8kYmDshf0yq7qerFJVUZPItB1WItasnsbNS4nsGt4vaho0P6t84pDHYwy0EVWMLBE9l+95SwV+EV351A9Up5NTPYyzcEt+JdXk+2KpWKryqOIphDOrbKNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=clmqi+7yDCnyreBPUAIP/mNVfOPKtXF2ycLUwzk6Ap8=;
 b=FLDrvCrgTfVKt0FoAOjgVvLIhpnrnFvMZQ3rQUyrYrn+MFKNTVQWQkZIwmVZgJ8sn69RMRb3gzkMRSX0hlFXeihV4Zd978WbgtYD10U8KoYd3rkk5KJrSfZzLemHdP7jmWJqGbnQQCV14BUuACCBWjtm7YJitnZztCiWamlt5SU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB6581.namprd12.prod.outlook.com (2603:10b6:8:d3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 08:21:38 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9723.016; Wed, 18 Mar 2026
 08:21:38 +0000
Message-ID: <3e7ce7bb-75ab-4f73-8a5d-dabd5d56cd61@amd.com>
Date: Wed, 18 Mar 2026 09:21:34 +0100
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20260317144825.2318-1-christian.koenig@amd.com>
 <20260317162147.4a7f03ff@fedora>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260317162147.4a7f03ff@fedora>
X-ClientProxiedBy: BN9PR03CA0953.namprd03.prod.outlook.com
 (2603:10b6:408:108::28) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB6581:EE_
X-MS-Office365-Filtering-Correlation-Id: ede7a74f-5708-432a-e6fc-08de84c76038
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	3diwPPhckn6PEGAZAptmjeavQbqBRlfPBIf0hDWpZ/CCdrCZGOkV366ruUOGtht519Fo4LvSti5gSyww0Eb77fBsy03/zS8My4L6piI8XACRmJB1mj7y90oVVp4/EuPnuM9YOmLuKuds0ubkO5VsIl4a5cFaYy2LlrluxnJoWKvU9icf18foc8kBBGo5deifuEZuq0FIMzkS07AZlw3iHgY6K+qSIJlru//BI+PomD7JPk138f+BSuYWyBSZv/81DNJAQrmf7LJFOEGhN6u69x84t7LK42itd7o2mazfg9L2TOYWoGFx2sYuSKj48guaITNcKLLKZAHmcwWBsGHTqb8irQ9A1sOQ9m4o2EXJ/1VDuWzpktNANcuDd9z4uFBcnXyzgxpdkxFRAlU3DxuJxngFrN8K9aeusg98vvc6iZwiPkKiR81fibA+TFICZVUs9PsYCrWWsaPortSCQnnHYd28dDtDmLHKd/q494m9k438OhUeZb77ypMEsfiSfmpFXWPTJwEYLZvEMLLPejxnM9CfoRVjxZUtck+qBFwwUcgqzpB3PlQXtY7NpbyDbDwrIL2+YuWKq/Yy3lHD0cbPooo3x6GQN7/1E8PX6oX6pR4uoxlaCoMXL8pM7CygDTPnaUyLsuu9VpR/Afuum1Gtvfh9/PIakBCF50SQBEF6RjnMxVS5BbLoxixuRKf7E2u9sxUwKQb+owlNYyScCOXyV+nbw3MUJDpIK4ieUgseYZ0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Mmlua0FWbmJVOXBDQXljeUdsRzVvcHBIRUV3M1VKenFucXdPUU9JSi9ZOTZy?=
 =?utf-8?B?clozM1dtRkZma01teUFsWWVzbmRRaDd1L1daOURlQ0R6V2JCd3B1cDBwN1JW?=
 =?utf-8?B?NVRsbVpTaW9DemlkMVJRbHVLeUZVeVlhZnJETktSQkxSbG9ZT3hEejV3UVMz?=
 =?utf-8?B?MG1Fdk1DS0JtNWp1Sk5tOW90cmlVM1FaTHRyd2JNdi9qNDRUMTQyalppUUdX?=
 =?utf-8?B?eVRpblU0dFAzcVVBd1cvNXFZcmF4OVVBY2UzdjFod2J1cmRqR21FTHNMZDNn?=
 =?utf-8?B?c1hzY3FFUFo4elo3ZzdaRU5VMUw3c2RvdlN6dWFLRlA5Z285YmlZWU8yV2pn?=
 =?utf-8?B?Y2d1aml0TU5lVkovSHRTRUFSZDBkZm56ek11eExmZ3l1MExSUTJZaDlXOXBW?=
 =?utf-8?B?SmcrZ2lPb2krb2RaNXAwM0I1T1lyc0hPSFJSbUNCQkZlMFRYblNjdEVYYU9U?=
 =?utf-8?B?aDd0OXpIY1A4aVRNdTFZNFFGUWdUeGtqWHhaNVZPQ2dvVzlTbUNkOFNIZTZv?=
 =?utf-8?B?UXRrRWFEVnZLb1hkcFBsOXVBTGsydjZTQ0FHK3RwVkQ2RG9GeVNIRTAwOTZX?=
 =?utf-8?B?ZU5mWVE3aGl6RnBrOTY3Z090UUxHVFdpRG43TjMxelFSRU8zUit0bzA5NVZx?=
 =?utf-8?B?cDdwYWkxcEJra2dJNUJYWjR5clFkdmsrcWltTzluTVpuMHlxcUpQTm5uam92?=
 =?utf-8?B?bEtTK2JiTm1aU0dvczZqM1Vxd1k4RzlaZnJVSVpMUTZKLzFVKzU5bXZDUXlR?=
 =?utf-8?B?VE1xQkhwK3pyTCtYNFUyWENsUjlLd0JKUWl1dmIvNlljZ3J1V1h2c0ZKV2tD?=
 =?utf-8?B?ZDdodU5lbFYwTWhUak9rWkloNEtycCtaN3lvWVZWVmZQVk16UlZ2emFmVkNq?=
 =?utf-8?B?L0tqcUVZcG1MQTV0VFRTbitSaCtiTGZYWFkyTUpjbTMyNGx0S1d2NWlpMFF3?=
 =?utf-8?B?UmhQU3ZBbGRadlExSVh2RGdIQkNxZGlaVWZXQWV2dUxwNGtDWGpPUzE1cmlS?=
 =?utf-8?B?bkJsUWhPbkpPQzZGL1N1RXlpUCtmWklTT1VpeXlOcXc0blQ1bmRjZWdScXY3?=
 =?utf-8?B?SFNmVDlGaWF3dkFrUU1Bc3pEZ1FxWTdWN3NMaytUcW84NmlVY1JoMDd5b3Fv?=
 =?utf-8?B?cE5YMU1iMnI0Q2NSN1VockdYeHI0c2Z6dDQreHJqQnEyZWFEM1dFa2RzZllR?=
 =?utf-8?B?bWxVdkhacGJaYk9ZVG5kRFZYTDNQZGJyb3VuL0x1R1JMSkkrTkYrekVZSllF?=
 =?utf-8?B?SXduM2h1ZHM4SXBnSDdkMjkvcXZia2p4ZVdWQ09EUHppbmsrdU9JN2lSQ0pM?=
 =?utf-8?B?U01KMkIzZHFGQ3ZMWHBWYU9lVEc0VyttNzZnQ0dzRnJKOFN0SzNBeVNVY2U5?=
 =?utf-8?B?bnpCYWl5amRCellIYWZsa0RPZXhrU09seE5FdDZVYXR6TVQ2K2kxbldzWnJV?=
 =?utf-8?B?eFlDTWUwcTJrVUlWRVVzTjl2bVEzTUtvdDJlSktmS21VT01iN2o5OS9wTHZq?=
 =?utf-8?B?dTVobUt4SUpBYzBFQTNMOXlYbEt3NnNoWTkwcWNzZ1lhd3ZlQ1lzb0I2ZkFt?=
 =?utf-8?B?b1dlek5PRTBrcjhrZXlwWFVOZ2RCNGZIT0YxV2dKZUNLUXFBT0d0eWNpeEVl?=
 =?utf-8?B?am1LazJONUtUVnJreEhUR05lUXlLOGMyeVlsbzFPSlI4Q05qcllrd1o5MFhG?=
 =?utf-8?B?WTh6cmpDL2MvazE1Q0E0QUtubGw3TDh5NHV0bEx5ZUlpTDlVeDNmcXUySjFv?=
 =?utf-8?B?MEFnUmlKbjZMNlVsU3JaOENxMDc3dFU3cm9zMmpqQVdXLzk1WWRYeEFGaExE?=
 =?utf-8?B?NmZtdXk2eElxMmFDQnNLalZ0MFlpSDRvL1FvMHVBWnc3Y1dHUUhYdkpjYkN0?=
 =?utf-8?B?dExjaExFTUtjdC8vcmFpTUxpWFlUdXJOb3NHTHllMC9RaU1aaFlvV0NlZHFB?=
 =?utf-8?B?VnF5V0NCck03eUo3QmNYUjdJQXowZ2VTZVhnK2RLbDZxODIrQmpuZ1dtT0hy?=
 =?utf-8?B?SDBDL3Jsa1ZZZm9PVTRqYUN6R0NDQ2I2Sms0bG16cUxjNjErTjgzRzNncHZo?=
 =?utf-8?B?WjFYNDU5SERNRS9uN2ZOcGpLeVAzbytNdXE4S2Q0YWVSSmhSTVFUcEpJWUV5?=
 =?utf-8?B?TXJVOThoUm05NDI1dkpnN09takwvSzVzVFdTQWErbVNxMG0zZXFoRThPekUz?=
 =?utf-8?B?aWNiVUsxKzEydzc5NVM4VmFFdnAzcm5zU2ZZekU5SFF1WkRWV1kxaDF0SnBw?=
 =?utf-8?B?OXFBdldBdkQzaytnSFRTQS8zM0JCbG5IOC9FRDRtTk9BMytGT3JCbnV6VW9D?=
 =?utf-8?Q?LN21MoAGuqxbNU9Vou?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ede7a74f-5708-432a-e6fc-08de84c76038
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 08:21:38.4676
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bkUX1uO8rfQLUDt64voDQdpn5IcXFjhIfNZrxV1VLRiPQmwRbE7C3nE2kPDbzUOt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6581
X-Spamd-Bar: -----
Message-ID-Hash: MHNBNOCBUVCT2C6PD3RJMGPMKSAYRWYC
X-Message-ID-Hash: MHNBNOCBUVCT2C6PD3RJMGPMKSAYRWYC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: phasta@mailbox.org, aliceryhl@google.com, gary@garyguo.net, lossin@kernel.org, daniel.almeida@collabora.com, joelagnelf@nvidia.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma_fence: be more defensive in dma_fence_release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MHNBNOCBUVCT2C6PD3RJMGPMKSAYRWYC/>
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.667];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,amd.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 18B4B2B7CEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMy8xNy8yNiAxNjoyMSwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiBPbiBUdWUsIDE3IE1h
ciAyMDI2IDE1OjQ4OjI1ICswMTAwDQo+ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2tvZW5pZy5sZWlj
aHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4+IEluIGNhc2Ugb2YgYSByZWZjb3Vu
dGluZyBidWcgZG1hX2ZlbmNlX3JlbGVhc2UoKSBjYW4gYmUgY2FsbGVkIGJlZm9yZSB0aGUNCj4+
IGZlbmNlIHdhcyBldmVuIHNpZ25hbGVkLg0KPj4NCj4+IFByZXZpb3VzbHkgdGhlIGRtYV9mZW5j
ZSBmcmFtZXdvcmsgdGhlbiBmb3JjZSBzaWduYWxlZCB0aGUgZmVuY2UgdG8gbWFrZQ0KPj4gc3Vy
ZSB0byB1bmJsb2NrIHdhaXRlcnMsIGJ1dCB0aGF0IGNhbiBwb3RlbnRpYWxseSBsZWFkIHRvIHJh
bmRvbSBtZW1vcnkNCj4+IGNvcnJ1cHRpb24gd2hlbiB0aGUgRE1BIG9wZXJhdGlvbiBjb250aW51
ZXMuIFNvIGJlIG1vcmUgZGVmZW5zaXZlIGhlcmUgYW5kDQo+PiBwaWNrIHRoZSBsZXNzZXIgZXZp
bC4NCj4+DQo+PiBJbnN0ZWFkIG9mIGZvcmNlIHNpZ25hbGluZyB0aGUgZmVuY2Ugc2V0IGFuIGVy
cm9yIGNvZGUgb24gdGhlIGZlbmNlLA0KPj4gcmUtaW5pdGlhbGl6ZSB0aGUgcmVmY291bnQgdG8g
c29tZXRoaW5nIGxhcmdlIGFuZCB0YWludCB0aGUga2VybmVsLg0KPj4NCj4+IFRoaXMgd2lsbCBs
ZWFrIG1lbW9yeSBhbmQgZXZlbnR1YWxseSBjYW4gY2F1c2UgYSBkZWFkbG9jayB3aGVuIHRoZSBm
ZW5jZQ0KPj4gaXMgbmV2ZXIgc2lnbmFsZWQsIGJ1dCBhdCBsZWFzdCB3ZSB3b24ndCBydW4gaW50
byBhbiB1c2UgYWZ0ZXIgZnJlZSBvcg0KPj4gcmFuZG9tIG1lbW9yeSBjb3JydXB0aW9uLg0KPj4N
Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCj4+IC0tLQ0KPj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDE4ICsrKysr
KysrKysrKysrLS0tLQ0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+IGluZGV4IDE4MjZiYTczMDk0Yy4u
OGJmMDc2ODVhMDUzIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
DQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+IEBAIC01OTMsMTQgKzU5
MywyNCBAQCB2b2lkIGRtYV9mZW5jZV9yZWxlYXNlKHN0cnVjdCBrcmVmICprcmVmKQ0KPj4gIAkJ
LyoNCj4+ICAJCSAqIEZhaWxlZCB0byBzaWduYWwgYmVmb3JlIHJlbGVhc2UsIGxpa2VseSBhIHJl
ZmNvdW50aW5nIGlzc3VlLg0KPj4gIAkJICoNCj4+IC0JCSAqIFRoaXMgc2hvdWxkIG5ldmVyIGhh
cHBlbiwgYnV0IGlmIGl0IGRvZXMgbWFrZSBzdXJlIHRoYXQgd2UNCj4+IC0JCSAqIGRvbid0IGxl
YXZlIGNoYWlucyBkYW5nbGluZy4gV2Ugc2V0IHRoZSBlcnJvciBmbGFnIGZpcnN0DQo+PiAtCQkg
KiBzbyB0aGF0IHRoZSBjYWxsYmFja3Mga25vdyB0aGlzIHNpZ25hbCBpcyBkdWUgdG8gYW4gZXJy
b3IuDQo+PiArCQkgKiBUaGlzIHNob3VsZCBuZXZlciBoYXBwZW4sIGJ1dCBpZiB0cnkgdG8gYmUg
ZGVmZW5zaXZlIGFuZCB0YWtlDQo+PiArCQkgKiB0aGUgbGVzc2VyIGV2aWwuIEluaXRpYWxpemUg
dGhlIHJlZmNvdW50IHRvIHNvbWV0aGluZyBsYXJnZSwNCj4+ICsJCSAqIGJ1dCBub3Qgc28gbGFy
Z2UgdGhhdCBpdCBjYW4gb3ZlcmZsb3cuDQo+PiArCQkgKg0KPj4gKwkJICogVGhhdCB3aWxsIGxl
YWsgbWVtb3J5IGFuZCBjb3VsZCBkZWFkbG9jayBpZiB0aGUgZmVuY2UgbmV2ZXINCj4+ICsJCSAq
IHNpZ25hbHMsIGJ1dCBhdCBsZWFzdCBpdCBkb2Vzbid0IGNhdXNlIGFuIHVzZSBhZnRlciBmcmVl
IG9yDQo+PiArCQkgKiByYW5kb20gbWVtb3J5IGNvcnJ1cHRpb24uDQo+PiArCQkgKg0KPj4gKwkJ
ICogQWxzbyB0YWludCB0aGUga2VybmVsIHRvIG5vdGUgdGhhdCBpdCBpcyByYXRoZXIgdW5yZWxp
YWJsZSB0bw0KPj4gKwkJICogY29udGludWUuDQo+PiAgCQkgKi8NCj4+ICAJCWRtYV9mZW5jZV9s
b2NrX2lycXNhdmUoZmVuY2UsIGZsYWdzKTsNCj4+ICAJCWZlbmNlLT5lcnJvciA9IC1FREVBRExL
Ow0KPj4gLQkJZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoZmVuY2UpOw0KPj4gKwkJcmVmY291bnRf
c2V0KCZmZW5jZS0+cmVmY291bnQucmVmY291bnQsIElOVF9NQVgpOw0KPiANCj4gSSdtIG5vdCBj
b252aW5jZWQgdGhpcyBpcyB1c2VmdWwuIElmIHdlIGxlYWsgdGhlIG9iamVjdCwgbm8gb25lIHNo
b3VsZA0KPiBoYXZlIGEgcmVmIHRvIHJlbGVhc2UgYW55d2F5LiBUaGlzIGRvZXMgcmFpc2UgYSBx
dWVzdGlvbiB0aG91Z2guIFRoZQ0KPiBjYXNlIHdlJ3JlIHRyeWluZyB0byBwcm90ZWN0IGFnYWlu
c3QgaXMgZmVuY2VfY2FsbGJhY2sgYmVpbmcgcmVnaXN0ZXJlZA0KPiB0byB0aGlzIGZlbmNlIGFu
ZCB3YWl0aW5nIGZvciBhbiBldmVudCB0byBzaWduYWwgYW5vdGhlciBwcm94eSBmZW5jZS4NCg0K
Tm90IHF1aXRlLiBUaGUgcmVhbCBwcm9ibGVtYXRpYyBjYXNlIGlzIHRoYXQgaXQgaXMgbmVjZXNz
YXJ5IHRvIHdhaXQgZm9yIGEgZmVuY2UgdG8gc2lnbmFsIHdpdGggdG9ucyBvZiBtZW1vcnkgbWFu
YWdlbWVudCBsb2NrcyBoZWxkLg0KDQpTbyBpdCBjYW4gYmUgdGhhdCBhIHNpbXBsZSBtZW1vcnkg
YWxsb2NhdGlvbiBjeWNsZXMgYmFjayBhbmQgZGVwZW5kcyBvbiB0aGUgZmVuY2UgdG8gc2lnbmFs
Lg0KDQo+IEhvdyBjYW4gdGhlIHJlZmNudCBkcm9wIHRvIHplcm8gaW4gdGhhdCBjYXNlPyBJc24n
dCB0aGUgcHJveHkgc3VwcG9zZWQNCj4gdG8gb3duIGEgcmVmIG9uIHRoZSBmZW5jZS4gQmVmb3Jl
IHdlIGdvIGZ1cnRoZXIsIEknZCBsaWtlIHRvIHVuZGVyc3RhbmQNCj4gd2hhdCB3ZSdyZSB0cnlp
bmcgdG8gZG8uDQoNCldlbGwgd2UgYXJlIGluIEMgaGVyZSwgc28gaXRzIHNpbXBseSBjb2Rpbmcg
ZXJyb3JzLiBBbiB1bmVjZXNzYXJ5IGRtYV9mZW5jZV9wdXQoKSBpbiBhbiBlcnJvciBwYXRoIGlz
IGVub3VnaCB0byB0cmlnZ2VyIHRoaXMuDQoNCj4gVGhlIG9yaWdpbmFsIGRpc2N1c3Npb24gdGhh
dCBsZWQgeW91IHRvIHdyaXRlIHRoaXMgcGF0Y2ggd2FzIGFib3V0DQo+IGRldGVjdGluZyB3aGVu
IGEgZmVuY2UgZW1pdHRlci9wcm9kdWNlciB3b3VsZCBsZWF2ZSB1bnNpZ25hbGxlZCBmZW5jZXMN
Cj4gYmVoaW5kLCBhbmQgdGhlIHByb2JsZW0gd2UgaGF2ZSBpcyB3aGVuIHN1Y2ggdW5zaWduYWxs
ZWQgZmVuY2VzIGhhdmUNCj4gb2JzZXJ2ZXJzIHdhaXRpbmcgZm9yIGEgInNpZ25hbGxlZCIgZXZl
bnQuIElmIHRoZSByZWZjbnQgZHJvcHMgdG8gemVybw0KPiBhbmQgdGhlIGZlbmNlIGlzIHJlbGVh
c2VkLCB3ZSdyZSBhbHJlYWR5IHBhc3NlZCB0aGF0IHBvaW50LA0KPiB1bmZvcnR1bmF0ZWx5Lg0K
DQpXZWxsIHRoYXQgaXMgbm90IHF1aXRlIGNvcnJlY3QuDQoNClRoZSBtb3N0IGNvbW1vbiBwcm9i
bGVtIGlzIHRoYXQgd2UgaGF2ZSB1bmJhbGFuY2VkIGRtYV9mZW5jZV9nZXQoKS9kbWFfZmVuY2Vf
cHV0KCkgYW5kIHdlIGVuZCB1cCBpbiBkbWFfZmVuY2VfcmVsZWFzZSgpIGJlZm9yZSB0aGUgaXNz
dWVyIG9mIHRoZSBkbWFfZmVuY2UgaGFzIGEgY2hhbmNlIHRvIHNpZ25hbCBpdC4NCg0KU2VlIHRo
ZSBtYWluIHB1cnBvc2Ugb2YgRE1BIGZlbmNlcyBpcyB0byBwcmV2ZW50IHJlbGVhc2luZyBtZW1v
cnkgYmFjayBpbnRvIHRoZSBjb3JlIG1lbW9yeSBtYW5hZ2VtZW50IGJlZm9yZSB0aGUgRE1BIG9w
ZXJhdGlvbiBpcyBjb21wbGV0ZWQuDQoNClNvIHdoZW4gYSBETUEgZmVuY2Ugc2lnbmFscyB0byBl
YXJseSBpdCBtZWFucyB0aGF0IHRoZSBIVyBpcyBzdGlsbCB3cml0aW5nIHRvIHRoYXQgbWVtb3J5
IGJ1dCB3ZSBhbHJlYWR5IHBvdGVudGlhbGx5IHJlLXVzaW5nIHRoZSBtZW1vcnkgZW5kaW5nIGlu
IHJhbmRvbSBtZW1vcnkgY29ycnVwdGlvbi4NCg0KVUFGIGlzc3VlcyBhcmUgaGFybWxlc3MgY29t
cGFyZWQgdG8gdGhhdC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiBJdCBjYW4gYmUgdGhh
dDoNCj4gDQo+IC0gdGhlIGZlbmNlIHdhcyBuZXZlciBleHBvc2VkIC0+IHRoaXMgaXMgZmluZQ0K
PiAtIHRoZSBmZW5jZSB3YXMgZXhwb3NlZCBidXQgbmV2ZXIgb2JzZXJ2ZWQgLT4gdGhpcyBpcyBi
cm9rZW4sIGJlY2F1c2UgaWYNCj4gICBpdCBoYWQgYmVlbiBvYnNlcnZlZCBpdCB3b3VsZCBoYXZl
IGxlZCB0byBhIGRlYWRsb2NrDQo+IC0gdGhlIGZlbmNlIHdhcyBleHBvc2VkLCBvYnNlcnZlZCBm
b3Igc29tZSB0aW1lLCBidXQgdGhlIG9ic2VydmVyIGdvdA0KPiAgIGJvcmVkLCBzdG9wcGVkIHdh
aXRpbmcgYW5kOg0KPiAgICogZGVjaWRlZCB0byBnbyBhbmQgZXhlY3V0ZSBpdHMgc3R1ZmYgYW55
d2F5IC0+IHVzZS1iZWZvcmUtcmVhZHkNCj4gICAgIHNpdHVhdGlvbg0KPiAgICogZ2F2ZSB1cCAt
PiBraW5kYSBva2F5LCBidXQgd2Ugc2hvdWxkIHN0aWxsIGNvbnNpZGVyIHRoZSBmZW5jZQ0KPiAg
ICAgZW1pdHRlciBicm9rZW4NCj4gLSB0aGUgZmVuY2Ugb2JzZXJ2ZXIgcmVnaXN0ZXJlZCBhIGNh
bGxiYWNrIGJ1dCBkaWRuJ3QgdGFrZSBhIHJlZiBvbiB0aGUNCj4gICBvYmplY3QgLT4gdGhpcyBp
cyBwb3RlbnRpYWwgVUFGIG9uIHRoZSBkbWFfZmVuY2UsIHdoaWNoIGNhbiBhbHNvIGxlYWQNCj4g
ICB0byBhIFZSQU0vc3lzdGVtLW1lbSBVQUYgaWYgdGhlIGVtaXR0ZXIgZHJvcHMgdGhlIGRtYV9m
ZW5jZSB3aXRob3V0DQo+ICAgc2lnbmFsbGluZywgYmVjYXVzZSBvZiB0aGUgYXV0by1zaWduYWwg
eW91J3JlIGdldHRpbmcgcmlkIG9mIGluIHRoaXMNCj4gICBwYXRjaC4gIEJ1dCB0aGUgbGF0dGVy
IGlzIGp1c3QgYSBzaWRlIGVmZmVjdCBvZiB0aGUgZG1hX2ZlbmNlIFVBRiwNCj4gICB3aGljaCBJ
J20gbm90IGNvbnZpbmNlZCB3ZSBzaG91bGQgdHJ5IHRvIHByb3RlY3QgYWdhaW5zdC4NCj4gDQo+
PiAgCQlkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UsIGZsYWdzKTsNCj4+ICsJCXJj
dV9yZWFkX3VubG9jaygpOw0KPj4gKwkJYWRkX3RhaW50KFRBSU5UX1NPRlRMT0NLVVAsIExPQ0tE
RVBfU1RJTExfT0spOw0KPj4gKwkJcmV0dXJuOw0KPj4gIAl9DQo+PiAgDQo+PiAgCW9wcyA9IHJj
dV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
