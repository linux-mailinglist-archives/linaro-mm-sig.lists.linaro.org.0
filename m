Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNzxEJIW8mljnwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:32:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BCF495CE0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:32:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A3B1401DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 14:32:40 +0000 (UTC)
Received: from LO3P265CU004.outbound.protection.outlook.com (mail-uksouthazon11020099.outbound.protection.outlook.com [52.101.196.99])
	by lists.linaro.org (Postfix) with ESMTPS id E5E783F796
	for <linaro-mm-sig@lists.linaro.org>; Sun, 26 Apr 2026 14:20:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=garyguo.net header.s=selector1 header.b=crxWSXnf;
	dmarc=pass (policy=none) header.from=garyguo.net;
	spf=pass (lists.linaro.org: domain of gary@garyguo.net designates 52.101.196.99 as permitted sender) smtp.mailfrom=gary@garyguo.net;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bSdEFgTcGfhBPMJXgr5w8JhJjMIg4FfmQxwfkvAGGBevI4QGo/wKcfj3YPLlnRHMxqgi2gZnNQikDS5lnqc/+2j7+pMwPt5ZpJj7J9HY8Wm1R5Y/XM8nnwNJzBBJxcU3PyEC+4+3+vzN0zoYgYh1C5HP74s5Bq+MQYxzTxprIcbz3Iwy/Mb7K7jSUNTfXNMcwTnN0dmZaSHseIA+XuFuK4Ap6H6k0T5LeDlkGApaL2rYII1TAlz9eJCjWjTi+BsswmHb4WgyrQ5ScrWCntVymOPmXLHzZ/j9BDG6atW60a/oee+gZElLmZV8jLnWj6WNjX93AHTNP1xD3JtT/WsRnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFjjlU+u92aIfJdIjkWHPqi1RWeexZS8Gp+GPDyW+zI=;
 b=nZY89yKOYqimWSiFXLT8xrIeJ5e9nOIbHqIB/PVc7rzYyK/llYf5xolb91Q/6801sLb43XAwUBC8mOO7RsOrse3bawi1ncPNozlz2qeUyxR77kU6UUpL4Obhawc1YxlHdX9y8xZk+IwISoRAfRCLlnc/DwVqBf2LFpkd6KnbY/xxKPtYzoOKCc70quutYvEij6vKwmLikM6ZSXxceZMIbUvuTGN2qehc19Tu7p8VgnjJlE6os/FZMwZqaGlaFg7VKDDtAW2uxRzn3Tjl4afmUpGbhxlGxm189PTW4B5C3ss+8IFqD6g5uf0kQWDaEd6dRGRSD22ECXwiNTGFjAFSfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GFjjlU+u92aIfJdIjkWHPqi1RWeexZS8Gp+GPDyW+zI=;
 b=crxWSXnfTJqlz9QF0elEylEE/UPTuPMcmfjO+T8yRDRP498N6QeaChMiyLBIzW6NhjgplLDCiiKaCBJrfqhVad9ZBMpo1f6H8biicgvYhYxXGAOUq5DEt9mOqXaaBSvwOXP780tE6cD8QDtRtDeSIMaKWYJUhK893S5FZorwuUw=
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:488::16)
 by LOBP265MB9250.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:47d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.23; Sun, 26 Apr
 2026 14:20:32 +0000
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986]) by LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986%4]) with mapi id 15.20.9846.025; Sun, 26 Apr 2026
 14:20:32 +0000
Date: Sun, 26 Apr 2026 15:20:31 +0100
Message-Id: <DI35IFD8M019.2WGRH5ADW6NOG@garyguo.net>
From: "Gary Guo" <gary@garyguo.net>
To: "Mukesh Kumar Chaurasiya" <mkchauras@gmail.com>, "Gary Guo"
 <gary@garyguo.net>
X-Mailer: aerc 0.21.0
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
 <DI1E781QPU8F.1C28PL0089NP6@garyguo.net>
 <ae3C2gqzoVaovY-h@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
