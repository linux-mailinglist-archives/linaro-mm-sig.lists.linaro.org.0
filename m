Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH7tH3ZI6mkhxgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:27:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD76454E2A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:27:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF6CE404A5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 16:27:32 +0000 (UTC)
Received: from LO3P265CU004.outbound.protection.outlook.com (mail-uksouthazon11020105.outbound.protection.outlook.com [52.101.196.105])
	by lists.linaro.org (Postfix) with ESMTPS id 219883F9A5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 16:13:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=garyguo.net header.s=selector1 header.b=FBZTWyCY;
	dmarc=pass (policy=none) header.from=garyguo.net;
	spf=pass (lists.linaro.org: domain of gary@garyguo.net designates 52.101.196.105 as permitted sender) smtp.mailfrom=gary@garyguo.net;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J5vJx/MmkRpLsFgOwik6gbbiDItNBBbJ6cqSYDMh5Qeu+IEVrsLlAxUgD8NcqBFgeKQWXYjYwaFdtmVWWe6/72KR2rL+bdyTUAl0GyyerrMXyKep66+oe2dF6epo712w6CGlO6gvgCxFuVk9mja2nscps7M9WP/mkANFYL88mh81O7Xsl4NYde9kASy0AYAVPOHIcHIrRbpvttOMMb6EcABlkNTLnl3ukdOrKXjNckn84zMJOEKJUROCJeLb5WJ+wM10fgtJ3ClP3DrlbRgZ3T75i71m/AkDhIcAPbGRC/jrvhWsDvK5ZAh+xaG+a8ZD2xVxqvTvnsRL9vHyL3k3BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rKP/CRtb+O5YdgP7LNPFZnKuCbOFHi8pihd1gXFZsCc=;
 b=y2rnBf6EMHuQUP/DdTRT0Z9OxPUVwoPemuwAtBtrUckcZjoMnBvk34Q30FqGcgyQzjycgJO5QjylTniyaKCzV+xmAsa5GvqWmcDJ85Ze60OBeoEWYMI7of7v+YKV2mw63nt6V8B6nn1IU/7pEFXarndVLBilqSSvF1WSPckgmMGqvylB/z255RJuzx8IpqTX5Xgly+zjBMiSe8JGA3V+RSuxqcwK6VAlh4xBFnvSrRC78gr3hKKUoibIXlGuyRo6QqoNSLvTJhqhKl6HWpk0oIh3GcPEsNRAFU8OVL8f9ULIAqIOEiqCekB4FG4nDC1CLfUl2Al3FJb2Wp8M6wjg6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rKP/CRtb+O5YdgP7LNPFZnKuCbOFHi8pihd1gXFZsCc=;
 b=FBZTWyCYPL1Y9hwfrKK65lQrzQWurTYcv4hoO/aQ8BPu64bo/w31eJ36wz8oMVm4gCCoM0DrNes3D8C0jbVOs9QA0Ds0a/YF7AJeLixODTOmY+7Z5ufUVYrL/k1dOX2tris9sllAjVFA6GlKDf95zGJaiYluAdptWVO35QOkVj4=
Received: from CW1P265MB8877.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:27c::13)
 by LO7P265MB7741.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:398::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Thu, 23 Apr
 2026 16:13:43 +0000
Received: from CW1P265MB8877.GBRP265.PROD.OUTLOOK.COM
 ([fe80::6c9e:93c8:10db:e995]) by CW1P265MB8877.GBRP265.PROD.OUTLOOK.COM
 ([fe80::6c9e:93c8:10db:e995%6]) with mapi id 15.20.9846.016; Thu, 23 Apr 2026
 16:13:43 +0000
Date: Thu, 23 Apr 2026 17:13:42 +0100
Message-Id: <DI0O1G7AX1I3.1SCSOLCPR258X@garyguo.net>
From: "Gary Guo" <gary@garyguo.net>
To: "Alexandre Courbot" <acourbot@nvidia.com>, "Gary Guo" <gary@garyguo.net>
X-Mailer: aerc 0.21.0
References: <20260421235346.672794-1-lyude@redhat.com>
 <20260421235346.672794-5-lyude@redhat.com>
 <DI0MI6UF325Y.2TDWZGCN3WGIG@nvidia.com>
 <DI0MOCJ8BO4A.37OS3YPF3VPK3@garyguo.net>
 <DI0N2EDVV7MI.UFR6TKHDJLZG@nvidia.com>
