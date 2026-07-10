Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AG80I8HmUGq08AIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2026 14:34:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D98DF73ACF7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2026 14:34:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=E7PjSRYM;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E751340EC3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2026 12:34:07 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012040.outbound.protection.outlook.com [40.93.195.40])
	by lists.linaro.org (Postfix) with ESMTPS id C7DA840962
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 12:33:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V1mhNoS002StjmPlaGrpNYIlD5qe2RO+5FueH4ZV39+kYYgeJOjZ1iOSofeuiiOw20rgziZOYrBsBCHTCoudZhP6zLbTPVPjUDmWEqwan58oHCBi1WxtkXxGeutDA3BTLULZ+fvGanv5q+qQx6d8ieyK4ZYjIW9p1ZwE+LMzSRCpMNm6qU5Ns/no2TBikMF9LSaV1uHLXe9lh+hODxVlvMJ2EfXXIpU8XJQcnl9oq6UFtYETHdJQjfBKW9P0iVTZm0RJ0ufJ+maT25gSU3wambewB/wJkmRXEPk6fHSAXz5YfsGY2e56NwLlTGEtX5zUP2eSeL9L3kgqNArd1kwy6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4fJc2XVqGPSsolcEvXw6vulA0PYq460fs5OE7e+JzSg=;
 b=N0+NfiX6h83hT2ofpgKTBSn7fbQTF6y4NhPLtxtSkt4NldUvTcNbFQDG41qfvilP85kWvM+pnD6fYcREXSFFk8WRo0IQSAT8fb1fC5JAQrieXlQCvlKevf+m6nlAQPkBTPSAfgy33A9sjormOXeWaDuZEWWpG4lK7ZOKSZYVg6mylUD1auI+iG2uterUWyvw+5tHnp5BHA+ioO3VTKCJQ0vBXp3FTi/s4BzLpzgrux3EcX9iqTGZOyTQSsaaHKRCMN+TCN8EK58efqijY8Sl4RMf9EdqYJmFQl6XXhlNu/lvPttv8MCoolmEnIjCRy79xczvxcO1JrvffF9lQz8f9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4fJc2XVqGPSsolcEvXw6vulA0PYq460fs5OE7e+JzSg=;
 b=E7PjSRYMPC2RxuxXUO39HO0+0KzS0UTl+4b0sKAIc9dn1eTlP0ArvqiCAshl0MKG8M/3WvfFzmNIHBhgyoYxhgw+J48+JubjrKDQKxF2vBwYy37H69vWqo0ucHI5a5ItoutDYKfxWqg4qM3Ah+vcwcoBHNT7x8OIYTKZFhZ0iD0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB5807.namprd12.prod.outlook.com (2603:10b6:510:1d3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.17; Fri, 10 Jul
 2026 12:33:53 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Fri, 10 Jul 2026
 12:33:53 +0000
Message-ID: <99679491-8dae-460b-b662-81b130829956@amd.com>
Date: Fri, 10 Jul 2026 14:33:43 +0200
User-Agent: Mozilla Thunderbird
To: Baineng Shou <shoubaineng@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T . J . Mercier" <tjmercier@google.com>, Sandeep Patil
 <sspatil@android.com>, "Andrew F . Davis" <afd@ti.com>
References: <20260703080922.1838362-1-shoubaineng@gmail.com>
 <20260710105740.3080070-1-shoubaineng@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260710105740.3080070-1-shoubaineng@gmail.com>
X-ClientProxiedBy: FR4P281CA0271.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB5807:EE_
X-MS-Office365-Filtering-Correlation-Id: cda1c5e9-33a2-4a13-828a-08dede7f808d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|7416014|376014|23010399003|1800799024|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 
	lSpjfg3siqAMVAqRhwSH+QXiGJRX+N4fpvTrJY63SrgV6INrdP9SJqlcTTW0O5bBToIzeBUc8RjKgcyCY16wfoqk5EmHWM6KLpvpfmDH02XLPeU2lHMVwu0ywMqkiJCxxk0L7pJykR94qShFbE74xQy0ktJTpZ/F5AFwGhHNc5paocRWS5Ui5/cmNTz6/j2vpVDqMCNt82KbOB84iSm7K8V8xYUq2wg7CnvziCpH66Irjh6vlZZ8NOAYZDon0QgFlLBC3csPGBowGwUBuFpn4bP505OJBTR+z/qps0QTx47tjgWXVClxTLG61x851QmkM0AYIEwWBXHu7l/sRUuBppJodCgfdLzrrpyzFEbvkfBPln2N7RqHFJ8u4Pqw4EIP6goE5pIc1RNxGxm1NwQqjRYHPsJRYJ3W7cYCDIoY4D0AgH0Mg6b0ow1aSSrICzQSbtc2G7s9XufHUU7SKe6wLoilEhPrl140geTa9wGixKml5MpSegXjCuo0Aj+jlp4+L5dNKRi/pAlde5UDhtYtP1fIFLaIx6W9djfy3BG+FsElBPGj3zuVKjashpnhmnpAwgzmL77TDkDX1gs25rULQQh9ATjYtXYwzCH+MNVNrXcAP+QHxptYQtZUTr3EimVDz+YOK+76Sz5Yiy3i53tGy0bn9vNllfjZYixg9CI8XV4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(23010399003)(1800799024)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cXF4dkk0R0RSemRYejVoZGlqODRNZ2V6MzBIRHYzLzhFSXpkNCtoL1ZoYkow?=
 =?utf-8?B?bXlqSkdYMlhFenFHMTV5Y3hGNENMSXpFN2xNSkZhaXpvb3BGbG1qcUxmV3JV?=
 =?utf-8?B?Slk0NG9FV1dvVmMyNUJFUGlrWWgyLy8xQklZblI4cHJicGpkajhUWUFSY0JH?=
 =?utf-8?B?OHFFZXFsNDZlU0ZYQnZQdXFTWkgvdVlUUmptQURIT2hiVFJDdW9LaUg4eFlE?=
 =?utf-8?B?NTJFTHI4Sno5UGVKTXNPdFhoanoxUlpaK1JvTFZsYU1RdkpseUN2Q1RZYkFz?=
 =?utf-8?B?THJNbVBSQ1V2Y0pQRkxFMTZYTUdqYkRZS1hTYUVkR0JXbWRKREVvcW5tWk5H?=
 =?utf-8?B?bW1KZ1Z3VkVNODdGRnUwNE1adDVmdTh5eWxvNkFYamZ4cnc3Qi9qQ0hNNmNM?=
 =?utf-8?B?c2EyVTVOUlJzcDZpWWxvbjZoTmxWSkpZdTMvZHRsLytHYStVQjB3ekl0T05l?=
 =?utf-8?B?YzRYT21JVHZwYkJob2ttd0lxWlNhTjdhR00yMlphK2hBTHJKMGtyclJUMjdB?=
 =?utf-8?B?N0FOc21oVUFhUFhkalRzdklDYllEQ1Q0MXB0SFZmcWloT3V0WHZ3d1hLU0F0?=
 =?utf-8?B?ZHJJK0ZzZWpuNVBaZGcyU3d0NkYxZ0RxQVdXc2tyYnBmZ0tsRnZVMEtpY3gv?=
 =?utf-8?B?VkRDK0FRd3k5K0tpZnpEYmc1UGRXVjNiZUF3K0JacFhmYkp1Y2dneGxJY3BM?=
 =?utf-8?B?ekNpTVoxVGltOS9EZkZzQktXaW80Q0J4N3FKNzFzWkh6SExKSHF1USsvWGRF?=
 =?utf-8?B?ZzZPMGJ5dXE0Ny9QazkzUFRGZ1ZadE16dHdoVng2NmJRcVRqV25TdU9nV2Uw?=
 =?utf-8?B?cncvUjdEblN0K2ZyaWVFek10NFZpYlN5ZkNTSG5sWkdQSm9oL1prRVIzTHEx?=
 =?utf-8?B?SUFYS1psVWhqYjZ1RUpMOWVQbXNWckkxeUxqRDRTNkg3Y0s3dy8zWW50dFBz?=
 =?utf-8?B?TzBIS1NyZ0xCSmJQZ3BpK05ML29oM1M0UWhYcmxtUWJBRU5BMmdjZm1MbU1u?=
 =?utf-8?B?S01pT2UvQyt1YWlvM1JNUVE0YWp2aEpSSkpnOUhQSVczeU1YdUxDK0RjcnpH?=
 =?utf-8?B?cldCdTE0ZHdtWkVFRXRMeDNDVEZEcW9wWXNLVzVxZTZKZTV2SE81eU96YUFQ?=
 =?utf-8?B?WVdjdzUzelMyVnNNWm04b2NUU1hOM1VjdmdZMjRHai9uVElDZVJrUFdnNWZ2?=
 =?utf-8?B?akNjU3RkMnpNa202Z1RqZ2ZKUlNTNzRaVktndWRQeVg1MFFFQnlwYlA2a21Q?=
 =?utf-8?B?TkcvcVRtOXdNcm5XSDJwaTFYR2ZyUXRmemhsN0Z5ekZOMzNhWDluUkxLNEVv?=
 =?utf-8?B?K2dIY3Bia1Z6eGNGVVJxMVRCMkNnRWR5dG9SZDh6a0JYRWVxTHZyT1BENUFq?=
 =?utf-8?B?SmE4RVFKTmtZaHNpRnJmcGlhR1lsRzJReko0OWtOSzFnQVNXT2Myb0k0c2lt?=
 =?utf-8?B?T29UUEJiZVFKS0FUOS9pbFZYMWZ0U2lWRkNPTit5cVB0N1hXM3FnYllxZ3FH?=
 =?utf-8?B?VXBVekhIbDVBRm9xZy9FbVN0aUlTdzJkTHVDNXpHZG5CRm1na2tyMW9wZ1NS?=
 =?utf-8?B?R1RJcXpNei96aHRYdkQ1dXBLQnlzNm4xZU9hMXNvV3laUjRDbUVvcGFKeEQy?=
 =?utf-8?B?b1BKVnJRNlBFSDRWSlo1b2ZQMTZMTzdpR0VkM25NSVNmWFE1aDliOGxnd0h1?=
 =?utf-8?B?VmNRWjBXWmkveVRsdFRhUUlOc1NFYk10dWlRNWdEYzVlVTJreExYNXo4LzVN?=
 =?utf-8?B?Smp6V1V5dUVHZFVEOTIzbTdyWjRaNkpiVVdENG9oTytaSGJhNFNxSVpJa1pw?=
 =?utf-8?B?M2JCNytDT2tYMnJjeDlpQUxUcGg2TVZWeTUxRCtyWUYzNWc2TjdRUWQ3Y3dP?=
 =?utf-8?B?R0dYd3RPUjMwUG9EMTJ1K21keVYzbFlXbEdqNlNGaEJVaWZnelVYanB4RGg2?=
 =?utf-8?B?MzMzRVN4L2tkSEhJeXJEVWhRSlBScVNIVWFHb3BsSTlNaU1JMldUb3YwNDU2?=
 =?utf-8?B?bFdtd1UranhCM3ErSCtneTNuTXlweitrUUFrNXF0a05aRW5mR3BZMXdEVE84?=
 =?utf-8?B?NlFiUUg4bEpwRCt0VmJGMUkvUklteXRmYWtPWEJEdlZBUVhyWnh1Y2JPMDQ0?=
 =?utf-8?B?T1ZGeUFXdkJrL1hac0hneGhsRUhvY1c2c3JWbnZzakp0NDNSUWEycHFLa0lm?=
 =?utf-8?B?QkdicElYZlY1OFNYcHVOdXRpeUpieno3ZndzUVFYVHA5eFI0MFlnN0tSWUVC?=
 =?utf-8?B?OXJmc1lDYVpNYXhKbE1DZnFkQmp3Snc4TGJtQ2FGbFBpTTVIZmlQYmJLSGpW?=
 =?utf-8?Q?Xaxau7IaGEwN1pxUZe?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cda1c5e9-33a2-4a13-828a-08dede7f808d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2026 12:33:53.6700
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I1+7sFmQT0YwDru0A1ovKAYpiI8/6/xuGbRRAlM+hu6eQp8VZQPPkz+pKht5hp9h
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5807
X-Spamd-Bar: -----
Message-ID-Hash: SDD2TMRFUWLS5GZVIIF5UINFOWT6GMIA
X-Message-ID-Hash: SDD2TMRFUWLS5GZVIIF5UINFOWT6GMIA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: dma-heap: don't publish fd before copy_to_user() succeeds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SDD2TMRFUWLS5GZVIIF5UINFOWT6GMIA/>
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
	FORGED_RECIPIENTS(0.00)[m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:sspatil@android.com,m:afd@ti.com,m:stable@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,collabora.com,arm.com,google.com,android.com,ti.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D98DF73ACF7

T24gNy8xMC8yNiAxMjo1NywgQmFpbmVuZyBTaG91IHdyb3RlOg0KPiBETUFfSEVBUF9JT0NUTF9B
TExPQyBhbGxvY2F0ZXMgYSBkbWEtYnVmIGFuZCBpbnN0YWxscyBhbiBmZCBpbnRvIHRoZQ0KPiBj
YWxsZXIncyBmZCB0YWJsZSB2aWEgZG1hX2J1Zl9mZCgpIC0+IGZkX2luc3RhbGwoKSBiZWZvcmUN
Cj4gZG1hX2hlYXBfaW9jdGwoKSBjb3BpZXMgdGhlIHJlc3VsdCBiYWNrIHRvIHVzZXJzcGFjZS4g
IElmIHRoZSB0cmFpbGluZw0KPiBjb3B5X3RvX3VzZXIoKSBmYWlscywgdXNlcnNwYWNlIG5ldmVy
IGxlYXJucyB0aGUgZmQgbnVtYmVyLCBidXQgdGhlDQo+IGZkIChhbmQgdGhlIHVuZGVybHlpbmcg
ZG1hLWJ1ZiByZWZlcmVuY2UpIGFyZSBhbHJlYWR5IHZpc2libGUgdG8NCj4gb3RoZXIgdGhyZWFk
cyBpbiB0aGUgc2FtZSBwcm9jZXNzIGFuZCBhcmUgbGVha2VkIGZvciB0aGUgbGlmZXRpbWUgb2YN
Cj4gdGhlIHByb2Nlc3MuDQo+IA0KPiBUaGUgb2J2aW91cyAiY2xvc2UgaXQgb24gdGhlIGZhaWx1
cmUgcGF0aCIgZml4IGlzIHVuc2FmZTogb25jZQ0KPiBmZF9pbnN0YWxsKCkgaGFzIHJ1biwgYW5v
dGhlciB0aHJlYWQgY2FuIGFscmVhZHkgZHVwKCkgdGhlIGZkLCBzZW5kDQo+IGl0IHZpYSBTQ01f
UklHSFRTLCBvciBjbG9zZSgpIGl0IGFuZCBsZXQgaXRzIG51bWJlciBiZSByZXVzZWQsIHNvIGEN
Cj4gc3Vic2VxdWVudCBjbG9zZV9mZCgpIGZyb20gdGhlIGlvY3RsIHBhdGggY2FuIG9wZXJhdGUg
b24gYW4gdW5yZWxhdGVkDQo+IGZpbGUuICBUaGlzIHdhcyBwb2ludGVkIG91dCBieSBDaHJpc3Rp
YW4gS8O2bmlnIG9uIHYxIFsxXS4NCg0KSUlSQyBpdCB3YXMgR3JlZyB3aG8gcG9pbnRlZCB0aGF0
IG91dCBudW1lcm91cyB0aW1lcywgSSdtIGp1c3QgcmVwZWF0aW5nIHdoYXQgSSB3YXMgdG9sZC4N
Cg0KPiANCj4gUmVzdHJ1Y3R1cmUgdGhlIGFsbG9jYXRpb24gcGF0aCBzbyB0aGF0IGZkX2luc3Rh
bGwoKSBpcyB0aGUgbGFzdCwNCj4gdW5mYWlsYWJsZSBzdGVwIG9mIGEgc3VjY2Vzc2Z1bCBpb2N0
bDoNCj4gDQo+ICAgMS4gaGVhcC0+b3BzLT5hbGxvY2F0ZSgpICAgICAgY3JlYXRlcyB0aGUgZG1h
X2J1Zi4NCj4gICAyLiBnZXRfdW51c2VkX2ZkX2ZsYWdzKCkgICAgICByZXNlcnZlcyBhbiBmZCBu
dW1iZXIgaW4gdGhlIGNhbGxlcidzDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ZmQgdGFibGUgd2l0aG91dCBwdWJsaXNoaW5nIGl0LCBzbw0KPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIG5vIG90aGVyIHRocmVhZCBjYW4gb2JzZXJ2ZSBpdC4NCj4gICAzLiBjb3B5
X3RvX3VzZXIoKSAgICAgICAgICAgICBkZWxpdmVycyB0aGUgZmQgbnVtYmVyIHRvIHVzZXJzcGFj
ZTsNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvbiBmYWlsdXJlIHRoZSBmZCBp
cyByZXR1cm5lZCB3aXRoDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHV0X3Vu
dXNlZF9mZCgpIGFuZCB0aGUgZG1hX2J1Zg0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZmVyZW5jZSBpcyBkcm9wcGVkIHdpdGgNCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBkbWFfYnVmX3B1dCgpLCBsZWF2aW5nIG5vIHVzZXItDQo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdmlzaWJsZSBzdGF0ZSBiZWhpbmQuDQo+ICAgNC4gZmRfaW5zdGFs
bCgpICAgICAgICAgICAgICAgcHVibGlzaGVzIHRoZSBmZCAtLSBmcm9tIGhlcmUgb24gdGhlDQo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW9jdGwgY2Fubm90IGZhaWwuDQo+IA0K
PiBUbyBtYWtlIHRoaXMgcG9zc2libGUsIGRtYV9oZWFwX2lvY3RsX2FsbG9jYXRlKCkgaXMgcmVm
YWN0b3JlZCB0bw0KPiByZXR1cm4gdGhlIHN0cnVjdCBkbWFfYnVmICogZGlyZWN0bHkgKHJldHVy
bmluZyBFUlJfUFRSIG9uIGZhaWx1cmUpDQo+IHNvIHRoZSBjYWxsZXIgaG9sZHMgdGhlIGRtYWJ1
ZiByZWZlcmVuY2UgYWNyb3NzIHN0ZXBzIDMgYW5kIDQuDQo+IFRoZSBmZCBpcyB3cml0dGVuIGlu
dG8gdGhlIGtkYXRhIGJ1ZmZlciBiZWZvcmUgY29weV90b191c2VyKCkgc28NCj4gdGhlIHJlc2Vy
dmVkIGZkIG51bWJlciByZWFjaGVzIHVzZXJzcGFjZSBhdG9taWNhbGx5IHdpdGggdGhlIGluc3Rh
bGwuDQo+IA0KPiBUaGUgZmFpbHVyZSBhdCBzdGVwIDMgaXMgZWFzaWx5IHJlYWNoYWJsZSBmcm9t
IHVzZXJzcGFjZTogcGFzcyBhDQo+IHN0cnVjdCBkbWFfaGVhcF9hbGxvY2F0aW9uX2RhdGEgdGhh
dCBsaXZlcyBpbiBhIHBhZ2Ugd2hvc2UgcHJvdGVjdGlvbg0KPiBpcyBmbGlwcGVkIHRvIFBST1Rf
UkVBRCBiZXR3ZWVuIGNvcHlfZnJvbV91c2VyKCkgYW5kIGNvcHlfdG9fdXNlcigpDQo+IChlLmcu
IHZpYSBtcHJvdGVjdCgpKS4gIEJlZm9yZSB0aGlzIGNoYW5nZSBlYWNoIHN1Y2ggaW9jdGwgbGVh
a3Mgb25lDQo+IGRtYWJ1ZiBmZDsgYWZ0ZXIgaXQsIHRoZSBmZCB0YWJsZSBpcyB1bmNoYW5nZWQg
b24gZmFpbHVyZSBhbmQgb25seQ0KPiAvZGV2L2RtYV9oZWFwLzxuYW1lPiByZW1haW5zIG9wZW4u
DQo+IA0KPiBObyBVQVBJIG9yIGhlYXAtZHJpdmVyIGludGVyZmFjZSBjaGFuZ2UuDQo+IA0KPiBb
MV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzE3NWU5OGRlLWY0MTQtNDdkNy04
MWMxLWMwZmUwYThmN2Y2MkBhbWQuY29tLw0KPiANCj4gRml4ZXM6IGMwMmE4MWZiYTc0ZiAoImRt
YS1idWY6IEFkZCBkbWEtYnVmIGhlYXBzIGZyYW1ld29yayIpDQo+IENjOiBzdGFibGVAdmdlci5r
ZXJuZWwub3JnDQo+IFNpZ25lZC1vZmYtYnk6IEJhaW5lbmcgU2hvdSA8c2hvdWJhaW5lbmdAZ21h
aWwuY29tPg0KDQpQYXRjaCBsb29rcyBzYW5lIHRvIG1lLCBidXQgc29tZWJvZHkgd2l0aCBtb3Jl
IGJhY2tncm91bmQgaW4gRE1BLWJ1ZiBoZWFwcyBzaG91bGQgcHJvYmFibHkgdGFrZSBhIGxvb2sg
YXMgd2VsbC4NCg0KQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIHwgODAgKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0
MCBpbnNlcnRpb25zKCspLCA0MCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+IGlu
ZGV4IGE3NmJmM2Y4YjA3MS4uMGE5YmY2MmViMDZjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWhlYXAuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiBA
QCAtNTUsMzMgKzU1LDYgQEAgTU9EVUxFX1BBUk1fREVTQyhtZW1fYWNjb3VudGluZywNCj4gIAkJ
ICJFbmFibGUgY2dyb3VwLWJhc2VkIG1lbW9yeSBhY2NvdW50aW5nIGZvciBkbWEtYnVmIGhlYXAg
YWxsb2NhdGlvbnMgKGRlZmF1bHQ9ZmFsc2UpLiIpOw0KPiAgRVhQT1JUX1NZTUJPTF9OU19HUEwo
bWVtX2FjY291bnRpbmcsICJETUFfQlVGX0hFQVAiKTsNCj4gIA0KPiAtc3RhdGljIGludCBkbWFf
aGVhcF9idWZmZXJfYWxsb2Moc3RydWN0IGRtYV9oZWFwICpoZWFwLCBzaXplX3QgbGVuLA0KPiAt
CQkJCSB1MzIgZmRfZmxhZ3MsDQo+IC0JCQkJIHU2NCBoZWFwX2ZsYWdzKQ0KPiAtew0KPiAtCXN0
cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+IC0JaW50IGZkOw0KPiAtDQo+IC0JLyoNCj4gLQkgKiBB
bGxvY2F0aW9ucyBmcm9tIGFsbCBoZWFwcyBoYXZlIHRvIGJlZ2luDQo+IC0JICogYW5kIGVuZCBv
biBwYWdlIGJvdW5kYXJpZXMuDQo+IC0JICovDQo+IC0JbGVuID0gUEFHRV9BTElHTihsZW4pOw0K
PiAtCWlmICghbGVuKQ0KPiAtCQlyZXR1cm4gLUVJTlZBTDsNCj4gLQ0KPiAtCWRtYWJ1ZiA9IGhl
YXAtPm9wcy0+YWxsb2NhdGUoaGVhcCwgbGVuLCBmZF9mbGFncywgaGVhcF9mbGFncyk7DQo+IC0J
aWYgKElTX0VSUihkbWFidWYpKQ0KPiAtCQlyZXR1cm4gUFRSX0VSUihkbWFidWYpOw0KPiAtDQo+
IC0JZmQgPSBkbWFfYnVmX2ZkKGRtYWJ1ZiwgZmRfZmxhZ3MpOw0KPiAtCWlmIChmZCA8IDApIHsN
Cj4gLQkJZG1hX2J1Zl9wdXQoZG1hYnVmKTsNCj4gLQkJLyoganVzdCByZXR1cm4sIGFzIHB1dCB3
aWxsIGNhbGwgcmVsZWFzZSBhbmQgdGhhdCB3aWxsIGZyZWUgKi8NCj4gLQl9DQo+IC0JcmV0dXJu
IGZkOw0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgaW50IGRtYV9oZWFwX29wZW4oc3RydWN0IGlub2Rl
ICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpDQo+ICB7DQo+ICAJc3RydWN0IGRtYV9oZWFwICpo
ZWFwOw0KPiBAQCAtOTksMzAgKzcyLDQyIEBAIHN0YXRpYyBpbnQgZG1hX2hlYXBfb3BlbihzdHJ1
Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkNCj4gIAlyZXR1cm4gMDsNCj4gIH0N
Cj4gIA0KPiAtc3RhdGljIGxvbmcgZG1hX2hlYXBfaW9jdGxfYWxsb2NhdGUoc3RydWN0IGZpbGUg
KmZpbGUsIHZvaWQgKmRhdGEpDQo+ICtzdGF0aWMgc3RydWN0IGRtYV9idWYgKmRtYV9oZWFwX2lv
Y3RsX2FsbG9jYXRlKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpkYXRhKQ0KPiAgew0KPiAgCXN0
cnVjdCBkbWFfaGVhcF9hbGxvY2F0aW9uX2RhdGEgKmhlYXBfYWxsb2NhdGlvbiA9IGRhdGE7DQo+
ICAJc3RydWN0IGRtYV9oZWFwICpoZWFwID0gZmlsZS0+cHJpdmF0ZV9kYXRhOw0KPiArCXN0cnVj
dCBkbWFfYnVmICpkbWFidWY7DQo+ICAJaW50IGZkOw0KPiArCXNpemVfdCBsZW47DQo+ICANCj4g
IAlpZiAoaGVhcF9hbGxvY2F0aW9uLT5mZCkNCj4gLQkJcmV0dXJuIC1FSU5WQUw7DQo+ICsJCXJl
dHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiAgDQo+ICAJaWYgKGhlYXBfYWxsb2NhdGlvbi0+ZmRf
ZmxhZ3MgJiB+RE1BX0hFQVBfVkFMSURfRkRfRkxBR1MpDQo+IC0JCXJldHVybiAtRUlOVkFMOw0K
PiArCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gIA0KPiAgCWlmIChoZWFwX2FsbG9jYXRp
b24tPmhlYXBfZmxhZ3MgJiB+RE1BX0hFQVBfVkFMSURfSEVBUF9GTEFHUykNCj4gLQkJcmV0dXJu
IC1FSU5WQUw7DQo+ICsJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiArDQo+ICsJbGVuID0g
UEFHRV9BTElHTihoZWFwX2FsbG9jYXRpb24tPmxlbik7DQo+ICsJaWYgKCFsZW4pDQo+ICsJCXJl
dHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiArDQo+ICsJZG1hYnVmID0gaGVhcC0+b3BzLT5hbGxv
Y2F0ZShoZWFwLCBsZW4sIGhlYXBfYWxsb2NhdGlvbi0+ZmRfZmxhZ3MsDQo+ICsJCQkJICAgICBo
ZWFwX2FsbG9jYXRpb24tPmhlYXBfZmxhZ3MpOw0KPiAgDQo+IC0JZmQgPSBkbWFfaGVhcF9idWZm
ZXJfYWxsb2MoaGVhcCwgaGVhcF9hbGxvY2F0aW9uLT5sZW4sDQo+IC0JCQkJICAgaGVhcF9hbGxv
Y2F0aW9uLT5mZF9mbGFncywNCj4gLQkJCQkgICBoZWFwX2FsbG9jYXRpb24tPmhlYXBfZmxhZ3Mp
Ow0KPiAtCWlmIChmZCA8IDApDQo+IC0JCXJldHVybiBmZDsNCj4gKwlpZiAoSVNfRVJSKGRtYWJ1
ZikpDQo+ICsJCXJldHVybiBkbWFidWY7DQo+ICsNCj4gKwlmZCA9IGdldF91bnVzZWRfZmRfZmxh
Z3MoaGVhcF9hbGxvY2F0aW9uLT5mZF9mbGFncyk7DQo+ICsJaWYgKGZkIDwgMCkgew0KPiArCQlk
bWFfYnVmX3B1dChkbWFidWYpOw0KPiArCQlyZXR1cm4gRVJSX1BUUihmZCk7DQo+ICsJfQ0KPiAg
DQo+ICAJaGVhcF9hbGxvY2F0aW9uLT5mZCA9IGZkOw0KPiAgDQo+IC0JcmV0dXJuIDA7DQo+ICsJ
cmV0dXJuIGRtYWJ1ZjsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHVuc2lnbmVkIGludCBkbWFfaGVh
cF9pb2N0bF9jbWRzW10gPSB7DQo+IEBAIC0xMzgsNiArMTIzLDggQEAgc3RhdGljIGxvbmcgZG1h
X2hlYXBfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGludCB1Y21kLA0KPiAgCXVu
c2lnbmVkIGludCBpbl9zaXplLCBvdXRfc2l6ZSwgZHJ2X3NpemUsIGtzaXplOw0KPiAgCWludCBu
ciA9IF9JT0NfTlIodWNtZCk7DQo+ICAJaW50IHJldCA9IDA7DQo+ICsJaW50IGZkOw0KPiArCXN0
cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+ICANCj4gIAlpZiAobnIgPj0gQVJSQVlfU0laRShkbWFf
aGVhcF9pb2N0bF9jbWRzKSkNCj4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+IEBAIC0xNzQsMTUgKzE2
MSwyOCBAQCBzdGF0aWMgbG9uZyBkbWFfaGVhcF9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwgdW5z
aWduZWQgaW50IHVjbWQsDQo+ICANCj4gIAlzd2l0Y2ggKGtjbWQpIHsNCj4gIAljYXNlIERNQV9I
RUFQX0lPQ1RMX0FMTE9DOg0KPiAtCQlyZXQgPSBkbWFfaGVhcF9pb2N0bF9hbGxvY2F0ZShmaWxl
LCBrZGF0YSk7DQo+ICsJCWRtYWJ1ZiA9IGRtYV9oZWFwX2lvY3RsX2FsbG9jYXRlKGZpbGUsIGtk
YXRhKTsNCj4gKw0KPiArCQlpZiAoSVNfRVJSKGRtYWJ1ZikpIHsNCj4gKwkJCXJldCA9IFBUUl9F
UlIoZG1hYnVmKTsNCj4gKwkJCWJyZWFrOw0KPiArCQl9DQo+ICsNCj4gKwkJZmQgPSAoKHN0cnVj
dCBkbWFfaGVhcF9hbGxvY2F0aW9uX2RhdGEgKilrZGF0YSktPmZkOw0KPiArCQlpZiAoY29weV90
b191c2VyKCh2b2lkIF9fdXNlciAqKWFyZywga2RhdGEsIG91dF9zaXplKSAhPSAwKSB7DQo+ICsJ
CQlwdXRfdW51c2VkX2ZkKGZkKTsNCj4gKwkJCWRtYV9idWZfcHV0KGRtYWJ1Zik7DQo+ICsJCQly
ZXQgPSAtRUZBVUxUOw0KPiArCQl9IGVsc2Ugew0KPiArCQkJZmRfaW5zdGFsbChmZCwgZG1hYnVm
LT5maWxlKTsNCj4gKwkJfQ0KPiArDQo+ICAJCWJyZWFrOw0KPiAgCWRlZmF1bHQ6DQo+ICAJCXJl
dCA9IC1FTk9UVFk7DQo+ICAJCWdvdG8gZXJyOw0KPiAgCX0NCj4gIA0KPiAtCWlmIChjb3B5X3Rv
X3VzZXIoKHZvaWQgX191c2VyICopYXJnLCBrZGF0YSwgb3V0X3NpemUpICE9IDApDQo+IC0JCXJl
dCA9IC1FRkFVTFQ7DQo+ICBlcnI6DQo+ICAJaWYgKGtkYXRhICE9IHN0YWNrX2tkYXRhKQ0KPiAg
CQlrZnJlZShrZGF0YSk7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
