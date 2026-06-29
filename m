Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MAYbLVZcQmrS5QkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 13:51:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4654A6D9A8F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 13:51:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=tWpTrrwJ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D3964049D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 11:51:49 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012051.outbound.protection.outlook.com [52.101.53.51])
	by lists.linaro.org (Postfix) with ESMTPS id AEA134049D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 11:51:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ooAGdF91hUfFJtCaqgsV6f4wlcdeG0Ts5u4cxW8sYLeF/x0i5T1d+80j+g1YHsskgJurdFVdKkwfLm9wGjs/RiDhc08sPvy8bb4SVcbXl3hPK0VZHwZBLiIXD7z7fdD/ktH2yfB0p/xW4BDwWrV7NspSjcY+vfX+tFJs5jMM/drSmuXfkr8/Ir1eTop0qkWkrNgoT9fJrPJ0fGNntnJ/Bn0VsAXMZjYH45uQbz601UPDAzsQacPnw2rLBS2ioUM6eugvr4K1SqAjHq4UVcNC8Hw3I0qnQdMqJCxjHohHp+mOZu4eZdUmc00TmCriPoNONxVp+WbgMUG3zpQYzEAyag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B3t+ebOpMMIl0e+sC41QYgakyNsbA9ur65Y+UuAt1LA=;
 b=o0y/lO9Cv+7kyzIHzvEdU8cCWdqRu570LhAleQQ1oKxvy7vVbB9mqzB62KgTjcqXUBNlVeHcJ6mJ2EIfnpl6a4lBSv4NIA8ibYPTNghTZ2GkIG3YTU4fazgvaCauww+dZP/L8fSGWvyjFflx8m+LlA9cOwdqNsIzrAarXVMSOVIPf1OttgCSnoAl+QBjMFXKoC8uGxIn7CbAkpMo4aatWv4QnyHxEBu4Zv/8fdADYshMqNiPRRyMnG/xJy0ehPl3yCPc+l/1fCHPWRJwClWvlhJC7bYuM70xu8BFZ4yoR/sAbbdrZtO1pECo7sQ5k9+Y1PbBlSckaO3KrQRCdDqP2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B3t+ebOpMMIl0e+sC41QYgakyNsbA9ur65Y+UuAt1LA=;
 b=tWpTrrwJTgl13ftbgWk0YRyNB1auzmto/3p6rG23H90nd0PxbhQQKroncz64bDV/FrBXRxj6iD8cILbuglzuhh5sehsH56MW3Csno+wUhFk9j0uahRe6PxpfWRbQOFvrOJwZz6KrYGJf7wIEhuDTKQB5FWVDY+Wt5ulvI471rro=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB7524.namprd12.prod.outlook.com (2603:10b6:610:146::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 11:51:36 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 11:51:36 +0000
Message-ID: <b2fa3540-a2cb-4ed6-886c-e1fbe4d8e289@amd.com>
Date: Mon, 29 Jun 2026 13:51:31 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Baineng Shou <shoubaineng@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20260629031346.3875683-1-shoubaineng@gmail.com>
 <becd29b5-9e40-4104-b6c9-3d91e2ddddff@amd.com>
 <058f4bb261e408cf17deca9ff7354460675eacbf.camel@mailbox.org>
 <66344c20-ea97-4dfa-ac42-c9d6e061eb95@amd.com>
 <7dc78d8ae9903c215ec492ee39b27cc504da8307.camel@mailbox.org>
 <349ada65-c788-4c5e-9992-0278cf1382dd@amd.com>
 <9bd4bd923eacca9da25b6b9fda33057455d084c3.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <9bd4bd923eacca9da25b6b9fda33057455d084c3.camel@mailbox.org>
X-ClientProxiedBy: BL1P221CA0029.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::25) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB7524:EE_
X-MS-Office365-Filtering-Correlation-Id: c43edd55-2878-4f26-bd0a-08ded5d4c5c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|7416014|23010399003|376014|1800799024|18002099003|22082099003|5023799004|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 
	J+LYUvz03dzphNW+TxfFlOPhW0aP58OS0lcLmGtx0rsuClGb6qWHe6sdsFa5oSdHUntjxPoYH6uMbe/+Qkx8esSlqASV+mS5cEGGpFpAmpE7Oaz1RbxeGwK0vKmFnmtxzZX06RkZciCxehoO9I3VpmXLFOVmyJsWDhNNpQakccZ4HoTX8kthLIfsT4W2/Ot751kfVpTt3590hyUqSldq33Tr1rmPgThso8c+iNZubnQkLod5wUk+xR5SrgjBWMPTCAvUvqzwWrd0tNAzdoMOl8HMjg7d2C94GPPr/OXRZDDq5If6URMSUdQzLIFu1IaGVhlvy27MwZ7Jc5LtDj5cEnOqa5W17RmRsIvF6i/kvIBc/WTqOI3VZOqUfYVIZ8RG1BeeupcTtnN0n7wuHgJMInJGNqBqMswMLZaDgCDEz5WggNjHf2hokXGSOZPIk42DT8qBslv2bYr8twzBryTZMCu/7cu5q9BQAL9JSA0jj2aXInt2q4zpNbaCqD0z+YaRyIVGoy2vZhN/YL83ydAaLDHiyi9tM1M8QAR/dD1ObZxlyPc5ax1xlsIgkQumxsZQwnN6kTS6JADge/Ta5fG/A5Fr9MOOJfDBgp8g7Ovem2iPAJXty9Qv1I9v9aOGu0HqE8pEwJe2CcMt33GX/UYl7/DaRA8LCtGtyRkuyOshDg4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(23010399003)(376014)(1800799024)(18002099003)(22082099003)(5023799004)(4143699003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NnVyTEpDZTFwT0t0M2tYNG9aZHJIRitzUWIwSlVsOWcxam9taURma3ZpMWJi?=
 =?utf-8?B?QVIwYzAwcXduM3lIK3NEUVhjdVJaOWo1ajFMdDhPYmg4M2tNWlQzSUQ0dUth?=
 =?utf-8?B?Z1RGR1Z2aElJdUV4bmJkdW94K2FBN0M0UDlwd1hSdnBMcjVhZjVZNnMrd1JO?=
 =?utf-8?B?Qzd2Wk9UNnorWmk5aWhvSFl4U1Iyc2s2U0haOVlyMnFYVzVEZi9WYkhhYUZW?=
 =?utf-8?B?OTN6SzNNa0dpSDRaNVBjOFcyR0dVMVRscHJaanFuYWc0Qk04MkttT3Y1WUI1?=
 =?utf-8?B?S1NRRGZ5M3BzdzhZVVMrR0QyU3ozQmEyOEQvdlZMQXNZUGlodGNjcWpiZGNT?=
 =?utf-8?B?ZjA1andSWkovdUtoblpZT2I5WXErV0dRMkoySmIwOWw3QmtaMVR1UmQ2T0NY?=
 =?utf-8?B?Z0FqOTVHbG1YNVFhWWVhUWVkT2RRTzlLeWRYOG03TUhybDNsQ0k1TFFrODBP?=
 =?utf-8?B?YWNua2NJN2JkY2hqTjZKaVcwN3VsMkNDMDBFM1J3Sk03RW5vZCt1NVFiS1VT?=
 =?utf-8?B?bzlyaUxXeHhSQ0JkTnk1dzQyNVRjb0N0KzkrSHdUVFFneHVFZlZ1dEhIVGov?=
 =?utf-8?B?QVRpelBKWWdSbmZlZnRVR2VPM0N1aytKZHNKT2lIaXo2aStPMHVMNUo5UDhq?=
 =?utf-8?B?NlZaWFo0MlZ2MHcreTZQMENSakN3cHI4WFhKbkZidklSSmNBSFJNdWw5RWk2?=
 =?utf-8?B?Q0tSZk9IOHRmblQ2UnpQYlc3STY0QVp6MnFwVHUvZkV1WUZjcmYyNU9xMUQw?=
 =?utf-8?B?NEF1ZWlmSllpSDE5MDlBTGxaR0ZBOGl6RXNwMmRnN2lZMDgvbFNnUktXaTVK?=
 =?utf-8?B?T3RhbXFMTnd0SkR0MVpUTmlyVHdOVGRjZWRZYTZQaWx3UUdMMk5ZWExadTNJ?=
 =?utf-8?B?NFN5bEdGNEpIM2dLZm1EeW1JSUhGNmozSStBRnY4cFVJMXRUbXlOUEszMzlF?=
 =?utf-8?B?WE5FWW5xUWorRC8xczhkMm0wN1p1VS9lWlhPWGM2eEN3VW50MkFCVnBSY1hS?=
 =?utf-8?B?eEdjQmZJZTRyUFFnMWx6Q093NkU4VU1Nd2J4T2gyaHl3WWh1N2RqNlBUb0Vj?=
 =?utf-8?B?YkxuOVJTdVp2NXFsQlBjTHNRS2pNM2N1eCs0eW9sRVJ1VnQ1dEI2dUUyTFh0?=
 =?utf-8?B?R1ZDRkxjd3Q0M1lqQ2EwSHVsa3grVTg3cVJoTlcvUnk1UlV0SlJrOVo3ajNU?=
 =?utf-8?B?bW85c0FNVVg1SFZzRjZ4TUdnVVNBbFRkNmVhZGkzWFNMVDVNR2RRcGE2OU1X?=
 =?utf-8?B?ZUMra041UmtUdkNLcFBkY0FUKy9kclg5QVVsRzFsR3pVdzVPektLdGFQR1hU?=
 =?utf-8?B?alZsVENOMzhlY2dtZEg4eTlUWE5mUUZJVGIybVhZekw1UGNyWWNhTk02K2JC?=
 =?utf-8?B?dlNKS0JnREJHYm9CNU80a0tUZEJERCttdG1sL3ZGbEFZUGRMMThvNFY4anhx?=
 =?utf-8?B?TG4xOEtKTEdnRjQrMkZYd1ZYbHZ5cG9HQS82MWdZUVRlM3VGZjlJaEpkSVVH?=
 =?utf-8?B?SEFUaHJXSWVNalA2VmpnSjlBU2NoenAvMmlQdTE4ZFUyWHgxYXY3OGpKbWM3?=
 =?utf-8?B?cFdKbHY2WWZ1R1NrTnZJWXgrSDQzSmZUNWRRS2lFc1huaUl0MnU2bHptUnV3?=
 =?utf-8?B?M0h0NlAremF5Z3c0U29IWjhTTjRtbmJRQmxleHBUTU5xVytiYWdOUnpyYUVp?=
 =?utf-8?B?MkNzRUFKSEdlRGUrQjhlbllCc0szbEpKNVZBOUVxQVBxVmlVdVE1SFN3bVdI?=
 =?utf-8?B?TTgxQWRVbmVTRXowTFBVbG1vOWhQMDFhdFFlK2FzT3RRcGdEZ2NGaXdib0Rp?=
 =?utf-8?B?c3RuU0x3UGVRTnhRS1NwdGNuTnBtdkhNMVk2ZlpoeFlObUphTW9BelRWUHlz?=
 =?utf-8?B?UkxGaTZtVU1kemszcEtFTDNjZUZjc2hYeHZpeWFnT2NwbS9jU2xKZGIyTGRj?=
 =?utf-8?B?cThiMjVzZWZvWE9kRU9qVjNOT2NIVklncVhjUmVrU200dEV4SytlbnRLdEJP?=
 =?utf-8?B?aEhONFQ1dTF6K083ZkFNU0NEYVdzYzQzMGp0TGNuY2tBakVBM0QvVFczbTdV?=
 =?utf-8?B?ZVQ0bDRZVXIrWjZlQVlPY1JwQWJrNlVmLzZlZkFrZnhsYk43dCt3MmN3d0Ju?=
 =?utf-8?B?YXJQVjZFRWdpaGFTQU0rMngyVkQyN05SdkNrQUpqZFFZQjUwTmlVSVc2R0Fy?=
 =?utf-8?B?WUhLN0hpRC9aOXR2ZnM3YjlkYXIyR2tnZWREWFJBWU9mRk8yR3g2dkR3VWdE?=
 =?utf-8?B?VHZuaWxyOTBaV3FUVmY5UU9JVEpRT0ZQZ2VDUHQ5V3NZNUJUU2p0NUtxL2x5?=
 =?utf-8?Q?RKBAPDJqBlP1m0fZcE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c43edd55-2878-4f26-bd0a-08ded5d4c5c3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 11:51:36.2187
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FFcSJEZ7e3p+hV+Gjl3OaM0DPX4sLByshjGXAx9TLOejA0FSTy3jljqc7JZV+rI4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7524
X-Spamd-Bar: ----
Message-ID-Hash: H46UNAWNSL63MCYRZX7M6EVEDPVBE4KB
X-Message-ID-Hash: H46UNAWNSL63MCYRZX7M6EVEDPVBE4KB
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Make dma_fence_dedup_array() robust against 0-count input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H46UNAWNSL63MCYRZX7M6EVEDPVBE4KB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:tursulin@ursulin.net,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4654A6D9A8F

T24gNi8yOS8yNiAxMjoxNiwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBPbiBNb24sIDIwMjYt
MDYtMjkgYXQgMTE6NTIgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBPbiA2LzI5
LzI2IDExOjA2LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+Pj4gT24gTW9uLCAyMDI2LTA2LTI5
IGF0IDEwOjUyICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+PiBPbiA2LzI5LzI2
IDEwOjQ5LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+Pj4+Pj4NCj4+Pj4+PiBJIHdpbGwgYWRk
IGEgQ0Mgc3RhYmxlIGJlZm9yZSBwdXNoaW5nIHRvIGRybS1taXNjLWZpeGVzLg0KPj4+Pj4NCj4+
Pj4+IE5vIG9mZmVuc2UgaW50ZW5kZWQgb3IgdGFrZW4sIGJ1dCBkb24ndCB0aGUgRFJNIHJ1bGVz
IHNheSB0aGF0DQo+Pj4+PiB0aGluZ3MNCj4+Pj4+IGRvIG5vdCBnZXQgbWVyZ2VkIHdoaWxlIHRo
ZXJlIGFyZSBvdXRzdGFuZGluZyBjb25jZXJucyBvcg0KPj4+Pj4gc2lnbmlmaWNhbnQNCj4+Pj4+
IHBvaW50cyBpbiByZXZpZXcgZmVlZGJhY2s/DQo+Pj4+DQo+Pj4+IEkgaGF2ZW4ndCBzZWVuIHRo
YXQgYmVmb3JlIHdyaXRpbmcgdGhlIHJlc3BvbnNlLg0KPj4+Pg0KPj4+PiBJIHVzdWFsbHkgZ28g
b3ZlciBteSBtYWlscyB0aWxsIHRoZSBlbmQgYW5kIHdhaXQgYSBjb3VwbGUgb2YNCj4+Pj4gaG91
cnMgYmVmb3JlIHB1c2hpbmcgYW55dGhpbmcuDQo+Pj4+DQo+Pj4+PiBXaGF0IGFib3V0IG15IGNv
bW1lbnRzPw0KPj4+Pg0KPj4+PiBMb29rcyB2YWxpZCB0byBtZSBhcyB3ZWxsLCBidXQgSSB0aGlu
ayB0aGF0IGlzIGEgc2VwYXJhdGUgaXNzdWUuDQo+Pj4NCj4+PiBCdXQgaWYgd2Uga2VlcCBpdCBh
biBpbnRlZ2VyIGZvciBub3csIGFuZCBpZiB0aGF0IGNoZWNrIGlzIGFkZGVkLA0KPj4+IGFuZA0K
Pj4+IGl0IG1vc3QgY2VydGFpbmx5IHNob3VsZCBhbHNvIGNhdGNoIG5lZ2F0aXZlIGludGVnZXJz
LCBzaG91bGRuJ3QNCj4+PiBpdD8NCj4+DQo+PiBNYXliZSB3aXRoIGEgV0FSTl9PTigpLCBidXQg
bm90IGFzIHJlZ3VsYXIgY29kZSBwYXRoLg0KPj4NCj4+IFRoZSB0aGluZyBpcyBJIHRoaW5rIHdl
IG5lZWQgdG8gYmFja3BvcnQgdGhpcyBmaXggdG8gc3RhYmxlIGtlcm5lbHMsDQo+PiBidXQgc3dp
dGNoaW5nIGZyb20gc2lnbmVkIHRvIHVuc2lnbmVkIGlzIG9ubHkgYSBtaW5vciBjbGVhbnVwIHdo
ZW4gbm8NCj4+IHJlYWwgdXNlcnMgYXJlIGN1cnJlbnRseSBhZmZlY3RlZC4NCj4gDQo+IEZpbmUg
YnkgbWUuDQoNClRoYW5rcywgSSB1cGRhdGVkIHRoZSBjb21taXQgbWVzc2FnZSBhIGJpdCBhbmQg
YWRkZWQgRml4ZXMgYW5kIENDIHN0YWJsZSB0YWdzIGFuZCBwdXNoZWQgdGhlIHJlc3VsdCB0byBk
cm0tbWlzYy1maXhlcy4NCg0KQEJhaW5lbmcgaXQgd291bGQgYmUgY29vbCBpZiB5b3UgY291bGQg
d3JpdGUgYSB0ZXN0IGNhc2VzIGZvciB0aGlzIGFzIHdlbGwuIEUuZy4ganVzdCB+MTAgbGluZSBp
biBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jLg0KDQpUaGFua3MgaW4gYWR2
YW5jZSwNCkNocmlzdGlhbi4NCg0KPiANCj4gUC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