In-Reply-To: <DI0N2EDVV7MI.UFR6TKHDJLZG@nvidia.com>
X-ClientProxiedBy: LO4P123CA0517.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:272::20) To CW1P265MB8877.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:400:27c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CW1P265MB8877:EE_|LO7P265MB7741:EE_
X-MS-Office365-Filtering-Correlation-Id: 323c8d81-0bb1-4278-a032-08dea1534a01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|10070799003|1800799024|376014|366016|7416014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	k5ttqrVVPTjuzKsyt0iDkrhY2V+I8nbWLwqN5194SRnYvaAQRTfISBJ7JtFkbRpdsfnSs5L0cbZWimnj/8MSsPVEeGdOoE9dm4plWdibpsQZ9THkqP3DjFdu0hzvjqHZL8Vpb6PpXDPsbybiTYHkGELy3zxWAhxuiYz2gg0RC7LLLY3lUvDTbNDuHWwTntEMbiW0M6JzohIZSP3g13J5zd54fX32OXTCxV8srG9S9WwdSMkc5x3ifHpW0TaQ+N9B0SYmD/j0FSpEwkI4Hp3cSOnOnDI+1AladvIFfT/ZRVAQGmG5e90mIjBX/iL0uGKdwIliS5hfcGx6gw2dpZzf6L4euCfMf4myJO3J5ZaE7bXyqtxjaLssYMkBoUs3P1NxKWJDarvlBikB+izZgKHm8F2u/xwDxg9hyN/5xHXYZze/hy8aCYZwDdcM6sUSzzimFa1jCAtqscMC/HMxwhkfWtB//qsYVGlhJlWWTVl9coBJPIqo6PCGgVf2pOwbfMyFoq6VrHL3y6XKuWOS/x4++IRg6zBrz3Tphp48OUV91vf7FxQFFpTeBDdcyC8Q5mSqSKZGzW7P3fQ1vWurolYrQslXr2S/g5fkVAidhps+5t1XEFihJjKBUKSl7P3aSzo+0QV/e3eWQUlhCsXd4X5oJPKC9ynK4W+DwWEQhUybVCxsTdNk1Q476dc4SnxcIvQg
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CW1P265MB8877.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(7416014)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TldmZUlCc0ozOXg1V3hVTXRYcDNMV2xBVEdmMnFzaFdzQmRLa1lQSGQxZERv?=
 =?utf-8?B?VmhVUGxYbGJBSlo1aGNNbWVWbVhiSjlYQlNpVU5yektQUCtmQWxIcTQ4V21r?=
 =?utf-8?B?NVc2anJsU05Kbjh6cW5sRXdqMkRQSWZrT0lRMHNCK054bDhvVkJobGpsN0t4?=
 =?utf-8?B?N01oM0xkS0NMU3RhYnpnMmpYK2xTVmNScGpLUWs4WWlGbzZPTnBRVXpkNFk5?=
 =?utf-8?B?SEdURjJHaGdrSlBMQmlSdzNjRTRVZzZEa09rYkI0Y1Vud05sUDUySFJ0UkE3?=
 =?utf-8?B?KytmNjZqcDdZV2Uzdk9CdUtOdkFyM3ZSTmluaXIxTVRXS2FVK0RNeXpweVNx?=
 =?utf-8?B?Ynd5SFMwVko0MFk2NFNzNHlvanMvbld6Q0d3ekZoTU9mZ21SQ2podU5IcGlQ?=
 =?utf-8?B?S2pnc3J3aDFnVkF6ODc5M09DbldYejN5Q1p2cE1KbGxjaWNJOW45U0Z1akNq?=
 =?utf-8?B?VS9QbUNYKzBsUnZMOUQ4aTljOXNscE83TlZJejNDZWVzcjFGY0tEeXluV1VY?=
 =?utf-8?B?NlhtT3NZc0Jtd3dDYVhWbXBLc2ZPaTlIUy9RTFhiaUJyR0l1Y2c5K3ZuYkJC?=
 =?utf-8?B?RlU2RU5jTGVVU0tQUXEyMkg5Yy9WSWZSMHdtN0h0SXhoT2lSVE5FdGgxR2s4?=
 =?utf-8?B?RU5tSDBjR3hwWmVVV0pxdWFrWmsraGdrMXpBRTlBOUZ6SlBSakZ6V1dQNHFn?=
 =?utf-8?B?cUpUSWtqaWpRWGtUdHFHbUFaRXdrZng1MnVhSjFlb1FlM2xURi9KMXkwOUdR?=
 =?utf-8?B?dlNGTldRMlFGdDJoYXA5MVl0aUI1Ry8zbmw0QlQ2cnZBWmdmeGtXVkZQSDg5?=
 =?utf-8?B?b1V1QUVrQ3c4Mk8rZ1cwV1NWUExHVFJyTmZOdGN0N1ZDbE1LRUozQmN0R1NY?=
 =?utf-8?B?ajNPSGhmZ283dEJJSjNBaGYzR2dGRFNwTHpkVlBBbmc0VElVRnhINVhPaDNP?=
 =?utf-8?B?YnQyZXloeUcxNk1QaFpUcnA5UTZvSXpaNjBGb3FPY2Y1dFdjSWE4T1daRkI4?=
 =?utf-8?B?MDY1bXlJM2U2eEZaaFBTcGFBYlM3S0JKSkd6MFJldTc4YmkxQVQ1WW5rV2Y2?=
 =?utf-8?B?VnA3TzFvZVdGcmNRdHdWUDFteWhIb1hDd2MzenBUdXc1d1BFNmF2amVXTjh6?=
 =?utf-8?B?VnNsNnI5S3pZUzJCNFZTNGNTS2dlMy9XcC9UNW9IL1dVakRBeG9haWFqZlZ5?=
 =?utf-8?B?Q0txYWtLQXV5UlVEWFFYMmtUcERLUDZad3VwekRkK3I4TlUveThnRXJPUG94?=
 =?utf-8?B?N1FWODFlZnI5akJGYXFsbDZ3dlp0V1FKam9CWTZUejJUT3kyVHdYbUw0bkwr?=
 =?utf-8?B?YktOSjVYSmFCSG1MV293NUczK0tUby8yRE93ZTF6UFg2RmpCdkRGZ3lESzVM?=
 =?utf-8?B?YmcwR3ZJR1JQTlJMNFN5azFwT0FWZUlqU2R1M0tXdzhiZE5FYUNraVZjZzJF?=
 =?utf-8?B?WUwxUzFMK1lXMk9XOFp1U3hzNmxWakVDekp0Tzd0S1lBbTY2Z1FMMjdJb3da?=
 =?utf-8?B?OTRqcis1U24xbVhKWkxyZXhPMlhHNTlQS0E1Q2kySDUvclN3NFVtUTAyNHZi?=
 =?utf-8?B?cmt3M1FRUDRSK3M0bDh2RlVaZ2JHaXNZeGVIK3lnQzkzM3NXOFFiN1g5dWMv?=
 =?utf-8?B?dzdxczlkSHNScjBKR2I3ejFQT2ZSWGpUL0R0d0dJMzRwM0djTTBoaGltTXJB?=
 =?utf-8?B?MGlEeEVjTUFRSy9lNlVFUVkwSkpsNnlYV0xHRFNtTGZHWjliYjViWXhTUlps?=
 =?utf-8?B?d1FGRUlLVmNJR3JKeGlOcDhGeTZuVklCY2JHRVpJb1BxQzJIZjBXRlp1KzhX?=
 =?utf-8?B?MW02NXY1WjgzQ0szZ253blRSUklJV2g0UjlYclFOYkZNbGUvQmVmRC9BTlJF?=
 =?utf-8?B?V3NXYlQ1RHBVRHhrdmpwVzZQbXNidldkM1VkMHFWMFArQlpSejdjQ1RsMm1r?=
 =?utf-8?B?S3RROWw1WW1uVDVyVG5hZWtvcVJxMnBCZm1mcjVnMnltREpMT0k2VDlueVRw?=
 =?utf-8?B?L0NQTkVQdUVMbFoxSTZYaERUOGd5aVQ1UjVMY2Z6NmpMeGdSVWIxeEljZGFn?=
 =?utf-8?B?MU9QS1BxcVdWZWw2REpONktMWHNFaHNGeEQ5UlI5dzAxdVZ2dEN3OHNHakpN?=
 =?utf-8?B?REhBbjdWVktwOW1ablFHNGhiZE9ROEZCelNmU3lXdWVMSEk5VVhDemZ3WlpQ?=
 =?utf-8?B?K0xETVBIbzBSbUV2K3RoZjVtNVlGd1U3OXdFUGkrejVHSTBZbDF2cEwwOTd2?=
 =?utf-8?B?VGFGSHdkTTRucE5US0ZXdm9BY241emo5Q2c3U09mMWJ4MS95bS9tZk9sLzlW?=
 =?utf-8?B?bnhudmFVdGVyanFSdmFyWkU4ZzY2b0d4cGpvV0NJWjAzdW5nMkNvUT09?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 323c8d81-0bb1-4278-a032-08dea1534a01
