Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJtkDFd1ummTWwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Mar 2026 10:50:15 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FF82B9662
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Mar 2026 10:50:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8464C3F751
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Mar 2026 09:50:13 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013024.outbound.protection.outlook.com [40.93.196.24])
	by lists.linaro.org (Postfix) with ESMTPS id 68A573F751
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2026 09:50:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yecMFh8P;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.24 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RY7KW4zXds2/oHehhvGw0aEENvSbgsJsDw7KJOe4ZmB3i1Ql4RKAYEs2F1bsuQrD4u6S3BlgqHCBYaFZEyV1YK8XRndbA9FyYINjVWYESFfUUnbo/mwKX1ld1YQ4hmjyFTN2+N955gvL6a6qFTk0SzZOnkmAT/mpvXBARtarKE6gvjcq6YIK+iFfRkuZmADyNJqAXSvgg9xSTMYPeKjzYhxfrLSMb5KBHCDs25elbKaJcQI1oGBiKH7b5a0W57q9jSLg1L8oQn5LPU4d9fe3xmX7HVvfJHAqCJ4fv1hiefoITHms+oHWGUBhEYiQnT+VWyPoqXfrXyY9pAdOdiyyrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/UQMHfF1qr1fmpo4TVDUhf79doYyODqmpZcWfx4YGiI=;
 b=FL1rXXDOqatCkNOku+85s0iKM6yFgZdcMISpBGPvuDEJzgKTsM9VfSp9AUwoUtsHx3Xbo0pZxeGdLF8GGr4NMxLsbpBFv0SnNEtrT4bBhKDr2MfGsHPF1w1WGVcIW873/PV4y7LPvLhipuHKdnSdr57SMGMR9Wwnron82byPRalgVJanGuoofJaY5E2QnvGkm/u6b6w+D/OPathD0RxRuamP1SfxN95jRtOIDcixCj/IutEiBVlSJD4XQe/uG9sIOBGiMnc7Rd2H6/CrTE9YhHEipQn25JAnEyW+h/yR3+ISN5HLXz3B3wpWoOyGpI+d6NFyvlpXK77PQjjnwpCCfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/UQMHfF1qr1fmpo4TVDUhf79doYyODqmpZcWfx4YGiI=;
 b=yecMFh8P7wUALAdDKEJShSRBLSp/5WvW379UxKVA27tk6AcpIvlU11dmmSvHPOEcPP6S89zCxLMdnVP1k68l1f6Jlv9aW7qxSYHZe4AyKfXjxKl3WNNr0WJebUu5S0fi5d5JU9RsXNPBgIAmw2IRNF9ZlUkvRv/egk9+JQzrtcE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB7835.namprd12.prod.outlook.com (2603:10b6:806:328::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.5; Wed, 18 Mar
 2026 09:50:07 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9723.016; Wed, 18 Mar 2026
 09:50:06 +0000
Message-ID: <5e99db55-51f6-4a3f-92a8-a07cbda37acf@amd.com>
Date: Wed, 18 Mar 2026 10:50:00 +0100
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20260317144825.2318-1-christian.koenig@amd.com>
 <20260317162147.4a7f03ff@fedora>
 <3e7ce7bb-75ab-4f73-8a5d-dabd5d56cd61@amd.com>
 <20260318101846.4747c9e5@fedora>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260318101846.4747c9e5@fedora>
X-ClientProxiedBy: FR4P281CA0109.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:bb::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB7835:EE_
X-MS-Office365-Filtering-Correlation-Id: eb2aa565-4be5-42b4-5cdc-08de84d3bc51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	84OenDggnXJasfNKusth6u9OeTJr551pHin6CVsM/Rzlnu210P4h5eC55DPBTPIPEgC0RCRI4eAGX3NTSdVU1C/563N8ePQmQqmDqoJDArYfkRP6Ve9yMVO1f5sbHLkNzqh5+yni5Ocfxt4x+lhFSg5E3GSzteRpILPaKui+RseVlZ14BS+mnExpSFNwmPuJ/3gC7bRaTEuDj0VONmwf3E2v1IbZcHsbj6uEHpYSoG/mfFoOVRuukXjcFb8j1fkouIX541Zj4mJItNpQcNrapvrulZEI0mPk4Sttf8llz3uO47Dlz72mn27Xznd1dryDDrT69ry27mTh0ZyMcAnV8HuJGoQj8+npuJHg1zTfQ3dnJfSmpfiG50N9xHBf4SLxAog/OFmEA4GUyczIS4QnlkR2XI9xqpI/mMgNHf5rHokNkmodubbRUsDNN50eQp1AzljXRxWp/PD3IgoMDdupnfqVJFqx/yTXYY+90VnwMwUtyB3NIkTWBYaEi1U2WHS1+DLC2qod4MyyNtOnHZEFCDtYlp97USYMuRNvE+C0fiPQb4nXFIafmBk1l/k1aMdP/xJakqClZzGIjAmNL/wyqtYmOsPkCPaSmsXQ11oRyRDtR0F0rUcTR79WGH1Q8CU3y8RFrO6/H8403fXzYDpUDni/OPQns/uYInaiNh6KTFuZ9NzzTz1nsQgXDzPzeOtW
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SWoycXRaWDVyMnl3WmNUVit1ajVqMHNMWXdXbXFOSW9uQ3V1dHNEZVpyWUR4?=
 =?utf-8?B?cjdlaE5YUWU3cCszYXVvNjZKN2poYjQ4dHAwZ2RUMzVobWszckNmS2xuQ2k3?=
 =?utf-8?B?NUU1MGZNenV5am1LT0xGV3IxTWJXTVAvSm1UUVhoSUlhdXhLWW83RXV5ZkFu?=
 =?utf-8?B?WnRqS3lDZ0FYWFZXVEk4NVR5NHBSbUNobjkzQzloeklVZ1hWQVpoT3Q3VnlX?=
 =?utf-8?B?NHFHRVBqVXVqbVJjL3pGb0d6K0VYNzdJNE91bjFJSGU3cTZpa2dHUldNZndC?=
 =?utf-8?B?VFM5V1BjUzcxazNDMGxHeUxhMnM5TXdodFdrb010clJPVElxMXUvNUlnajFl?=
 =?utf-8?B?akwxSE1FckdQc2Q3NGc4elhvZDdSeWtoRTRjbXlJZVJsT2FoZ1dvNXgzQmxC?=
 =?utf-8?B?R2ZybGNzOCszWG9pTm5tM255Q0pZTHE3R1FvWStnRFhETWdZTVV6ditOOWdF?=
 =?utf-8?B?cmlHbGhJeWhOa3d6S2N2aGE1ZW01SnhlZ3k0UzhNK21Id0hvQ2FMbFdFQnVU?=
 =?utf-8?B?SVRWUFFhYXl4WDU5NmV2TlFIU3RpWTE5Nm9FQXhMbUF4L2dRdWcyWEk5bHVj?=
 =?utf-8?B?dTU3eFoybjNDTXB3WEhuQkdqakpBYmFNdkkrUUpwYktXTlFxUC9rL0VCUDdi?=
 =?utf-8?B?cUVwdUFRZjQ4bFZnMU9DaDVLTll0QVRTMGllODduWSt2enNVRVl1NlJGS0hK?=
 =?utf-8?B?QjJ3bjlCang1NU9jclhabWxESlFtbnl2REd6QU0yenc5RU5Vei9TQ3JZa2l4?=
 =?utf-8?B?R1NENGlmTGhwMjBwVE1vTkFmVjM3RVd3YWpXZDc0bElqemhPblVZVzhwUlVj?=
 =?utf-8?B?OTlOcFR6Sm5UMjFyZTdaL0lCMEd4UTRTNTI4eHdLYm40eEFlT1FBZm9LdTgv?=
 =?utf-8?B?YzEwRG04Y3NCdW5oR2tNSUVaRE1rb2hiU3RCNTBTWEd1QnFqTmhOQ1NlYXZV?=
 =?utf-8?B?S3EvRkIzd2hDY3laZEJIU3c2bmozR29RNzMwVWkvUHVxUGNTdVVaVExKd2oy?=
 =?utf-8?B?NnB2NFBRQTZwYWhyYkRUWDUvbEFTajlGc3ZPdzUwNmxMdmZ3R25uS2dwb2hQ?=
 =?utf-8?B?UzlKU1lJbTA5ZUF5TTg2empiUUtrVlBxTFRIeDBNalJnRTY2Z3M1L3EzdXdU?=
 =?utf-8?B?RWZpc2Nta201K3NkcnozVFFkWGdqeDFLZzJwdE9KMERVVUsxeFNqS0ZBV09q?=
 =?utf-8?B?b29IaktOaEV4ZmpWZHNaMjJxclFKc0hLTSs0R1RzdTJ2bXBrOVRld3FRTits?=
 =?utf-8?B?eTl1WmJJcUlmUmc2NW1JQmxaL0k2STY1YWFKRFV3QkJwZzFMRXQ0b05NQnNh?=
 =?utf-8?B?QjVyUlI3RVRCTW1OWFdlYVJ1dSttUW1RL3I3eVhEbFExWEYvLzl4N0llcHZt?=
 =?utf-8?B?WjcxdUJ0aFBtL0lHRFh0ZUdsNnJ6dW95R3oyWllVc05XNHJSeVE4Qlk2UGlP?=
 =?utf-8?B?OGhvZ1gxaHR1VGx1V21wRzJ3aUdUTGZLa0RzcGttbUxpVXQ3UWJQM1VHb1Bn?=
 =?utf-8?B?ZlUzYWxJbG1MWGFlUWRPWmJaVThkcmJjV3NmYURvT0VlckVKRmtJRnliRS84?=
 =?utf-8?B?eFZvZXY5ZzlCMTloSTk0RFl6WTJyRFlpQk8waFpKNXc4YnRDNFliNzV5U0RE?=
 =?utf-8?B?NGo1NE54NWJ6R1drclFYMXlQTzlFZnZBT09ObFJ3ZmRQU0FWcWhTK3ZuczVK?=
 =?utf-8?B?RndLMEVYekZmZ2dJSDF2SGFVWW1LaTlNTjJFNi8rQ1hPbkNrOEZoTXVPaXp2?=
 =?utf-8?B?dmcyRFNKNWlWRGVvNlZaV0F0L1hPN2o2TW84UXNXL1dPSmtlY0VDRHJaMXlE?=
 =?utf-8?B?WlVibHpQbnlkNWV4MFVlSXZ4TWJldFRaOUdrNnVtWVNwM0YzLyt0L3R4WWc0?=
 =?utf-8?B?VDJNRGVHclpYakk1Y0JaV0ZTcjhXdW1jS2pWZEVia1ArQ2owbmlaSlBGTVBj?=
 =?utf-8?B?eWM5T01qR1VUN2k0VEZXUkZNOEU4TDZEK3dubHI5VHYwVWY4dVJXUThQdW52?=
 =?utf-8?B?TURobE9NRkdMYVp3eFBUMi9LdHdWK0pZNFJXWW1MVVcyVXYzckh3STV2Q01u?=
 =?utf-8?B?ZVo5NVJkVWNvdHpucnFsWFV2Z1UvNGZoeWNtZHE3TG1YdVZvMkhzMS9lcEtC?=
 =?utf-8?B?aVJLRUNaVWpFdmFMTXlLY0lEejFNMzlvamNGVk4wR25xanZVQzRITkpxUHl1?=
 =?utf-8?B?OXFVeFN5YWJreEVjempEK0l5ZS9QNU9oamNybnpURnFJUFJIcVdHdGRKMTVq?=
 =?utf-8?B?TExlOS94TGVCYnB6QytmenN1SzgyS1ZWL0prVjZoRTg4eFJSZVdtUXBqM3Ez?=
 =?utf-8?Q?aG/Lhk7xyB1hBArID2?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb2aa565-4be5-42b4-5cdc-08de84d3bc51
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 09:50:06.8232
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PCWOkbFWK15EsP+QZSqBbeHGtN1bjd9FtRfLxb1qQu6QbgjyCbHn/vUpSn6xDbT/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7835
X-Spamd-Bar: -----
Message-ID-Hash: LNUIEQSC3BOHJGW67ZW7LDF7J27LFUZR
X-Message-ID-Hash: LNUIEQSC3BOHJGW67ZW7LDF7J27LFUZR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: phasta@mailbox.org, aliceryhl@google.com, gary@garyguo.net, lossin@kernel.org, daniel.almeida@collabora.com, joelagnelf@nvidia.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma_fence: be more defensive in dma_fence_release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LNUIEQSC3BOHJGW67ZW7LDF7J27LFUZR/>
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
	NEURAL_HAM(-0.00)[-0.490];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,amd.com:mid]
