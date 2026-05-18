Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAIFA8wlC2pAEAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:44:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF2056F187
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:44:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87A0C4095B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:44:26 +0000 (UTC)
Received: from BN8PR05CU002.outbound.protection.outlook.com (mail-eastus2azon11011025.outbound.protection.outlook.com [52.101.57.25])
	by lists.linaro.org (Postfix) with ESMTPS id 5423B4095B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 14:44:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=aJz4zn1Q;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.57.25 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cwNlmoXPt2vFimryUG+7TmHTmzhQdDa8X/DP2uzOYpmvdqPtACsWrtThhiEyguzmMvm2aAY3PV9xAQcsE9PFhxcKY3nnbGbj2kSri2UP2kC4S2r/2NEs6FWWPHF2tSzdqtVaFx1GRzuUmEZJwSm8afw1MGtL8DE3V9liraaLUjVG5Vpr3yWB34FwwJVdQRUhnGJmQtUQrVJT0BhqYpro6a4ER/LSuO/uyGxUeCvdyrELrJUG1yjzDgRgArjxE0pBSM3Prpwzrlk7G5K0t3Viil6YIaWCw92Kw4Ky+k9QvKyFa+iWcpZ8FeZYBrw25DP5oQms2Z6nFLRiHxeWEYScbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vcrQrf0j+PK9HGGTwzVzGunN0PF4Zt8tx1xVIJAtzrU=;
 b=SEJWeczV8Ni6/uyR6C3+BjpFpuS9Sdwi9t3SCjLmF+3gXiXieA5sM8iz2afJnj2FcUQ0s5DhKyHZtfL0EQ7feB5cMyaLfyUuYeRhents/xDPBYxTbsb8k5QhBODegf9VFSThyoGx6g2rE/XCoXhGv7HFjz4MBwEVeOAxm5O//P/N2gF8km5pmoRzdafrvnI9+Ki+XuYgzNIiZ2jDjJd3Av/ND7LGNenHRBScjUMCZQh9z6OmJcE02xFRpisNba7zPXA9vmWx34LlFlyyOt2f03KI9RaGmWRGQpz+RJoJEtVcBFai77fBWmu+bVXdkjW3V17eaOeXV2mu9NU6qHJAJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vcrQrf0j+PK9HGGTwzVzGunN0PF4Zt8tx1xVIJAtzrU=;
 b=aJz4zn1QBu8g1KTHb5C9ryPejluqfZYp9qqpuIR2HMxvD9Z6v6SyJW7FmFrYC+p8+dt3pZtP5TbKc4D23x1FFPViHNAOtjznRpA6VYdl3W8nTHc9B1gvKC+N7Ch6KTs3gqHWLx6x7UQSfm646yoPd9WVQwKX5ds37/PFuBVV+j0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH1PPFC8B3B7859.namprd12.prod.outlook.com (2603:10b6:61f:fc00::622) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Mon, 18 May
 2026 14:44:08 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 14:44:06 +0000
Message-ID: <880a949b-2c9e-4b6a-bb2f-4dd90d5238f2@amd.com>
Date: Mon, 18 May 2026 16:44:00 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
References: <20260419134943.54833-2-mcanal@igalia.com>
 <b202b9f4-9ef6-422a-be39-8050217590ad@amd.com>
 <64a784311f048a0fe4bbf8a89839522cd1e6144e.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <64a784311f048a0fe4bbf8a89839522cd1e6144e.camel@mailbox.org>