X-MS-Exchange-CrossTenant-AuthSource: CW1P265MB8877.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 16:13:43.0894
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sumF7J7gjOfojs0wHMqisN99ufsvcS6ew5SsaWjisDnXENLGxIIxWNnab4jhjhm3GBMznCef+6dPaezap7b+Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO7P265MB7741
X-Spamd-Bar: ----
X-MailFrom: gary@garyguo.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GQ36XUGVQL2ECVS5IKLLJIQYZFW76PSW
X-Message-ID-Hash: GQ36XUGVQL2ECVS5IKLLJIQYZFW76PSW
X-Mailman-Approved-At: Thu, 23 Apr 2026 16:26:54 +0000
CC: Lyude Paul <lyude@redhat.com>, nouveau@lists.freedesktop.org, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 4/5] rust: drm: gem: Introduce shmem::SGTable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GQ36XUGVQL2ECVS5IKLLJIQYZFW76PSW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[garyguo.net:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[garyguo.net : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,lists.freedesktop.org,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	DKIM_TRACE(0.00)[garyguo.net:-];
	NEURAL_HAM(-0.00)[-0.981];
	FROM_NEQ_ENVFROM(0.00)[gary@garyguo.net,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[garyguo.net:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1FD76454E2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu Apr 23, 2026 at 4:27 PM BST, Alexandre Courbot wrote:
> On Fri Apr 24, 2026 at 12:09 AM JST, Gary Guo wrote:
>> On Thu Apr 23, 2026 at 4:01 PM BST, Alexandre Courbot wrote:
>>>
>>> I didn't like this `UnsafeCell<Option>` since the last time, but only figured how to replace it now:
>>>
>>>     sgt_res: SetOnce<Devres<SGTableMap<T>>>,
>>>
>>> It's actually designed for that! And lets you remove at least one unsafe
>>> statement, while simplifying `get_sg_table` quite a bit. With the other
>>> suggestions I have below, here is my version of `get_sg_table` for
>>> reference:
>>>
>>>     fn get_sg_table<'a>(
>>>         &'a self,
>>>         dev: &'a device::Device<Bound>,
>>>     ) -> Result<&'a Devres<SGTableMap<T>>> {
>>>         let _dma_resv = DmaResvGuard::new(self);
>>>
>>>         if let Some(devres) = self.sgt_res.as_ref() {
>>>             Ok(devres)
>>>         } else {
>>>             // Only called for the side-effect of populating the GEM SG table.
>>>             // SAFETY: We grabbed the lock required for calling this function above.
>>>             from_err_ptr(unsafe {
>>>                 bindings::drm_gem_shmem_get_pages_sgt_locked(self.as_raw_shmem())
>>>             })?;
>>>
>>>             // INVARIANT:
>>>             // - We called drm_gem_shmem_get_pages_sgt_locked above and checked that it
>>>             //   succeeded, fulfilling the invariant of `SGTableMap` that the object's `sgt` field
>>>             //   is initialized.
>>>             // - We store this Devres in the object itself and don't move it, ensuring that the
>>>             //   object it points to remains valid for the lifetime of the `SGTableMap`.
>>>             let devres =
>>>                 Devres::new(dev, init!(SGTableMap { obj: self.into() })).inspect_err(|_| {
>>>                     // We can't make sure that the pages for this object are unmapped on
>>>                     // driver-unbind, so we need to release the sgt
>>>                     // SAFETY:
>>>                     // - We grabbed the lock required for calling this function above
>>>                     // - We checked above that get_pages_sgt_locked() was successful
>>>                     unsafe { bindings::__drm_gem_shmem_free_sgt_locked(self.as_raw_shmem()) }
>>>                 })?;
>>>
>>>             self.sgt_res.populate(devres);
>>>
>>>             // PANIC: `populate` has just succeeded, guaranteeing that `sgt_res` is populated.
>>>             Ok(self.sgt_res.as_ref().unwrap())
>>>         }
>>>     }
>>>
>>> And if only we could populate the `SetOnce` with a `impl Init<T, E>`,
>>> then we could even remove the DMA reservation acquisition on the fast
>>> path, because `SetOnce` comes with its own locking and the DMA lock here
>>> is used outside of its intended scope. I'll try to push the necessary
>>> work for `SetOnce` and maybe we can do that as a follow-up patch.
>>
>> I have this sitting in my once_wip branch for while
>> https://github.com/nbdd0121/linux/commits/once_wip/
>> (the specific commit that adds init support is
>> https://github.com/nbdd0121/linux/commit/4aabdbcf20b11626c253f203745b1d55c37ab2ee).
>>
>> This was implemented for lazy revocable support which Alvin has picked up, see
>> https://lore.kernel.org/rust-for-linux/20260326-b4-tyr-debugfs-v1-1-074badd18716@linux.dev/
>
> Haha that's pretty close to what I wrote to test the code. Do you have
> plans to send it soon?

I mean.. Alvin has already sent it?

If you (or someone else) want to carry the patch in another series, by all means.

Best,
Gary
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
