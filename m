Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6z1LL9BBHWpBXwkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 01 Jun 2026 10:24:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2456561B6DD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 01 Jun 2026 10:24:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15FFA40976
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Jun 2026 08:24:47 +0000 (UTC)
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012047.outbound.protection.outlook.com [52.101.43.47])
	by lists.linaro.org (Postfix) with ESMTPS id 3A9213F6E1
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 08:24:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=BpPWRV0a;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.43.47 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dd4Gq29iMKdvsaUvWfFGVhG1QlSzPxD7SipxW4JyHBokJORTCzUlhQT+UAFHNA1NUaqUEE61gTjx1F/VQk5p0Z5EJmVVYKj3y74Gcd1UmXQNcLFgNxxYiubjLDGbRwwBj0YDl2hHcJ4rOwDZSnl4mXk1YNJBXNjVYPdXHv/vMEtdieeM8iMvzSOs8xSWItLl8M5CWalNg7eSDap5FAt04M6hKrF53dT+s5w2mdap1uFizL2nSt20Tzc/Ma3hlvuZ6qBBWkCrV2Key/lfMO23/apDPWueLeQ4Xu2+IjidkXOELHWFtu9wwOocfv2mqGTR6v/z/OVtpIWmJ0+84eUbDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZKQrcU8Mxi/rySN1zniWf8jMNIA5LVdj6emqu4N8TyI=;
 b=hIB+ZKb5afhrp7/X3apuDDcaAf0KysN0dIsV/+3vV0SI0yyqXPkG7L5pHod5eYxgC0dgM7hDV76o1defnIBDPY+HKmpkEO+FcV6z6Q9LJ5pptQtU/F/103MHZYpFUqTILcbYxm1WDiX3yj3tFEosq1vIMrlNr3NAOupBFMhFdAFqjRUqdcEiYWAmMMeEjHPbngq0jReXXQif4f26aU+SbtpCJefnWElqCFdz5Al0gi8SnDOZOmF28ThE2uJ3dg8wEQ5Vw8yvxtMFCdjZt6NnV/0wK6K1igqjuSotZcyfYVp/he22Aj0/lPXNmx+9N24OQGZ4EQQPMlR/dOBZZQXu/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZKQrcU8Mxi/rySN1zniWf8jMNIA5LVdj6emqu4N8TyI=;
 b=BpPWRV0a+8hFNNESL78PV1EzUo7yVjfdpBNltLB1GTTuf2SSSCmRQX2aG0+3uiJqgNYMolbjYaz35uNG4JO8JXw+khn1h07dOC3VhgCfypMhahj1sE9pqsPCBvDqqzxRX36mlwYEkTm0P0ii9wqw2INTrjgL7mVo6r7jDyRB/E4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB6726.namprd12.prod.outlook.com (2603:10b6:806:255::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Mon, 1 Jun 2026
 08:24:35 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 08:24:35 +0000
Message-ID: <27e74975-a6f1-4ef5-8f9c-0f834a580030@amd.com>
Date: Mon, 1 Jun 2026 10:24:29 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Philipp Stanner <phasta@kernel.org>
References: <20260531125115.1136036-1-mcanal@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260531125115.1136036-1-mcanal@igalia.com>
X-ClientProxiedBy: FR0P281CA0118.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB6726:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b0a2dbe-96c4-4c8c-12f6-08debfb7369d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|366016|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 
	veWTy/rD8+oR0Mrnenbi4BP0RHGjVj1Lqwr4kqS2Kz7KPxyEq387Xg5Rk/IxpH0o7k95ye6fQU0im6XOQ3rxC6QAAbF9vwaUcx5WYU6TUd3ireN0hB1BEFykCV0Swnl/OjuEvKCQj6iswlvRBxePWrvdrxMDmXMkOrzIn3FOCjB82uUzgo1RUzXTGK8iDXcF7cygsa7nJ0tIEbBGBDAq5HLlE0WMUAW8p2fLRHN7LhObr8LUpdI81jpciB9dIDkAUjX6b4xmyJyYlouTVJBKXkK4TmCM04WDXWivnr/EINkct2jDwG519XIgJINt26S1oOR99DrIkIz6nPZ4VUxAph4pBSyglhz4RImgr5js3DGcX/qAHkd+nEHdbRBQJakuYY76XsYLk4n2cZ0eCkzqCg1UYK8dqdKdxSRzs3Qwhl6AHiQ1PRlX+p/oub+UeBdKFkrcVwFV2+8btKEumdQ7vw1eqbzHnYXZ1eW1pYYyQjieoBXhK/9iDu/va8jBu6a3PM9YFTnpNZU6bjYX+UZk9fnHizlS82SWkkxSS+TFOptKXdGXh0K4rtWBDx4Akg2jSRVLV9VVTce1Pek0RnyisACYJrncNX/cTQvGrIu3OlsUKt4HvDypt/MXo3xro3jGdyxEIMBheLwmjOMVLGMiNw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(22082099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N1ZZSnR1c3NxYy95aHlnb2VIbElxMmRTWnppQTlJTDVLVTdYOWNCak5oSkE0?=
 =?utf-8?B?eG4wMXZReG5mTVlIeGdleEtuSG8yKyt5QTlmWEFoWHo0SHU0elByMW5DeE9P?=
 =?utf-8?B?UGdCTms0aWdxOWo0anVmSDlPRlBxRUswN2kxaVkxNllvbjVHZk1adTJyL0JW?=
 =?utf-8?B?SWdia0hRcmIreFFiMXVFNjQ5dzdNRXdwYmlZRjFUaUNXaWJENDUrQ3pmaGVW?=
 =?utf-8?B?RzZHcmRRTDA2ZVQzQ2dFd2Uxd3ZQbUZFaiszOTBOOGVwWUkrZ2Fhb2FNWS9y?=
 =?utf-8?B?cENiUU44a1N6UWRWNSt0MHdFcm5pYWNFMU1UVU1HZXlMZldleWpnV0hHN3lm?=
 =?utf-8?B?MG5uWVlHbCtyYnlxejB0RWZSOTI2SVBqR2FPejd1cENwY3ZLZW5XZ3FPejFQ?=
 =?utf-8?B?WDVIWkhsZE4ybUttZkVwZlF0RHd4NkxEcEh3L3VTM2RVbEJLTDRJNXBpdzMv?=
 =?utf-8?B?ekVVbVdqd1lWVVQrNHY3WGtIQzMxOWVPYmttMUtJOXpaWlZjY3ZwRkNKVUMz?=
 =?utf-8?B?ZTlZREZ1TnY1OFIvUWQ1Y0xFd1BUVTdCMVAxRTJpUjg4QU93Z1VtQlpBUC9V?=
 =?utf-8?B?OTNrWHNNaDB0Tit4d0hDZytsRFJseWd4c3lhbVVCMnNBejI5NkhnZG1aQkZr?=
 =?utf-8?B?V0ljOGxwVnlQMmdEQ3dxR21vRzhKY0hIM21LNHVZbXBxbmYzclNFR0lVUU41?=
 =?utf-8?B?RVM2TG5JT2RWT0NTYzloZWFpaDR3d2RwMVNrMkpvSU5LeUdsd2RWRWNDdGFG?=
 =?utf-8?B?dlZuN0ttT0NKWUphM3R2Y3laUEdaUUFnbEZPSm52MTJ0MzIzcWVFMFFQTnhX?=
 =?utf-8?B?cFhBWm9QdHg0UUxFZ1A1SjZFQ3RyaHhoZHZMeEJKSHlhdFhBOEdSYVd2dFlx?=
 =?utf-8?B?UmxCKy9pdmU1K0hvaXp5bWJxcWgwVm0xZUFlMjVxT2hZR2JFakFRRFZYRjJ6?=
 =?utf-8?B?ZXdRdTRtRkpMemptM1Bwb0VwRndXR3laL2toWGRWYmpOeXZTaWNNZjhSendR?=
 =?utf-8?B?TGFxYmg5QURIc3VHVnpOSHcyb1pXcW1RNzNuSFo3eTFwVzNKVnJ6SHAwRExK?=
 =?utf-8?B?eGYvdEt3dFZTVlZ2dzhLQVJtVUFqN2pvT2d4T250ejZkNEpxQmcyYUtPenNU?=
 =?utf-8?B?WGxFRFhvWDNFTmFSWGVEeW5KcWhnZWVYNGx6ZmlMUlJuWkZzQWJiTlVxZDRJ?=
 =?utf-8?B?SVUxUStBUzQxblcwQVJkU1RXY1JUTHJTaUtQT2I0dDBzUS9jUGVNVlhucWg5?=
 =?utf-8?B?Y1JaOTZPc25MODlmbzh2YUk1dURTelB0cGxwMGgvcnBrVGFaYUNxdDN5eWZQ?=
 =?utf-8?B?ejc4aWsxOXhCUzFqL0J3bzJNc3lubEMyWTRnTy9DM1h2L2VFZFZwYVdBV1J2?=
 =?utf-8?B?U3I0N2xpUnJ4T1prS3J1R0ppZmkwWUJhRFNiaDRVWFU4RnNSU1YwY1Y5Rnh4?=
 =?utf-8?B?b0N2S2RoUkV1VmxFVXhkUUlJQnZQYjYzMG5pTWp4ajdNMzVETnA1UzBzdjJM?=
 =?utf-8?B?WEJnV3NsTEVQWFIzUUdMY2RZcjFvZysyaVI2eWpuOVlSYm5Cd1NzRmxjUStl?=
 =?utf-8?B?NGI1OVk1UnBOMi8vUzZ4TDRwVHA3dE8yOUNudm8zVERLK3R5eTVXUHdCamsx?=
 =?utf-8?B?RHBjS01JRVhuZS9NMHFmdWJkaWJuM0JUY2Frak5pckRNdTBCcndQQWNOZFZT?=
 =?utf-8?B?Nk52elczRG1tUjhwNE1ZcFpOOXdCQS9zbUhvNk8ybCtValJHc0p3MW9rN3dI?=
 =?utf-8?B?d2svNHJpdTl4eTRIT3JuN1RUbDJPZUFCQnBISUVSVVMvVnM4dDhMcVhGMjlK?=
 =?utf-8?B?eStieGZidHM0QmVkc0pQMXNXQ2EvRmZwRzU1d3hGSXlIR1MyWUIxWTFPMnZ2?=
 =?utf-8?B?UjhjcndISE9qNE4zOTc3a0tsSlEvV3RCQXQ5S0J4VUJXbFpBRENITDIxK2Zw?=
 =?utf-8?B?SFc0Umx5SUZwZ3BjL2ZSWFdtVjY3QnRUUG5qQWIyWkk4bllMdi85cGVXbzlV?=
 =?utf-8?B?VWY1NHZZS3VBMklUUldLMVcwbjFKOGcyM0IzVko1aFJsV1lFdTluYlZvMWtp?=
 =?utf-8?B?Sk9RamxaejNnRFE0U1BtU2FORXVJZzB4VlJzZVd2YVltMEpiOVpXc01RSDE4?=
 =?utf-8?B?d0twdS9pYnYyU3E3b0JLSkZrRVJsSGZBYjFOYXVGdUFXZkRSSlRrRzFqaDM1?=
 =?utf-8?B?S1JKakJMdG1vL3lNeTYwL2xyWlM0cWtTYVE2d3VVTmdzSUIrS0ZiTlpyOFZ0?=
 =?utf-8?B?WGUvTUxmdytUUTBtenYxQWcrTEovRS8yUTdXWDh2MkMwSVNxNC8xRnA5OGky?=
 =?utf-8?Q?zaRPEeePVmbCK2mCJC?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b0a2dbe-96c4-4c8c-12f6-08debfb7369d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 08:24:35.0865
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lplwT7Nx8wEjGpaK7LEc0yVEExW2U3cXoveu1idWrYSpd1M/gGPRWLABT+KYcFVr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6726
X-Spamd-Bar: -----
Message-ID-Hash: C3TKIU7JXKHRCC5HOI4MOJDDDKRT6YOV
X-Message-ID-Hash: C3TKIU7JXKHRCC5HOI4MOJDDDKRT6YOV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C3TKIU7JXKHRCC5HOI4MOJDDDKRT6YOV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[igalia.com,gmail.com,linaro.org,collabora.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_SPAM(0.00)[0.463];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 2456561B6DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDUvMzEvMjYgMTQ6NDksIE1hw61yYSBDYW5hbCB3cm90ZToNCj4gVGhlIGtlcm5lbGRv
YyBjb21tZW50IG9uIGRtYV9mZW5jZV9pbml0KCkgYW5kIGRtYV9mZW5jZV9pbml0NjQoKSBkZXNj
cmliZQ0KPiB0aGUgbGVnYWN5IHJlYXNvbiB0byBwYXNzIGFuIGV4dGVybmFsIGxvY2sgYXMgYSBu
ZWVkIHRvIHByZXZlbnQgbXVsdGlwbGUNCj4gZmVuY2VzICJmcm9tIHNpZ25hbGluZyBvdXQgb2Yg
b3JkZXIiLiBIb3dldmVyLCB0aGlzIHdvcmRpbmcgaXMgYSBiaXQNCj4gbWlzbGVhZGluZzogYSBz
aGFyZWQgc3BpbmxvY2sgZG9lcyBub3QgKGFuZCBjYW5ub3QpIHByZXZlbnQgdGhlIHNpZ25hbGVy
DQo+IGZyb20gc2lnbmFsaW5nIG91dCBvZiBvcmRlci4gU2lnbmFsaW5nIG9yZGVyIGlzIHRoZSBk
cml2ZXIncyByZXNwb25zaWJpbGl0eQ0KPiByZWdhcmRsZXNzIG9mIHdoZXRoZXIgdGhlIGxvY2sg
aXMgc2hhcmVkIG9yIHBlci1mZW5jZS4NCj4gDQo+IFJld29yZCBib3RoIGNvbW1lbnRzIHRvIGJl
dHRlciBkZXNjcmliZSB0aGUgbGVnYWN5IHVzZSBjYXNlcyB3aGVyZSBhDQo+IHNoYXJlZCBsb2Nr
IHdhcyBuZWVkZWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBp
Z2FsaWEuY29tPg0KDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KDQpJJ20gZ29pbmcgdG8gcHVzaCB0aGlzIHRvIGRybS1taXNjLW5leHQu
DQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPiANCj4gLS0tDQo+IA0KPiB2MSAtPiB2MjogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjYwNDExMTg1NzU2LjE4ODcxMTktNC1t
Y2FuYWxAaWdhbGlhLmNvbS8NCj4gDQo+IC0gQmUgbW9yZSBleHBsaWNpdCBhYm91dCBub3QgYWxs
b3dpbmcgbmV3IHVzZXJzIHRvIHVzZSBhbiBleHRlcm5hbCBsb2NrLg0KPiAtIERlLWR1cGxpY2F0
ZSB0aGUgZXhwbGFuYXRpb24gaW4gZG1hX2ZlbmNlX2luaXQ2NCgpIGJ5IHBvaW50aW5nIHRvIHRo
ZQ0KPiAgIGRtYV9mZW5jZV9pbml0KCkgZG9jdW1lbnRhdGlvbi4NCj4gDQo+IHYyIC0+IHYzOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA0MTkxMzQ5NDMuNTQ4MzMtMi1t
Y2FuYWxAaWdhbGlhLmNvbS9ULw0KPiANCj4gLSBBcHBseSBDaHJpc3RpYW4ncyBzdWdnZXN0aW9u
IHdpdGggc21hbGwgcmVhZGFiaWxpdHkgaW1wcm92ZW1lbnRzLg0KPiANCj4gLS0tDQo+ICBkcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAxNCArKysrKysrKy0tLS0tLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LmMNCj4gaW5kZXggYjNiZmE2OTQzYThlLi5jN2VhMWU3NWQzOGEgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMNCj4gQEAgLTExMDIsOSArMTEwMiwxMiBAQCBfX2RtYV9mZW5jZV9pbml0KHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KPiAgICog
Y29udGV4dCBhbmQgc2Vxbm8gYXJlIHVzZWQgZm9yIGVhc3kgY29tcGFyaXNvbiBiZXR3ZWVuIGZl
bmNlcywgYWxsb3dpbmcNCj4gICAqIHRvIGNoZWNrIHdoaWNoIGZlbmNlIGlzIGxhdGVyIGJ5IHNp
bXBseSB1c2luZyBkbWFfZmVuY2VfbGF0ZXIoKS4NCj4gICAqDQo+IC0gKiBJdCBpcyBzdHJvbmds
eSBkaXNjb3VyYWdlZCB0byBwcm92aWRlIGFuIGV4dGVybmFsIGxvY2sgYmVjYXVzZSB0aGlzIGNv
dXBsZXMNCj4gLSAqIGxvY2sgYW5kIGZlbmNlIGxpZmUgdGltZS4gVGhpcyBpcyBvbmx5IGFsbG93
ZWQgZm9yIGxlZ2FjeSB1c2UgY2FzZXMgd2hlbg0KPiAtICogbXVsdGlwbGUgZmVuY2VzIG5lZWQg
dG8gYmUgcHJldmVudGVkIGZyb20gc2lnbmFsaW5nIG91dCBvZiBvcmRlci4NCj4gKyAqIEV4dGVy
bmFsIGxvY2tzIGFyZSBhIHJlbGljIG9mIGxlZ2FjeSB1c2UgY2FzZXMgdGhhdCBuZWVkZWQgYSBz
aGFyZWQgbG9jaw0KPiArICogdG8gc2VyaWFsaXplIHNpZ25hbGluZyB3aGVuIG5vIG91dC1vZi1v
cmRlciBzaWduYWxpbmcgd2FzIHBvc3NpYmxlIHRocm91Z2gNCj4gKyAqICZkbWFfZmVuY2Vfb3Bz
LnNpZ25hbGVkLiBEcml2ZXJzIGhhdmUgYWJhbmRvbmVkIHRoaXMgY29uY2VwdCBzaW5jZSB0aGUN
Cj4gKyAqIGludHJvZHVjdGlvbiBvZiB0aGUgY2FsbGJhY2ssIGJ1dCB0aGUgZXh0ZXJuYWwgbG9j
ayBpcyBzdGlsbCBhcm91bmQuIE5ldw0KPiArICogdXNlcnMgTVVTVCBOT1QgdXNlIGV4dGVybmFs
IGxvY2tzLCBhcyB0aGV5IGZvcmNlIHRoZSBpc3N1ZXIgdG8gb3V0bGl2ZSBhbGwNCj4gKyAqIGZl
bmNlcyB0aGF0IHJlZmVyZW5jZSB0aGUgbG9jay4NCj4gICAqLw0KPiAgdm9pZA0KPiAgZG1hX2Zl
bmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vf
b3BzICpvcHMsDQo+IEBAIC0xMTI5LDkgKzExMzIsOCBAQCBFWFBPUlRfU1lNQk9MKGRtYV9mZW5j
ZV9pbml0KTsNCj4gICAqIENvbnRleHQgYW5kIHNlcW5vIGFyZSB1c2VkIGZvciBlYXN5IGNvbXBh
cmlzb24gYmV0d2VlbiBmZW5jZXMsIGFsbG93aW5nDQo+ICAgKiB0byBjaGVjayB3aGljaCBmZW5j
ZSBpcyBsYXRlciBieSBzaW1wbHkgdXNpbmcgZG1hX2ZlbmNlX2xhdGVyKCkuDQo+ICAgKg0KPiAt
ICogSXQgaXMgc3Ryb25nbHkgZGlzY291cmFnZWQgdG8gcHJvdmlkZSBhbiBleHRlcm5hbCBsb2Nr
IGJlY2F1c2UgdGhpcyBjb3VwbGVzDQo+IC0gKiBsb2NrIGFuZCBmZW5jZSBsaWZlIHRpbWUuIFRo
aXMgaXMgb25seSBhbGxvd2VkIGZvciBsZWdhY3kgdXNlIGNhc2VzIHdoZW4NCj4gLSAqIG11bHRp
cGxlIGZlbmNlcyBuZWVkIHRvIGJlIHByZXZlbnRlZCBmcm9tIHNpZ25hbGluZyBvdXQgb2Ygb3Jk
ZXIuDQo+ICsgKiBOZXcgdXNlcnMgTVVTVCBOT1QgdXNlIGV4dGVybmFsIGxvY2tzLiBDaGVjayB0
aGUgZG9jdW1lbnRhdGlvbiBpbg0KPiArICogZG1hX2ZlbmNlX2luaXQoKSB0byB1bmRlcnN0YW5k
IHRoZSBtb3RpdmVzIGJlaGluZCB0aGUgbGVnYWN5IHVzZSBjYXNlcy4NCj4gICAqLw0KPiAgdm9p
ZA0KPiAgZG1hX2ZlbmNlX2luaXQ2NChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qgc3Ry
dWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