X-ClientProxiedBy: BL1PR13CA0427.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH1PPFC8B3B7859:EE_
X-MS-Office365-Filtering-Correlation-Id: a06a19fe-904d-4329-ad15-08deb4ebe947
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|366016|56012099003|4143699003|11063799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	ouFhnSys2fsAeurWtQd1GQUGt0tKgbL2NqZuxoWmSjvsqYSHKShQoNXbyhKjw5VSAlsWhFATZi/iEpDcO1Y1QBk1mR5KqeodLsFm4iJ0P9GI0sQbKh0mr4m3FQnFNKnUYDWhfnl73KZykFff6UQh+2bVZtVRRLKQZxlcZfzBWU7IrHzlonKm+1RlPxR8hnM/hTxCZFJ0GQ/ctCh34ANPvmdTG50jiwuLaNEv/BprThRQuEVtN//ZUMTQeli/HbzqWdBEKCz09SPIhNSjz6JaL6Jc6dgGbMEVHi53ZgZqa0SRN1ies4GP2OIrADVLXn4ogNWy+TJ6MdXYyBsHAk5TdCKChU/9GVR7U3mamk/qsIG66sqsAx4XGww+0bl2Es6tg/t5Qg1viwlymkjccrI3PU2Z2WE3PLzrrxQgsjIShzsHJXIPb6P6D1VimHGM496SaKLSkPOd980qu/IOIVzAxyoCO8UmAfAeyx/eYbuNeFVyBPivrmdTxmOun/0d2VO0kx+JDmUB+16Ilx4Oo5MPQzMWQnL0Clh3c00CQ3ljVriH/zF2FQRMebMRwjqKpG/L4DaR749zz5f16wlO89rAL2J5uSIcGsF6K9MkgBURjpNEYrCthc5tzfZhdzNktfpbWg2vcFsTUYcfXbb64FpZbGzK9ktlbfbYhWCHhzO+UHAqwUtAuMd82wyi8ci/LiPquY3niaonTCkn6oKrTMMSlw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(4143699003)(11063799003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eWsyYkNEWFZqSDhiRVRSdzJtK01xTy9LVGQyMGpZWHJHVDVTbnZBNHVsaXJP?=
 =?utf-8?B?MFZKVmx2eEEzTFVOWkRlT2laUSs1L2FoNkJnU1VTamY4MkFsdGhGajQzNU9m?=
 =?utf-8?B?azRBb1Zvd3kyTHJGUjE5RUgvY2FPQStLeU42TmR1eVBnNzl6U2ZIZEJtY3Fn?=
 =?utf-8?B?M0NjVHhkZzcvaC9MbG5laW8xak5QZXhnUjR2U3BpekpQcHJPcU5xUEc5U2dK?=
 =?utf-8?B?VWtKNGNpTmptdUM5WXZMT0dVQ3hMeGtkU2wxV2NicmQxckZHSHRLaWxzWEE2?=
 =?utf-8?B?WHB1RXpjRHIxQllrTHpHWVNDMHpMTkVBb3RYTWxrR1I1UUdDZFUvYkhxZncv?=
 =?utf-8?B?eW1ldENzOTg2NzRielpWN2N2azFvbjdkc0xFeG9yVnN3MlgrQ1JoaDIzd2FE?=
 =?utf-8?B?M21GNmd3NS9WcllKUHM0VGFZRHFwdytvRTdiMzNUR21SM3dkYjdBam40V0t3?=
 =?utf-8?B?bmZUVjBnQ1IyamVKNDMzejZ6d0ZkSFlmVys4QmdsUFYvVEdpRXAwOHN4NXUr?=
 =?utf-8?B?ZVRhVXdFVkVZMWhQZzU1bFJGSHZmNVdNaUhFTXhjK2pHWUp0bGo1UDZHVXk3?=
 =?utf-8?B?MThtQVViTEd1OEMySjJzaE1aMjdjMFBpZnJFV0ZEZk1zRU9XaUR3WVlqbmJo?=
 =?utf-8?B?YTRvQmU1Q3VvWG85cjhGLzdLN1RjeGRZTEpPdHVEU2JCdWlKWlhzSzNRU0Fo?=
 =?utf-8?B?czFLWEp6L1Q4dnVUMmF0UXdhanhDK3prTnp0WnVvQmVmbDNpREQxNEZMZDNY?=
 =?utf-8?B?R0RHdXJ4a2pIbHQwZi94ZWFKcHBPbHZQY1g4ejdlVDYxaWovayswcHhuNXB4?=
 =?utf-8?B?QkN1WmY2MzFMTHFSQlRhSmxWdDA2bjhXZndFZjdnTlNBK1ZCeWpWT1ROUnQy?=
 =?utf-8?B?NTBpY0dDODlKOWd0dlQrUWk2YmZXMUxNMTN3OWsrMFhrTWVlYzJBQS9zaDNh?=
 =?utf-8?B?UUM1WUM4Z0tUWEtFeFU1TTZNUUZhTUJDdHpYN3FjR0lXRzY2YVVMYXh3bGoy?=
 =?utf-8?B?RTJ1dS9vejNRK05oRXV2enNseWhCeTIrbTBQTEZ5cWRjZmFSOEhCQ1FXdHJH?=
 =?utf-8?B?YmpsWGw3YUt4dy9HSlp5Vjk1VWVzbDBjSG5OWllUanIvMDNUZ3lOWStxVFdX?=
 =?utf-8?B?L1RpdVJCcnVoeU5GektobG1QRTRqeXpXNlY1ZFJvcWtXZS94UmNMUVVtVGth?=
 =?utf-8?B?UmljUDV2RUIrRGFLNys4ZitIVXJnOGg5TDJwUEI0ZnJSblovTEw1YkQ1YThr?=
 =?utf-8?B?eCs5SFNTdk5OL0tUSVVMalBaeUFSeGE4YThBNUczYWZ5MDZwM2hiS01VUGlu?=
 =?utf-8?B?QnRrc1ZmY0wyUWJJRXdkeEhXMytsVm9UVHZRYktzb3BqWDNHZkNUSzhLdjRU?=
 =?utf-8?B?TGxRNThyMnREK2xTQmpMYXM4elk5cjd1cHhpdVloYnBBK1FXSnhyUDhUdUFk?=
 =?utf-8?B?WmpjVDdlRDVTU2RnRHZKK2g4T1lyMldYZnJScTd0UGV3UzQzVExrU2dZWU5V?=
 =?utf-8?B?TnU0Q0xzN3VNai9iTmtBeU80czAvcWVkN3ZsbXppMEQ4aDBKckU4cTY3clpE?=
 =?utf-8?B?eXhtYys3MmIvZHlkNWgxcUREeG5hVE9PV1hXMElPbHh4dm5oUW5VaEtCQklv?=
 =?utf-8?B?TlRicjUrTThicFF2djRRRFNSelZlQlN6Zzd2YlcxWkVjZG5VTHNvUXc1YzR5?=
 =?utf-8?B?dzBnMEFVQkRBLzlJSDFoUXZsWHdiSm9JMUtRTGRtN292Y0RYcDlJcGJsNmlw?=
 =?utf-8?B?SXdDRlJ6ZU9yNFRiMlcva01LV2ZqYy9FQlkreFVRNW1XTE5WNXBxdTduRUZT?=
 =?utf-8?B?UVRScWJWM1k0dmlzcW04bXNra2lmbzY3eElVNE9MemNuNDZqak4xK1AvaWhI?=
 =?utf-8?B?MzBpQlAxZVR4enJ5b2lJeGNvbjQwOUMrQlREVGxLV1FQNU51SVlJYW9zRWRy?=
 =?utf-8?B?RjRaOXc2RGRqMlNVbTJHaVFxWnJjNEJZaTVlWmNSRmladUdjbm9pRzVyMzJp?=
 =?utf-8?B?ZW9QZGFiSVNNNGI5NWNaeE1BK3lMekpHNWZFRWlLNTZrYkF4c3VOa0hpZzZp?=
 =?utf-8?B?cjU5ZENhVlM4elRNYmVheGpkMVpoNHhjRGt6Z04vUERtaHJtLzdSQXR1bFAy?=
 =?utf-8?B?RTN1SGh3QmxUVVNpbDgzMmlyWmwva1E3ZERCMnBNbnk1VUdBTTNNSXloVUtP?=
 =?utf-8?B?SGZ5RUY1TWlhNVZzb0VURFg4Q3FXdEM1UmxuRlZKSjdEQTBOZDRPVFpsYXZq?=
 =?utf-8?B?R1RFSHBsVkNZNkJQVncwOFdjVWxhSFhDRzc3THd5Y2hVcTl0dlV6eXlkZGZv?=
 =?utf-8?Q?FplUaV/wGmEGTWQbQS?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a06a19fe-904d-4329-ad15-08deb4ebe947
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 14:44:06.1079
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C4cPBF2rcaxcc77SbGilG3DuJJyBgcEOhjrviKlZhSKmzfLFjmDdgI+4vM2w8iS7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PPFC8B3B7859
X-Spamd-Bar: -----
Message-ID-Hash: YUBALJKT2FKBOSULJMBWRLBNTMBCTNKZ
X-Message-ID-Hash: YUBALJKT2FKBOSULJMBWRLBNTMBCTNKZ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YUBALJKT2FKBOSULJMBWRLBNTMBCTNKZ/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,amd.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-]
X-Rspamd-Queue-Id: 7FF2056F187
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOC8yNiAxNTowMCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBPbiBNb24sIDIwMjYt
MDUtMTggYXQgMTM6MzAgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBPbiA0LzE5
LzI2IDE1OjQ4LCBNYcOtcmEgQ2FuYWwgd3JvdGU6DQo+Pj4gVGhlIGtlcm5lbGRvYyBjb21tZW50
IG9uIGRtYV9mZW5jZV9pbml0KCkgYW5kIGRtYV9mZW5jZV9pbml0NjQoKSBkZXNjcmliZQ0KPj4+
IHRoZSBsZWdhY3kgcmVhc29uIHRvIHBhc3MgYW4gZXh0ZXJuYWwgbG9jayBhcyBhIG5lZWQgdG8g
cHJldmVudCBtdWx0aXBsZQ0KPj4+IGZlbmNlcyAiZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVy
Ii4gSG93ZXZlciwgdGhpcyB3b3JkaW5nIGlzIGEgYml0DQo+Pj4gbWlzbGVhZGluZzogYSBzaGFy
ZWQgc3BpbmxvY2sgZG9lcyBub3QgKGFuZCBjYW5ub3QpIHByZXZlbnQgdGhlIHNpZ25hbGVyDQo+
Pj4gZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLiBTaWduYWxpbmcgb3JkZXIgaXMgdGhlIGRy
aXZlcidzIHJlc3BvbnNpYmlsaXR5DQo+Pj4gcmVnYXJkbGVzcyBvZiB3aGV0aGVyIHRoZSBsb2Nr
IGlzIHNoYXJlZCBvciBwZXItZmVuY2UuDQo+Pj4NCj4+PiBXaGF0IGEgc2hhcmVkIGxvY2sgYWN0
dWFsbHkgcHJvdmlkZXMgaXMgc2VyaWFsaXphdGlvbiBvZiBzaWduYWxpbmcgYW5kDQo+Pj4gb2Jz
ZXJ2YXRpb24gYWNyb3NzIGZlbmNlcyBpbiBhIGdpdmVuIGNvbnRleHQsIHNvIHRoYXQgb2JzZXJ2
ZXJzIG5ldmVyDQo+Pj4gc2VlIGEgbGF0ZXIgZmVuY2Ugc2lnbmFsZWQgd2hpbGUgYW4gZWFybGll
ciBvbmUgaXMgbm90Lg0KPj4+DQo+Pj4gUmV3b3JkIGJvdGggY29tbWVudHMgdG8gZGVzY3JpYmUg
dGhpcyBtb3JlIGFjY3VyYXRlbHkuDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBNYcOtcmEgQ2Fu
YWwgPG1jYW5hbEBpZ2FsaWEuY29tPg0KPj4+DQo+Pj4gLS0tDQo+Pj4NCj4+PiB2MSAtPiB2Mjog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjYwNDExMTg1NzU2LjE4ODcxMTkt
NC1tY2FuYWxAaWdhbGlhLmNvbS8NCj4+Pg0KPj4+IC0gQmUgbW9yZSBleHBsaWNpdCBhYm91dCBu
b3QgYWxsb3dpbmcgbmV3IHVzZXJzIHRvIHVzZSBhbiBleHRlcm5hbCBsb2NrLg0KPj4+IC0gRGUt
ZHVwbGljYXRlIHRoZSBleHBsYW5hdGlvbiBpbiBkbWFfZmVuY2VfaW5pdDY0KCkgYnkgcG9pbnRp
bmcgdG8gdGhlDQo+Pj4gwqAgZG1hX2ZlbmNlX2luaXQoKSBkb2N1bWVudGF0aW9uLg0KPj4+IC0t
LQ0KPj4+IMKgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMTMgKysrKysrKy0tLS0tLQ0K
Pj4+IMKgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4+
Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+PiBpbmRleCAxYzFlYWVjYWYxYjAuLjYzYjM0OWJhOWEz
NCAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+PiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+PiBAQCAtMTEwMiw5ICsxMTAyLDExIEBA
IF9fZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBk
bWFfZmVuY2Vfb3BzICpvcHMsDQo+Pj4gwqAgKiBjb250ZXh0IGFuZCBzZXFubyBhcmUgdXNlZCBm
b3IgZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVuY2VzLCBhbGxvd2luZw0KPj4+IMKgICogdG8g
Y2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2ltcGx5IHVzaW5nIGRtYV9mZW5jZV9sYXRl
cigpLg0KPj4+IMKgICoNCj4+PiAtICogSXQgaXMgc3Ryb25nbHkgZGlzY291cmFnZWQgdG8gcHJv
dmlkZSBhbiBleHRlcm5hbCBsb2NrIGJlY2F1c2UgdGhpcyBjb3VwbGVzDQo+Pj4gLSAqIGxvY2sg
YW5kIGZlbmNlIGxpZmUgdGltZS4gVGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2Ug
Y2FzZXMgd2hlbg0KPj4+IC0gKiBtdWx0aXBsZSBmZW5jZXMgbmVlZCB0byBiZSBwcmV2ZW50ZWQg
ZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KPj4+ICsgKiBFeHRlcm5hbCBsb2NrcyBhcmUg
YSByZWxpYyBmcm9tIGxlZ2FjeSB1c2UgY2FzZXMgdGhhdCBuZWVkZWQgYSBzaGFyZWQgbG9jaw0K
Pj4+ICsgKiB0byBzZXJpYWxpemUgc2lnbmFsaW5nIGFuZCBvYnNlcnZhdGlvbiBvZiBmZW5jZXMg
d2l0aGluIGEgY29udGV4dCwgc28gdGhhdA0KPj4+ICsgKiBvYnNlcnZlcnMgbmV2ZXIgc2VlIGEg
bGF0ZXIgZmVuY2Ugc2lnbmFsZWQgd2hpbGUgYW4gZWFybGllciBvbmUgaXNuJ3QuIE5ldw0KPj4+
ICsgKiB1c2VycyBNVVNUIE5PVCB1c2UgZXh0ZXJuYWwgbG9ja3MsIGFzIHRoZXkgZm9yY2UgdGhl
IGlzc3VlciB0byBvdXRsaXZlIGFsbA0KPj4+ICsgKiBmZW5jZXMgdGhhdCByZWZlcmVuY2UgdGhl
IGxvY2suDQo+Pg0KPj4gTm8gdGhhdCdzIG5vdCBjb3JyZWN0LiBUaGUgdXNlIG9mIHRoZSBleHRl
cm5hbCBsb2NrIHdhcyBpbmRlZWQgdG8gcHJldmVudCBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0K
Pj4NCj4+IEl0IGlzIHBlcmZlY3RseSBwb3NzaWJsZSB0byBvYnNlcnZlIHRoZSBmZW5jZSBhcyBz
aWduYWxlZCBldmVuIHdpdGhvdXQgdGFraW5nIHRoZSBsb2NrIGJlY2F1c2Ugb2YgdGhlIHVubG9j
a2VkIHRlc3RfYml0KCkgb3BlcmF0aW9uIHdlIHVzZSwgc28gdGhlIG5ldyB3b3JkaW5nIGlzIGNs
ZWFybHkgbWlzbGVhZGluZyBhbmQgbm90IGV4cGxhaW5pbmcgcHJvcGVybHkgd2hhdCBpcyBnb2lu
ZyBvbiBoZXJlLg0KPj4NCj4gDQo+IEkgdGhpbmsgdGhlIHBvaW50IE1hw61yYSAvIHdlIHRyaWVk
IHRvIG1ha2Ugd2l0aCB0aGF0IHN0YXRlbWVudCBpcyB0aGF0DQo+IGFuIGV4dGVybmFsIGxvY2sg
aXMgZWZmZWN0aXZlbHkgdXNlbGVzcyBmb3IgZW5zdXJpbmcgY29ycmVjdCBzaWduYWxpbmcNCj4g
b3JkZXIuDQoNCldlbGwgeWVhaCBpdCdzIGp1c3QgaGlzdG9yaWNhbGx5Lg0KDQpUaGUgcG9pbnQg
aXMgKmlmKiB5b3UgdXNlIG9uZSBsb2NrIGZvciBhbGwgeW91ciBmZW5jZXMgKmFuZCBub3QqIGhh
dmUgYW4gaXNfc2lnbmFsZWQgY2FsbGJhY2sgdGhlbiBhbGwgZmVuY2VzIHNpZ25hbCBpbiBvcmRl
ci4NCg0KSXQncyBqdXN0IHRoYXQgYXMgZmFyIGFzIEkga25vdyBhbGwgZHJpdmVycyBzb29uZXIg
b3IgbGF0ZXIgaW1wbGVtZW50ZWQgdGhlIGlzX3NpZ25hbGVkIGNhbGxiYWNrIGJlY2F1c2Ugb2Yg
dGhlIHBlcmZvcm1hbmNlIGJlbmVmaXRzIGFuZCBzbyBhYmFuZG9uZWQgdGhlIHNpZ25hbGluZyBv
cmRlciBhcHByb2FjaC4NCg0KU28gd2UgY291bGQgaW4gdGhlb3J5IGZpeCBhbGwgZHJpdmVycyB0
byBub3QgdXNlIHRoZSBleHRlcm5hbCBsb2NrLCBidXQgdGhhdCdzIHRvbnMgb2YgZXh0cmEgd29y
ayB3aGljaCBub2JvZHkgd2FudHMgdG8gZG8gZm9yIGEgcmFkZW9uLCBub3V2ZWF1IG9yIFFYTCBk
cml2ZXIuDQoNCj4gQWZhaXIgeW91IGFncmVlIHdpdGggdGhhdCBpbiBnZW5lcmFsLg0KPiANCj4g
RG8geW91IGhhdmUgYSBzdWdnZXN0aW9uIGZvciBhIGJldHRlciBmb3JtdWxhdGlvbj8NCg0KWWVh
aCBJIHJlYWxseSBsaWtlZCB0aGUgInJlbGljIiBhbmQgIk1VU1QgTk9UIiB3b3JkaW5nLCB0aGF0
IGlzIHByZXR0eSBtdWNoIGV4YWN0bHkgd2hhdCB3ZSBuZWVkIGhlcmUuDQoNCk1heWJlIHNvbWV0
aGluZyBsaWtlIHRoYXQgaGVyZToNCg0KKiBFeHRlcm5hbCBsb2NrcyBhcmUgYSByZWxpYyBmcm9t
IGxlZ2FjeSB1c2UgY2FzZXMgdGhhdCBuZWVkZWQgYSBzaGFyZWQgbG9jaw0KKiB0byBzZXJpYWxp
emUgc2lnbmFsaW5nIHdoZW4gbm8gb3V0IG9mIG9yZGVyIHNpZ25hbGluZyB0aHJvdWdoIHRoZSBp
c19zaWduYWxlZA0KKiBjYWxsYmFjayB3YXMgcG9zc2libGUuIFdlIGhhdmUgbG9uZyBhYmFuZG9u
ZWQgdGhhdCBjb25jZXB0LCBidXQgdGhlIGV4dGVybmFsDQoqIGxvY2sgaXMgc3RpbGwgYXJvdW5k
LiBOZXcgdXNlcnMgTVVTVCBOT1QgdXNlIGV4dGVybmFsIGxvY2tzLCBhcyB0aGV5IGZvcmNlIHRo
ZQ0KKiBpc3N1ZXIgdG8gb3V0bGl2ZSBhbGwgZmVuY2VzIHRoYXQgcmVmZXJlbmNlIHRoZSBsb2Nr
Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBSZWdhcmRzDQo+IFAuDQo+IA0KPj4g
UmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pg0KPj4+IMKgICovDQo+Pj4gwqB2b2lkDQo+
Pj4gwqBkbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qgc3RydWN0
IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4+PiBAQCAtMTEyOSw5ICsxMTMxLDggQEAgRVhQT1JUX1NZ
TUJPTChkbWFfZmVuY2VfaW5pdCk7DQo+Pj4gwqAgKiBDb250ZXh0IGFuZCBzZXFubyBhcmUgdXNl
ZCBmb3IgZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVuY2VzLCBhbGxvd2luZw0KPj4+IMKgICog
dG8gY2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2ltcGx5IHVzaW5nIGRtYV9mZW5jZV9s
YXRlcigpLg0KPj4+IMKgICoNCj4+PiAtICogSXQgaXMgc3Ryb25nbHkgZGlzY291cmFnZWQgdG8g
cHJvdmlkZSBhbiBleHRlcm5hbCBsb2NrIGJlY2F1c2UgdGhpcyBjb3VwbGVzDQo+Pj4gLSAqIGxv
Y2sgYW5kIGZlbmNlIGxpZmUgdGltZS4gVGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1
c2UgY2FzZXMgd2hlbg0KPj4+IC0gKiBtdWx0aXBsZSBmZW5jZXMgbmVlZCB0byBiZSBwcmV2ZW50
ZWQgZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KPj4+ICsgKiBOZXcgdXNlcnMgTVVTVCBO
T1QgdXNlIGV4dGVybmFsIGxvY2tzLiBDaGVjayB0aGUgZG9jdW1lbnRhdGlvbiBpbg0KPj4+ICsg
KiBkbWFfZmVuY2VfaW5pdCgpIHRvIHVuZGVyc3RhbmQgdGhlIG1vdGl2ZXMgYmVoaW5kIHRoZSBs
ZWdhY3kgdXNlIGNhc2VzLg0KPj4+IMKgICovDQo+Pj4gwqB2b2lkDQo+Pj4gwqBkbWFfZmVuY2Vf
aW5pdDY0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29w
cyAqb3BzLA0KPj4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