In-Reply-To: <ae3C2gqzoVaovY-h@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
X-ClientProxiedBy: LO4P265CA0059.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2af::15) To LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:488::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LOVP265MB8871:EE_|LOBP265MB9250:EE_
X-MS-Office365-Filtering-Correlation-Id: d712c940-9cc6-49d4-69c3-08dea39ef98f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|1800799024|366016|10070799003|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	Hbopwm2jPZA7jTq3nkGxDoNLGFNYrTTMAw2dKD1zlsjC73idePJsDDElG8jzAqo5APysbIq9lf/fj4auv4aiiMLbGLxyTDcawUA5PRXPHwSsnetOuKlJUSjB43ePZ+RhKCayrT1yUz0uF6REnsbeqgm28pALZ/ny1pYNKtYF2w7MFQSy0h+ptJP5opFm5X3sZsmEks4BaPW3/Jb7OHPZuBLwk5j0aZc4h969iKnukf3VfPfYFWTMqzv9mYtyvoT0l3c8zC3qlzZE35geWAF61Cbyg7apZT5TrX2EHZk3PR9tYEpwd4DbXLzcItB6RFwsLzGDwArChcgTxHx/zZ60wL7uagpjUykA6CR7i8VrU2mDToSue+hKNQhlEFXNhNZ53X+KybLRzQ6zbyt7NTB95aCUKNOFR/stRN8R/o05p5WGdGSAuw7MR7Ue/zZRKsVJniu43FvsTSm27PJ1FtDuU4/RMjdYySy+bfCmd0yIT9CFLIEL2gzHamZyH2A3s17K3ipE2M/cjn4MvyAkbpKarJMES9mF20UFO/JIAypnCgfzGbr6VTO3DIL0dcypjpjuWRGP2KId8rgGY92Aspwjfw6U/P7BuUnk/8m/Vo3brVauyt3roLvtvKD1bt8L1KQoxbuhuuIliu7jbQoCbccA8cusxh1j2i6JDlKoWh5bo/CnFUxDvP7wtjG6ZHnbfhi0RKZGTQRiVrNHgUdnyoi+zC8myfttM7P0fzOvls1J0l4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(10070799003)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Ris1TDZoZEtXU29PZEJlL1lTb3NSU1ptcDRoSmc0b0tiUmZXVERvdzFPaDJt?=
 =?utf-8?B?eThsL0cxek1TK1BBM0lNYlVRZ24xSEttcC9WcG40RG96cE1od2lVMUVaa1hB?=
 =?utf-8?B?QXhqM0lIajFEQVNtMG1yVnBPNG9mQVR6SkFlQThaQTJIb2lNQTJwTXhVU0dL?=
 =?utf-8?B?VTZMOEpyb1VZTmJVbE9Qc3BQZmNYdWh5VnhXdUt1bkJ3elE3VnVkYk10V2J1?=
 =?utf-8?B?QjN2UXdzWWZ4WjhaTWZ3M3RFazhGVlFOdDFqRGVOUmpmNGhpNFZxNFIrcGQx?=
 =?utf-8?B?dndacTQrb3ppTVZmS3Nyamp3djg2WXdpb1JiZTlzYmhBNk4zdlJHLythcCtF?=
 =?utf-8?B?bkVhRUpybWFKcDlyaTgzS3NKNnZIcHlMOHZIOVdjVnNuem81b2JoTkt3V29k?=
 =?utf-8?B?UjN2VTBnYnAwVVRpcFN3SHowbHNNS1NmZ2lJVnhXcXBUcmFaWDVpeGFsTzFo?=
 =?utf-8?B?R3JpRHdBQWJZSmR0dkpxZTgwUHY0eHJPM3RvSUUxTXg1bkNJajJWOEN2TnJ2?=
 =?utf-8?B?dE9qUXkwTTFmOVZiOEd6T0JBc2VzSHJmQXZjeW1OVnZ5K2J1MStKNUlBNDBn?=
 =?utf-8?B?ZFJDYSthSkpzNGtPNzRsSjVjNy83QkUyL1NQamROR3pxdytjc1JaQlhOVGNL?=
 =?utf-8?B?My9aaWNiZ05PY3ZETUZBNEVSN255WG1FSlpQb0RQQU1DTGJubUx3NkxOaC9E?=
 =?utf-8?B?Nkx2Mkgva0p1THFnVktvUmg3T1U4YVBEb3FaRGZZei9vREhlVjhWNTkxaEh4?=
 =?utf-8?B?WHZYMmQzK1d1TW9MWHgvcTZjVWcrS3pSNTZER2RqSE1GdkJ2cEtXdy9TRjFr?=
 =?utf-8?B?MHVZNkxkS3VBYlpIV3ZTSmZNMW1yWXkyZFBTVEVsOTd1N0pacTNxL1pqaHZw?=
 =?utf-8?B?bXZ1Z3NrazJGN1hINmhnelg4UzloazhyRUpUVjdGTEJUem9DK1Y0VmU1ams1?=
 =?utf-8?B?R1ZuQXl4R09oU2dDSGE0UHZmZHpmWmF0My9EeXZ0L25jVlpVNUZINThmaVM0?=
 =?utf-8?B?V0V0TndjVDF1Q2I1UjB1bWZrN0tadWY2ZkxpRHorUDdBK29xbGozZDAxb3k5?=
 =?utf-8?B?dUVIZWFMUVNlZ3pubXBUcmVGRjNBakNxaVVoa0VVWm1tbU9MSDBZcXZwTStp?=
 =?utf-8?B?c2FtSDNMNTY0aWdOTlU4S1M3b0V5dEVxM3l2NDdJbWl1Q0hRdU9BY2tkMUU4?=
 =?utf-8?B?a0FjL0dtK25odk5qM2pNTE5UZFhXcGlrWTdSaHlTM3hqVnlEWnlHZW5LU01N?=
 =?utf-8?B?SlNLZnRIR3dEUy9aWi9HM05LRHgvQi81b1lpL25GQnUyY2VHM0t2a3FESDd4?=
 =?utf-8?B?cEFHSjJQWDNqNURiTGNwUDNXY2VrdlJHeEVycHV1NGY5MWlZY2h3NHNJMXI1?=
 =?utf-8?B?TFNsWlVvNlhwWnpRTVozckx2Nk8yMWFobkYvMlVPN1lsRnY1UGtRVFRwQVpj?=
 =?utf-8?B?Y0txSkpvUSt6bU9SK2xCbzBGT296SVB1R1hERExldHhOQTNVa0syd0twdUZl?=
 =?utf-8?B?QitwRDJieTBFWW5DZ0U0aHZTZUdwTFo2c21XZldZd1FIZC9rQ1J5QXRHMGZW?=
 =?utf-8?B?OVZRMUlxT0Q5RVVwL0w2WlNVamU4Ri9RZVNkL3BFV1pSV2k1U1g0WlRrWkxR?=
 =?utf-8?B?U0FWM2tNWVhHRkVQeU9YVlZWL0JKeTAwd3lEV2MvTUs2ZjFETEpYNUV0K0g4?=
 =?utf-8?B?SnIyWlA4TU9xbVU4amRIL3U2RFpCVkprVUZtYndSTm5pTzZOMzVvWEwrNDBo?=
 =?utf-8?B?MGR1ck5BT2RsVXBsWWhDMFZFcHBtVGFQUmxKYVBrSStUMUxZcDc4em52YlRC?=
 =?utf-8?B?Q2VYRGNQUHk0b0RhWlJEQkV0M3d5MjQvTEhwak5DNUMwTWhscWVrWlh6Qmx6?=
 =?utf-8?B?L0dZS2w3UkIwN0dSUnBLRHpwNjFuaHB6WThvem5ySk5UdE5DUlhMNHJzSldp?=
 =?utf-8?B?c3hweis5aEV4VDFqQ25hcytqOWFoNnpiMlVvcGNINWVHcmgvT20vdDFDRTdv?=
 =?utf-8?B?MXljUVVkL21WbzVRZmFSVWRiQzdBeUw0RWZ4am1BOFpxU0dJemJBSGprV1ph?=
 =?utf-8?B?S05UckpsMzFRUC9mYVRnOEhGVnFQcHV5M01VMEdxYjJldFllb0s0MFY1UjRw?=
 =?utf-8?B?U3BZTi9EanpJVFQ1T0xaaUwrdUdMY1c0RDVLQTc1eENseFVpYlZIS2djNGRE?=
 =?utf-8?B?Uk5wL0lHcWppSG9vQ3ZjZUV3N3ZZZDlBWnoySHUxRzlqL2pOS0JWQ2lTTm91?=
 =?utf-8?B?L0kwMXdEVlRkTGpnVUdja0lwYldPZmpVTHlyTmtmZnNjNnAvN3BnbmtuSDE5?=
 =?utf-8?B?UndjbHlOZHhIaGFGd09OR3QvS1VSd3hVTjhITWt4RVU1cnJWa3NkUT09?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d712c940-9cc6-49d4-69c3-08dea39ef98f