X-Rspamd-Queue-Id: 98FF82B9662
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgQm9yaXMsDQoNCk9uIDMvMTgvMjYgMTA6MTgsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4g
SGkgQ2hyaXN0aWFuLA0KPiANCj4gT24gV2VkLCAxOCBNYXIgMjAyNiAwOToyMTozNCArMDEwMA0K
PiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiAN
Cj4+IE9uIDMvMTcvMjYgMTY6MjEsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4+PiBPbiBUdWUs
IDE3IE1hciAyMDI2IDE1OjQ4OjI1ICswMTAwDQo+Pj4gIkNocmlzdGlhbiBLw7ZuaWciIDxja29l
bmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQo+Pj4gICANCj4+Pj4gSW4gY2Fz
ZSBvZiBhIHJlZmNvdW50aW5nIGJ1ZyBkbWFfZmVuY2VfcmVsZWFzZSgpIGNhbiBiZSBjYWxsZWQN
Cj4+Pj4gYmVmb3JlIHRoZSBmZW5jZSB3YXMgZXZlbiBzaWduYWxlZC4NCj4+Pj4NCj4+Pj4gUHJl
dmlvdXNseSB0aGUgZG1hX2ZlbmNlIGZyYW1ld29yayB0aGVuIGZvcmNlIHNpZ25hbGVkIHRoZSBm
ZW5jZQ0KPj4+PiB0byBtYWtlIHN1cmUgdG8gdW5ibG9jayB3YWl0ZXJzLCBidXQgdGhhdCBjYW4g
cG90ZW50aWFsbHkgbGVhZCB0bw0KPj4+PiByYW5kb20gbWVtb3J5IGNvcnJ1cHRpb24gd2hlbiB0
aGUgRE1BIG9wZXJhdGlvbiBjb250aW51ZXMuIFNvIGJlDQo+Pj4+IG1vcmUgZGVmZW5zaXZlIGhl
cmUgYW5kIHBpY2sgdGhlIGxlc3NlciBldmlsLg0KPj4+Pg0KPj4+PiBJbnN0ZWFkIG9mIGZvcmNl
IHNpZ25hbGluZyB0aGUgZmVuY2Ugc2V0IGFuIGVycm9yIGNvZGUgb24gdGhlDQo+Pj4+IGZlbmNl
LCByZS1pbml0aWFsaXplIHRoZSByZWZjb3VudCB0byBzb21ldGhpbmcgbGFyZ2UgYW5kIHRhaW50
IHRoZQ0KPj4+PiBrZXJuZWwuDQo+Pj4+DQo+Pj4+IFRoaXMgd2lsbCBsZWFrIG1lbW9yeSBhbmQg
ZXZlbnR1YWxseSBjYW4gY2F1c2UgYSBkZWFkbG9jayB3aGVuIHRoZQ0KPj4+PiBmZW5jZSBpcyBu
ZXZlciBzaWduYWxlZCwgYnV0IGF0IGxlYXN0IHdlIHdvbid0IHJ1biBpbnRvIGFuIHVzZQ0KPj4+
PiBhZnRlciBmcmVlIG9yIHJhbmRvbSBtZW1vcnkgY29ycnVwdGlvbi4NCj4+Pj4NCj4+Pj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
Pj4+PiAtLS0NCj4+Pj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDE4ICsrKysrKysr
KysrKysrLS0tLQ0KPj4+PiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pDQo+Pj4+DQo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMNCj4+Pj4gYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgaW5kZXggMTgyNmJhNzMw
OTRjLi44YmYwNzY4NWEwNTMNCj4+Pj4gMTAwNjQ0IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYw0KPj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+Pj4gQEAg
LTU5MywxNCArNTkzLDI0IEBAIHZvaWQgZG1hX2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGtyZWYgKmty
ZWYpDQo+Pj4+ICAJCS8qDQo+Pj4+ICAJCSAqIEZhaWxlZCB0byBzaWduYWwgYmVmb3JlIHJlbGVh
c2UsIGxpa2VseSBhDQo+Pj4+IHJlZmNvdW50aW5nIGlzc3VlLiAqDQo+Pj4+IC0JCSAqIFRoaXMg
c2hvdWxkIG5ldmVyIGhhcHBlbiwgYnV0IGlmIGl0IGRvZXMgbWFrZQ0KPj4+PiBzdXJlIHRoYXQg
d2UNCj4+Pj4gLQkJICogZG9uJ3QgbGVhdmUgY2hhaW5zIGRhbmdsaW5nLiBXZSBzZXQgdGhlIGVy
cm9yDQo+Pj4+IGZsYWcgZmlyc3QNCj4+Pj4gLQkJICogc28gdGhhdCB0aGUgY2FsbGJhY2tzIGtu
b3cgdGhpcyBzaWduYWwgaXMgZHVlDQo+Pj4+IHRvIGFuIGVycm9yLg0KPj4+PiArCQkgKiBUaGlz
IHNob3VsZCBuZXZlciBoYXBwZW4sIGJ1dCBpZiB0cnkgdG8gYmUNCj4+Pj4gZGVmZW5zaXZlIGFu
ZCB0YWtlDQo+Pj4+ICsJCSAqIHRoZSBsZXNzZXIgZXZpbC4gSW5pdGlhbGl6ZSB0aGUgcmVmY291
bnQgdG8NCj4+Pj4gc29tZXRoaW5nIGxhcmdlLA0KPj4+PiArCQkgKiBidXQgbm90IHNvIGxhcmdl
IHRoYXQgaXQgY2FuIG92ZXJmbG93Lg0KPj4+PiArCQkgKg0KPj4+PiArCQkgKiBUaGF0IHdpbGwg
bGVhayBtZW1vcnkgYW5kIGNvdWxkIGRlYWRsb2NrIGlmDQo+Pj4+IHRoZSBmZW5jZSBuZXZlcg0K
Pj4+PiArCQkgKiBzaWduYWxzLCBidXQgYXQgbGVhc3QgaXQgZG9lc24ndCBjYXVzZSBhbiB1c2UN
Cj4+Pj4gYWZ0ZXIgZnJlZSBvcg0KPj4+PiArCQkgKiByYW5kb20gbWVtb3J5IGNvcnJ1cHRpb24u
DQo+Pj4+ICsJCSAqDQo+Pj4+ICsJCSAqIEFsc28gdGFpbnQgdGhlIGtlcm5lbCB0byBub3RlIHRo
YXQgaXQgaXMNCj4+Pj4gcmF0aGVyIHVucmVsaWFibGUgdG8NCj4+Pj4gKwkJICogY29udGludWUu
DQo+Pj4+ICAJCSAqLw0KPj4+PiAgCQlkbWFfZmVuY2VfbG9ja19pcnFzYXZlKGZlbmNlLCBmbGFn
cyk7DQo+Pj4+ICAJCWZlbmNlLT5lcnJvciA9IC1FREVBRExLOw0KPj4+PiAtCQlkbWFfZmVuY2Vf
c2lnbmFsX2xvY2tlZChmZW5jZSk7DQo+Pj4+ICsJCXJlZmNvdW50X3NldCgmZmVuY2UtPnJlZmNv
dW50LnJlZmNvdW50LCBJTlRfTUFYKTsNCj4+Pj4gIA0KPj4+DQo+Pj4gSSdtIG5vdCBjb252aW5j
ZWQgdGhpcyBpcyB1c2VmdWwuIElmIHdlIGxlYWsgdGhlIG9iamVjdCwgbm8gb25lDQo+Pj4gc2hv
dWxkIGhhdmUgYSByZWYgdG8gcmVsZWFzZSBhbnl3YXkuIFRoaXMgZG9lcyByYWlzZSBhIHF1ZXN0
aW9uDQo+Pj4gdGhvdWdoLiBUaGUgY2FzZSB3ZSdyZSB0cnlpbmcgdG8gcHJvdGVjdCBhZ2FpbnN0
IGlzIGZlbmNlX2NhbGxiYWNrDQo+Pj4gYmVpbmcgcmVnaXN0ZXJlZCB0byB0aGlzIGZlbmNlIGFu
ZCB3YWl0aW5nIGZvciBhbiBldmVudCB0byBzaWduYWwNCj4+PiBhbm90aGVyIHByb3h5IGZlbmNl
LiAgDQo+Pg0KPj4gTm90IHF1aXRlLiBUaGUgcmVhbCBwcm9ibGVtYXRpYyBjYXNlIGlzIHRoYXQg
aXQgaXMgbmVjZXNzYXJ5IHRvIHdhaXQNCj4+IGZvciBhIGZlbmNlIHRvIHNpZ25hbCB3aXRoIHRv
bnMgb2YgbWVtb3J5IG1hbmFnZW1lbnQgbG9ja3MgaGVsZC4NCj4+DQo+PiBTbyBpdCBjYW4gYmUg
dGhhdCBhIHNpbXBsZSBtZW1vcnkgYWxsb2NhdGlvbiBjeWNsZXMgYmFjayBhbmQgZGVwZW5kcw0K
Pj4gb24gdGhlIGZlbmNlIHRvIHNpZ25hbC4NCj4+DQo+Pj4gSG93IGNhbiB0aGUgcmVmY250IGRy
b3AgdG8gemVybyBpbiB0aGF0IGNhc2U/IElzbid0IHRoZSBwcm94eQ0KPj4+IHN1cHBvc2VkIHRv
IG93biBhIHJlZiBvbiB0aGUgZmVuY2UuIEJlZm9yZSB3ZSBnbyBmdXJ0aGVyLCBJJ2QgbGlrZQ0K
Pj4+IHRvIHVuZGVyc3RhbmQgd2hhdCB3ZSdyZSB0cnlpbmcgdG8gZG8uICANCj4+DQo+PiBXZWxs
IHdlIGFyZSBpbiBDIGhlcmUsIHNvIGl0cyBzaW1wbHkgY29kaW5nIGVycm9ycy4gQW4gdW5lY2Vz
c2FyeQ0KPj4gZG1hX2ZlbmNlX3B1dCgpIGluIGFuIGVycm9yIHBhdGggaXMgZW5vdWdoIHRvIHRy
aWdnZXIgdGhpcy4NCj4+DQo+Pj4gVGhlIG9yaWdpbmFsIGRpc2N1c3Npb24gdGhhdCBsZWQgeW91
IHRvIHdyaXRlIHRoaXMgcGF0Y2ggd2FzIGFib3V0DQo+Pj4gZGV0ZWN0aW5nIHdoZW4gYSBmZW5j
ZSBlbWl0dGVyL3Byb2R1Y2VyIHdvdWxkIGxlYXZlIHVuc2lnbmFsbGVkDQo+Pj4gZmVuY2VzIGJl
aGluZCwgYW5kIHRoZSBwcm9ibGVtIHdlIGhhdmUgaXMgd2hlbiBzdWNoIHVuc2lnbmFsbGVkDQo+
Pj4gZmVuY2VzIGhhdmUgb2JzZXJ2ZXJzIHdhaXRpbmcgZm9yIGEgInNpZ25hbGxlZCIgZXZlbnQu
IElmIHRoZQ0KPj4+IHJlZmNudCBkcm9wcyB0byB6ZXJvIGFuZCB0aGUgZmVuY2UgaXMgcmVsZWFz
ZWQsIHdlJ3JlIGFscmVhZHkNCj4+PiBwYXNzZWQgdGhhdCBwb2ludCwgdW5mb3J0dW5hdGVseS4g
IA0KPj4NCj4+IFdlbGwgdGhhdCBpcyBub3QgcXVpdGUgY29ycmVjdC4NCj4+DQo+PiBUaGUgbW9z
dCBjb21tb24gcHJvYmxlbSBpcyB0aGF0IHdlIGhhdmUgdW5iYWxhbmNlZA0KPj4gZG1hX2ZlbmNl
X2dldCgpL2RtYV9mZW5jZV9wdXQoKSBhbmQgd2UgZW5kIHVwIGluIGRtYV9mZW5jZV9yZWxlYXNl
KCkNCj4+IGJlZm9yZSB0aGUgaXNzdWVyIG9mIHRoZSBkbWFfZmVuY2UgaGFzIGEgY2hhbmNlIHRv
IHNpZ25hbCBpdC4NCj4gDQo+IE9rYXksIHNvIHRoYXQncyBjbGVhcmx5IG5vdCBzb2x2aW5nIHRo
ZSBwcm9ibGVtIHdlIHdlcmUgZGlzY3Vzc2luZyBvbg0KPiBbMV0sIEkgdGhvdWdodCBpdCB3YXMg
cmVsYXRlZC4NCg0KWWVhaCwgY29ycmVjdC4gVGhlIHNpdHVhdGlvbiBvbiB0aGUgUnVzdCBzaWRl
IGlzIGNsZWFybHkgZGlmZmVyZW50LCB5b3Ugc2ltcGx5IGRvZXNuJ3QgaGF2ZSBpbmNvcnJlY3Qg
cmVmY291bnRpbmcgaXNzdWVzIHRoZXJlLg0KDQo+IEFsc28sIEknbSBzdGlsbCBza2VwdGljYWwg
dGhhdCB3ZSBzaG91bGQNCj4gdHJ5IGFuZCBoYXJkZW4gc2VjdXJpdHkgZm9yIGEgc2l0dWF0aW9u
IHRoYXQncyBhbHJlYWR5IGNvdmVyZWQgYnkNCj4gcmVmY291bnQgb3ZlcmZsb3cgZGV0ZWN0aW9u
Lg0KDQpSZWZjb3VudCBvdmVyZmxvdyBkZXRlY3Rpb24gaXMgdW5mb3J0dW5hdGVseSBub3QgZW5h
YmxlZCBldmVyeXdoZXJlIGFuZCBldmVuIGlmIGl0IGlzIGVuYWJsZWQgaXQgZG9lc24ndCBwcm90
ZWN0IGFnYWluc3Qgc3VjaCBpc3N1ZXMgaGVyZSwgaXQgb25seSBwb2ludHMgdGhlbSBvdXQgd2hl
biBpdCBpcyBhbHJlYWR5IHRvIGxhdGUuDQoNCj4gSSBnZXQgd2h5IHlvdSB3YW50IHRvIGRvIHRo
YXQsIGJ1dCBpdA0KPiBmZWVscyBsaWtlIHRoZSB3cm9uZyB0b29sIHRvIG1lLiBJIG1lYW4sIHdl
IHdvdWxkbid0IGV2ZW4gc2VlIGl0IGFzDQo+IGFuIHVuYmFsYW5jZWQgZG1hX2ZlbmNlX2dldC9w
dXQoKSBub3cgdGhhdCB5b3UgbWFudWFsbHkgc2V0IHRoZSByZWZjb3VudA0KPiB0byBJTlRfTUFY
LCB3aGljaCBpcyB0aGUgYnVnIHlvdSdyZSB0cnlpbmcgdG8gY292ZXIgZm9yIGluIHRoZSBmaXJz
dA0KPiBwbGFjZS4NCj4gDQo+Pg0KPj4gU2VlIHRoZSBtYWluIHB1cnBvc2Ugb2YgRE1BIGZlbmNl
cyBpcyB0byBwcmV2ZW50IHJlbGVhc2luZyBtZW1vcnkNCj4+IGJhY2sgaW50byB0aGUgY29yZSBt
ZW1vcnkgbWFuYWdlbWVudCBiZWZvcmUgdGhlIERNQSBvcGVyYXRpb24gaXMNCj4+IGNvbXBsZXRl
ZC4NCj4gDQo+IFRoYXQncyBhIFVBRiwganVzdCBhIGRpZmZlcm50IGtpbmQgKGRldmljZSBVQUYg
aW5zdGVhZCBvZiBDUFUgVUFGKS4NCg0KWWVhaCBhZ3JlZSBjb21wbGV0ZWx5Lg0KDQpUaGUgcHJv
YmxlbSBpcyB0aGF0IFNXIFVBRiBpc3N1ZXMgYXJlIHByZXZlbnRhYmxlIGJ5IHVzaW5nIHNvbWV0
aGluZyBsaWtlIFJ1c3Qgd2hpbGUgSFcgVUFGIGlzc3VlcyBjYW4gb25seSBiZSBmb3VuZCBieSBh
biBJT01NVSBhbmQgdGhhdCBpbiB0dXJuIGlzIGRpc2FibGVkIG1vcmUgb2Z0ZW4gdGhhbiBub3Qu
DQoNCkVzcGVjaWFsbHkgR1BVcyBhbmQgYWNjZWxlcmF0b3JzIHVzdWFsbHkgdXNlIHBhc3MgdGhy
b3VnaCBtb2RlIGZvciBJT01NVSBiZWNhdXNlIG9mIGJvdGggSFcgYnVncyBhcyB3ZWxsIGFzIHBl
cmZvcm1hbmNlIG92ZXJoZWFkLg0KDQo+IEFueXdheSwgbXkgcG9pbnQgcmVtYWlucywgdGhlIHJv
b3Qgb2YgdGhlIGlzc3VlIHlvdSdyZSBjb3ZlcmluZyBmb3IgaXMNCj4gYSBkbWFfZmVuY2UgVUFG
IChtb3JlIHB1dCgpcyB0aGFuIGdldCgpcywgYW5kIHRoZSBDUFUgc3RpbGwgaGFzIGEgcmVmDQo+
IG9uIGEgcmVsZWFzZWQgZG1hX2ZlbmNlIG9iamVjdCkuIFRoZSBvdXRjb21lIG9mIHRoaXMgbWln
aHQgYmUgZGV2aWNlDQo+IFVBRiBiZWNhdXNlIG9mIHRoZSBhdXRvLXNpZ25hbGxpbmcsIGJ1dCB0
aGF0J3Mgc3RpbGwganVzdCBhbm90aGVyDQo+IHN5bXB0b20gb2YgdGhlIGRtYV9mZW5jZSBVQUYg
KHdpdGggd2lkZXIgY29uc2VxdWVuY2VzLCBhZG1pdHRlZGx5KS4NCj4gDQo+Pg0KPj4gU28gd2hl
biBhIERNQSBmZW5jZSBzaWduYWxzIHRvIGVhcmx5IGl0IG1lYW5zIHRoYXQgdGhlIEhXIGlzIHN0
aWxsDQo+PiB3cml0aW5nIHRvIHRoYXQgbWVtb3J5IGJ1dCB3ZSBhbHJlYWR5IHBvdGVudGlhbGx5
IHJlLXVzaW5nIHRoZSBtZW1vcnkNCj4+IGVuZGluZyBpbiByYW5kb20gbWVtb3J5IGNvcnJ1cHRp
b24uDQo+IA0KPiBZZXAsIEknbSB3ZWxsIGF3YXJlIG9mIHRoYXQuDQo+IA0KPj4NCj4+IFVBRiBp
c3N1ZXMgYXJlIGhhcm1sZXNzIGNvbXBhcmVkIHRvIHRoYXQuDQo+IA0KPiBUaGF0J3Mgbm90IHdo
YXQgSSdtIGFyZ3VpbmcgYWdhaW5zdC4gV2hhdCBJJ20gc2F5aW5nIGlzIHRoYXQgeW91IGp1c3QN
Cj4gcGFwZXIgb3ZlciBhbiBpc3N1ZSBieSBtZXNzaW5nIHVwIHdpdGggdGhlIHJlZmNvdW50LCBh
bmQgbm93IGl0J3MgaGFyZA0KPiB0byB0ZWxsIHdoYXQgdGhlIHJvb3QgY2F1c2UgaXMuIA0KDQpD
b21wbGV0ZWx5IGFncmVlIGFzIHdlbGwuIEl0J3Mgbm90IGEgcmVhbCBzb2x1dGlvbiwgYnV0IG9u
bHkgdGhlIGxlc3NlciBldmlsLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBSZWdh
cmRzLA0KPiANCj4gQm9yaXMNCj4gDQo+IFsxXWh0dHBzOi8veWhidC5uZXQvbG9yZS9hbGwvOGJh
YzE1NTktZTEzOS00YTc0LWE2ZTgtYzI4NDYwOTNkYjcyQGFtZC5jb20vDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