X-MS-Exchange-CrossTenant-AuthSource: LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2026 14:20:32.1214
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MKDTle5ekvgHm44TV8Od/Bip2XYCPZreg7JAEmkIUugyRoXNRTHPrIEkB4Yt4v9bcs1W7CgW/P+C/lCTjw7zaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LOBP265MB9250
X-Spamd-Bar: ----
X-MailFrom: gary@garyguo.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 25QGBYO5IUKRK7AAKA4O3U3HE247CG2K
X-Message-ID-Hash: 25QGBYO5IUKRK7AAKA4O3U3HE247CG2K
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:25:49 +0000
CC: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev, Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/25QGBYO5IUKRK7AAKA4O3U3HE247CG2K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: E8BCF495CE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[garyguo.net:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[72];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[garyguo.net : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,garyguo.net];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,linkmauve.fr];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary@garyguo.net,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.079];
	DKIM_TRACE(0.00)[garyguo.net:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linkmauve.fr:email,linaro.org:email,garyguo.net:mid]

T24gU3VuIEFwciAyNiwgMjAyNiBhdCA4OjUyIEFNIEJTVCwgTXVrZXNoIEt1bWFyIENoYXVyYXNp
eWEgd3JvdGU6DQo+IE9uIEZyaSwgQXByIDI0LCAyMDI2IGF0IDAxOjQzOjQzUE0gKzAxMDAsIEdh
cnkgR3VvIHdyb3RlOg0KPj4gT24gRnJpIEFwciAyNCwgMjAyNiBhdCA2OjQ3IEFNIEJTVCwgTXVr
ZXNoIEt1bWFyIENoYXVyYXNpeWEgKElCTSkgd3JvdGU6DQo+PiA+IEZyb206IExpbmsgTWF1dmUg
PGxpbmttYXV2ZUBsaW5rbWF1dmUuZnI+DQo+PiA+DQo+PiA+IFRoZSBjb3JlIGNyYXRlIGN1cnJl
bnRseSBkZXBlbmRzIG9uIHRoZXNlIHR3byBmdW5jdGlvbnMgZm9yIGk2NC91NjQvDQo+PiA+IGkx
MjgvdTEyOC9jb3JlOjp0aW1lOjpEdXJhdGlvbiBmb3JtYXR0aW5nLCBidXQgd2Ugc2hvdWxkbuKA
mXQgdXNlIHRoYXQgaW4NCj4+ID4gdGhlIGtlcm5lbCBzbyBsZXTigJlzIHBhbmljIGlmIHRoZXkg
YXJlIGV2ZXIgY2FsbGVkLg0KPj4gPg0KPj4gPiBUaGlzIGRvZXNu4oCZdCB5ZXQgZml4IGRybV9w
YW5pY19xci5ycywgd2hpY2ggYWxzbyB1c2VzIF9fdWRpdmRpMyB3aGVuDQo+PiA+IENPTkZJR19D
Q19PUFRJTUlaRV9GT1JfU0laRT15LCBidXQgYXQgbGVhc3QgbWFrZXMgdGhlIHJlc3Qgb2YgdGhl
IGtlcm5lbA0KPj4gPiBidWlsZCBvbiBQUEMzMi4NCj4+IA0KPj4gQ2FuIHdlIGFsd2F5cyBidWls
ZCBsaWJjb3JlIHdpdGggYC1DIG9wdC1sZXZlbD0yYCBldmVuIGlmDQo+PiBgQ09ORklHX0NDX09Q
VElNSVpFX0ZPUl9TSVpFYCBpcyBzcGVjaWZpZWQ/IEl0IGZlZWxzIGxpa2UgYSBiZXR0ZXIgZml4
IHRoYW4NCj4+IHN0dWJiaW5nIHRoaW5ncyBvdXQuDQo+PiANCj4+IEJlc3QsDQo+PiBHYXJ5DQo+
PiANCj4gVGhlIGlzc3VlIGlzIG5vdCBjb21pbmcgZnJvbSBsaWJjb3JlIGl0c2VsZi4gSXQncyB0
aGUgZHJpdmVyIHRoYXQncw0KPiBjYXVzaW5nIHRoaXMuDQoNClNvcnJ5LiBJIHF1b3RlZCB0aGUg
d3JvbmcgcGFydC4gSSB3YXMgYXNraW5nIGlmIGNvbXBpbGluZyBsaWJjb3JlIHdpdGggTzIgZ2V0
cw0KcmlkIG9mIGl0cyB1c2Ugb2YgdGhlIGJ1aWx0aW5zLCBhcyB0aGF0J3Mgd2hhdCB0aGUgY2hh
bmdlIHRoaXMgY29tbWl0IGlzIGZvci4NCg0KRm9ybWF0dGluZyBvZiB1NjQgd2lsbCBiZSBuZWVk
ZWQsIHNvIHdlIHNob3VsZCBtYWtlIHN1cmUgdGhhdCB0aGVzZSB3b3JrcyBhcw0KaW50ZW5kZWQu
DQoNCkJlc3QsDQpHYXJ5DQoNCj4NCj4gUmVnYXJkcywNCj4gTXVrZXNoDQo+PiA+DQo+PiA+IFNp
Z25lZC1vZmYtYnk6IExpbmsgTWF1dmUgPGxpbmttYXV2ZUBsaW5rbWF1dmUuZnI+DQo+PiA+IFNp
Z25lZC1vZmYtYnk6IE11a2VzaCBLdW1hciBDaGF1cmFzaXlhIChJQk0pIDxta2NoYXVyYXNAZ21h
aWwuY29tPg0KPj4gPiAtLS0NCj4+ID4gIHJ1c3QvTWFrZWZpbGUgICAgICAgICAgICAgfCA0ICsr
KysNCj4+ID4gIHJ1c3QvY29tcGlsZXJfYnVpbHRpbnMucnMgfCA2ICsrKysrKw0KPj4gPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspDQo+PiA+DQo+PiA+IGRpZmYgLS1naXQgYS9y
dXN0L01ha2VmaWxlIGIvcnVzdC9NYWtlZmlsZQ0KPj4gPiBpbmRleCAyYTU0MjhhNTUwM2QuLmVl
MTFmYmE3YTAzZCAxMDA2NDQNCj4+ID4gLS0tIGEvcnVzdC9NYWtlZmlsZQ0KPj4gPiArKysgYi9y
dXN0L01ha2VmaWxlDQo+PiA+IEBAIC02MTYsNiArNjE2LDEwIEBAIGlmbmVxICgkKG9yICQoQ09O
RklHX0FSTTY0KSwkKGFuZCAkKENPTkZJR19SSVNDViksJChDT05GSUdfNjRCSVQpKSksKQ0KPj4g
PiAgCQlfX2FzaHJ0aTMgXA0KPj4gPiAgCQlfX2FzaGx0aTMgX19sc2hydGkzDQo+PiA+ICBlbmRp
Zg0KPj4gPiAraWZkZWYgQ09ORklHX1BQQzMyDQo+PiA+ICsJcmVkaXJlY3QtaW50cmluc2ljcyAr
PSBcDQo+PiA+ICsJCV9fdWRpdmRpMyBfX3Vtb2RkaTMNCj4+ID4gK2VuZGlmDQo+PiA+ICANCj4+
ID4gIGlmZGVmIENPTkZJR19NT0RWRVJTSU9OUw0KPj4gPiAgY21kX2dlbmR3YXJma3N5bXMgPSAk
KGlmICQoc2tpcF9nZW5kd2FyZmtzeW1zKSwsIFwNCj4+ID4gZGlmZiAtLWdpdCBhL3J1c3QvY29t
cGlsZXJfYnVpbHRpbnMucnMgYi9ydXN0L2NvbXBpbGVyX2J1aWx0aW5zLnJzDQo+PiA+IGluZGV4
IGRkMTZjMWRjODk5Yy4uZmM2YjU0NjM2ZGQ1IDEwMDY0NA0KPj4gPiAtLS0gYS9ydXN0L2NvbXBp
bGVyX2J1aWx0aW5zLnJzDQo+PiA+ICsrKyBiL3J1c3QvY29tcGlsZXJfYnVpbHRpbnMucnMNCj4+
ID4gQEAgLTk3LDUgKzk3LDExIEBAIHB1YiBleHRlcm4gIkMiIGZuICRpZGVudCgpIHsNCj4+ID4g
ICAgICBfX2FlYWJpX3VsZGl2bW9kLA0KPj4gPiAgfSk7DQo+PiA+ICANCj4+ID4gKyNbY2ZnKHRh
cmdldF9hcmNoID0gInBvd2VycGMiKV0NCj4+ID4gK2RlZmluZV9wYW5pY2tpbmdfaW50cmluc2lj
cyEoImB1NjRgIGRpdmlzaW9uL21vZHVsbyBzaG91bGQgbm90IGJlIHVzZWQiLCB7DQo+PiA+ICsg
ICAgX191ZGl2ZGkzLA0KPj4gPiArICAgIF9fdW1vZGRpMywNCj4+ID4gK30pOw0KPj4gPiArDQo+
PiA+ICAvLyBOT1RFOiBpZiB5b3UgYXJlIGFkZGluZyBhIG5ldyBpbnRyaW5zaWMgaGVyZSwgeW91
IHNob3VsZCBhbHNvIGFkZCBpdCB0bw0KPj4gPiAgLy8gYHJlZGlyZWN0LWludHJpbnNpY3NgIGlu
IGBydXN0L01ha2VmaWxlYC4NCj4+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
