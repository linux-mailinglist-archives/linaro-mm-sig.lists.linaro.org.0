Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wA2WBe8X8mljnwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:38:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3FA495F02
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:38:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A98B2401C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 14:38:29 +0000 (UTC)
Received: from LO2P265CU024.outbound.protection.outlook.com (mail-uksouthazon11021076.outbound.protection.outlook.com [52.101.95.76])
	by lists.linaro.org (Postfix) with ESMTPS id 148743F859
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2026 13:04:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=garyguo.net header.s=selector1 header.b=W5Zlwskh;
	dmarc=pass (policy=none) header.from=garyguo.net;
	spf=pass (lists.linaro.org: domain of gary@garyguo.net designates 52.101.95.76 as permitted sender) smtp.mailfrom=gary@garyguo.net;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Iiafj0DWR/NbThmTAysv96WRL/svUtSLXUy1psJoMrfajscnnTrGJnwlbbrYuCd/zMWEs9duZrR1kwZ3Ber+jJo0EzppOZj7rYAszBdzWbXivzXVbDj7z0rN9Ga8Fq5IGAB9Q6ActE7VAaY8ND5GX0zO4yJgsU+tKKBBoALUH5+lmPMtGwUND7MsE48dlZADuzdOjH6lYta1M+hWLALSXRUoM6KI3FUDvGjmWdlRKRdhyjcO0N40FQHWAwyw0H4tv2R7qfl4ly2gmFb48oQfahH26SRQh205uviE+Cmu5Cw6hFm0uYUqisuyqR7ONz7A80xDK/dxG1qK+ZCvYc5Icw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d3xLuyvBLl8qtpsM0U2sMSWzTtQidgBi49zpQDMRu3A=;
 b=ocuFMhBAwIwSj5qkHj1VCU1aq/dDhWzs6Rny6/OSPbBVCkSfyWYbYZIodrARedUYYI+HvFkBG0CKytQLwIL0LzlEw29Glpc4MAEylBQ+MRhQhwglmNxHosaVl36SP+QB2yKovP4oiKj115kHeEpcqB/hYIxZdOb86UFvD03z1PexIpPERN1Y71VhSVikNSJDpnna0Yr7yBmXofWPrtiIlpGBKDnQQN7YQgBFF4SPM0qGKR29hXZsc3ADLujQJT3dGjBiDvfmNQiFn5OSgLnRYwFmkJo1LyT2OZhoxLVXTLiF5Li60JGd4B9FtjS9EmeDQoiyXvGQFJm9ZCMQocBEyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d3xLuyvBLl8qtpsM0U2sMSWzTtQidgBi49zpQDMRu3A=;
 b=W5Zlwskhrg7KHQEDsv1F9ZhxDjRJ14m0lP28HIkiM2Z/L1bmZRYCgATFA1SUswzvEXhm9TvJrfJm2TwLMRHcd6J1Unb0Iicq5ccm5BpLcR+I0dyrK9o0MQKdxF+IfE6YZtSvXq3Sjgena4mo1qkZk+LDDur77ycKvixrhpKct3o=
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:488::16)
 by CW1P265MB9152.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:270::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.23; Mon, 27 Apr
 2026 13:04:16 +0000
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986]) by LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986%4]) with mapi id 15.20.9846.025; Mon, 27 Apr 2026
 13:04:16 +0000
Date: Mon, 27 Apr 2026 14:04:15 +0100
Message-Id: <DI3YIKR2CKFR.27RVO55HH5GED@garyguo.net>
From: "Gary Guo" <gary@garyguo.net>
To: "David Laight" <david.laight.linux@gmail.com>, "Gary Guo"
 <gary@garyguo.net>
X-Mailer: aerc 0.21.0
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
 <DI1E781QPU8F.1C28PL0089NP6@garyguo.net>
 <ae3C2gqzoVaovY-h@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
 <DI35IFD8M019.2WGRH5ADW6NOG@garyguo.net> <20260426230408.489c68c3@pumpkin>
In-Reply-To: <20260426230408.489c68c3@pumpkin>
X-ClientProxiedBy: LO6P123CA0007.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:338::9) To LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:488::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LOVP265MB8871:EE_|CW1P265MB9152:EE_
X-MS-Office365-Filtering-Correlation-Id: e7bcf125-2b74-49a4-5bfd-08dea45d7c71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|7416014|376014|10070799003|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	u6V4ubftfkaX2vcHzfs4NGsvDBoGOe2oDpHS1Lu5vZOKxPZwKP7MK53KN0QQ8Fj2oWt5EsIgJG3VztsR0kC+u2S6+dxKUWHqzIUgcRsjVJPWTpm6qoya1VMl2VU/tX3QMU7JOPV7XvHU/wvbcDpKJwau4YyMO9ZhkXfJccwLWbxdItxaimHAHf11uu343pz01H7W9MkFHmJi3gq/WmQdAhL4sQnJPgOJztohLTsGQycMyWh3qJf2MOXfzZuIMuFJ89WhEVU1ujFdK7mxhPGhfK9WD94jUcV6LpuG2agRSaeeI7ounlbWc1z2/akEiCjcI3a4yKTrm/U6c7s9qfDqWU4vzTGg/5Vv/nFtxjHfXcPJsbhw1fZ/cfE/pKW8oFufTZaekPntKDjq8ZuMk/ji+pjnnERoQuDn2ZgpEmyAOmwaU1UOmaU0FayNXDBcRAUVgUyLMuxXTI8lt6Twm1xR7daBL4sZbwnEVEYUU7xTPMC/vf0SrxJQLE108jvReL/57OoJj38Dcz/XurVTWkxeYtkYIZZCm9B19JaC1Lo2dmNBFtLDoQ7LwOpt8Kkscb+OxXOgD+Gv0tP+nNG64qJ+GZWheNhqdjmS7aPz7Vm/9psgdZly3P1h68tCNYusUOdQHZhwUL2rjIqr/s6Se9kAR0FYOWWsr4xc4/GutIo+2YmfKVbOW/i+xNZnxTKs7oGOYP/DSdgiP7AhmxMaRu/aUdYsFAL4ObjcrI2KFmaawgA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(10070799003)(1800799024)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SVpsK2kwYVM0Z0s5TWluWUtack9RZTgrbGpNMTZFamFKYjltKzFaMGl0RHV2?=
 =?utf-8?B?Z1BQcHB4ZmdlZlgzNjVzUXVTRVp5dlJhU3ZqbWpWSzgzR1BGOEdvVDlnTEoz?=
 =?utf-8?B?dHIwbm5kUEVHanRNVTNkZG51Ui96NGVEYldkMXpIU1dUZDN5TG1JSVBNbHRi?=
 =?utf-8?B?Rm5ONmhJbVRDWklabEs5Sk82dkVZNWxXRXBvWVA0V3ZlTFpNTXBkWHNuZnNx?=
 =?utf-8?B?T2pMSm1aRGQrbmVMTGtiZmIyTkE2MzR5VFlTTlM0OTd6Rjh6TzlZcUlRbGhG?=
 =?utf-8?B?V0JUSHVuTjZKSWw4OVJsaGtvQVFhd1lmRFo4azZEMmNmV0lDK0djVFFoWnpl?=
 =?utf-8?B?OEVwNndVUjkwcFRpeDZLc0tmRENXb2pONHFqTis2cWJQaU1WVjR0MlhLL1M3?=
 =?utf-8?B?M2xUbEtoc2kvM0ZZRVFqOWJRZ09sOHQ3cksvWmcvT3M4MnBScFNvckdVdERU?=
 =?utf-8?B?alFjQ2lzS2RPSVc2U0F5bGZ1MDFnZFkwYVM4VmlBbFVVdnkxS05HUGZpcnlG?=
 =?utf-8?B?YkgyQjRNcWRKN0MydjU5ZU1CWGVDZEEya2tsQlM2YmdrU2h5VmVYbUcwV3Fo?=
 =?utf-8?B?VEhlUUNrTnBhMGhXTGpydWFoVTQ3ejNqek90d29mZkt5TEtYMHVyaDhwS01Z?=
 =?utf-8?B?Y1BLSWlSZ1VoZU9tQ0lpTlp1OFJvVFFwMTR4UVY1MkF5K0JEY05qKy9vWDZv?=
 =?utf-8?B?VmRrQnRQdVZ4bmh4dnVDV2F5ZC9qYWpJTXY0Wldma0ptL0EvdGMvQ3dXSHls?=
 =?utf-8?B?R1hWTjdWRy9xZW93UlQxMEtGOHFDWldkTEJ1ajdldW1FcUtmMkI2blZOSlc1?=
 =?utf-8?B?cENzdWtOVktsdHNITldVVE4vRXpUUmpndGxia2wvaVhiR0xOZ3lRUWN4MUM1?=
 =?utf-8?B?ZVFCYlZsTXlHSHhid1BpS2cxUSsrOUlhWkUvUGFhTjRYVXB1ZUVMV1BCSTVK?=
 =?utf-8?B?SWtVSndPU08rQ0k2TDlZUmpGQVJwODZMZjlERHNhK1M4UXFtSFI5VGhKends?=
 =?utf-8?B?eEtNMGRuTmZrbWwwVUpKbTJQSDFlTTVXaVhzckw5WFdNcVRBWDgxWTE0RGQz?=
 =?utf-8?B?ZFpjZFdGYnpITUs1TzVIY08wSi9LWXZMRGNkRHErNmVTekZJWFdwSjFOTTBQ?=
 =?utf-8?B?QytiUms1c2NMYWd4TU11aGlCT093VXd0dHhVNk9PSlF4VTFhY09XenRsck50?=
 =?utf-8?B?YUtHa3hiekhEeVBQMkV6cm5CZnBuR2Y1RUMxbngvaHNQVUJsT3FrM2NXSGVN?=
 =?utf-8?B?SVFYT1dKZzludThCNXZGcytKVWc5Mkp4VmlLS3p5SFdsQURsRlRDM2JJU0ht?=
 =?utf-8?B?SUo4MzV6cEtXQU1SN1lqT1B5MnhuZnlCenRxanpjUVh3WFRGNXdEMEk1dUIv?=
 =?utf-8?B?UXh1dVg5MW5ISXV4TDdUOGZ5WTZ0Y29VS293M1JtOGwyOWdUSG9IOG0xWFFo?=
 =?utf-8?B?UHdONHFmRDljOUd6dkc5NVowTzBCK05MdWIvSU50clJ0ZGFPTzM5ZkZRZlR2?=
 =?utf-8?B?dzZtYVpnYlVUQjVFSUZTdWhIUTA5UE9sZTljU1B6SVNBYUhZNHRwRFB0Wkdz?=
 =?utf-8?B?Sm9YY0RZYUZJL0dIZGZoT0VqajVhYVJaOUM5ZmtNb0hRT3hiUDFLenRHU1Fp?=
 =?utf-8?B?Nm1JNng1MHVHOXA4RDJNay8rY3h2WnMwUkdUVHhMb0d2UHJkNUZwOXBDODlj?=
 =?utf-8?B?UVVuMTdwbFhmM1hLM0NwbkVya0VpYzdkUGhwWmpCRmRYbjRaV1B2TmZIS1hT?=
 =?utf-8?B?bWF3VHVmYVlJWXhReTV4NU1uQytrK2dhRFhUdlQ2WE01clNLMUV5VXJYQlZp?=
 =?utf-8?B?LzNSaFRtWVM1dlNBWnZTVkd4TGdidXBHTVd6b1lVVisxRi9wdmFTWWxTdWto?=
 =?utf-8?B?dVcvWkltbGx0N0dsczJIR1ZvQ1RoL21zY24vd05ZaVBFQ3JLaTVSR2pJNjJL?=
 =?utf-8?B?eERiTWZ2cHQ0NGEySWJYdExoaGRvTXpLTUUzTkJwNFV0bnZydjhoOENrMXho?=
 =?utf-8?B?MExKMmNobEFMeEkwdkNDWWtOcWFHelZUdnJ1dVBCc25wZ1RLRnRpT1QxZVpy?=
 =?utf-8?B?T3U2elpuclg3WWFnbWN4bnFwVG1Md1NSSjdnQlRHanVJbnlTTXJMUDVadnFN?=
 =?utf-8?B?WjFJRmN5L28xWlhsbmZKTGJ2bzlkK21QWi9QKzBxdXNhZENRa1RoRDFSYmFM?=
 =?utf-8?B?T2JsNmNnMHVDZE5CSGlubFRHcERuTUl4VGx5b3FobzIzYWgvOHVrM25TaWJ1?=
 =?utf-8?B?QU5YTnVXdmlRd3hibXErQXN2UjFGS3Jxd1BSYXJxRk51cjJpc3dqMUMySklO?=
 =?utf-8?B?NWtubExBZUxuRUlsRHBsakpPVDgwS0Vaa3dYbG40Z1BIQXNCekFLdz09?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e7bcf125-2b74-49a4-5bfd-08dea45d7c71
X-MS-Exchange-CrossTenant-AuthSource: LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 13:04:16.0693
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oVCGwCYcidIg8U5ZUV3zcOHSVHsCVTnyVqDQOaJqnTp9BTy/lRU7bTvRCMB39jCB2x8PFG7OVgTsMvnqSPLoyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CW1P265MB9152
X-Spamd-Bar: ----
X-MailFrom: gary@garyguo.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S7IJV42DCLJKGHVSS6FBSNML3PO5RQKB
X-Message-ID-Hash: S7IJV42DCLJKGHVSS6FBSNML3PO5RQKB
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:27:39 +0000
CC: Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev, Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S7IJV42DCLJKGHVSS6FBSNML3PO5RQKB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: BD3FA495F02
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[garyguo.net:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[49];
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
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.ibm.com,ellerman.id.au,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,linkmauve.fr];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary@garyguo.net,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.074];
	DKIM_TRACE(0.00)[garyguo.net:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[garyguo.net:mid,garyguo.net:email,linaro.org:email,linkmauve.fr:email]

T24gU3VuIEFwciAyNiwgMjAyNiBhdCAxMTowNCBQTSBCU1QsIERhdmlkIExhaWdodCB3cm90ZToN
Cj4gT24gU3VuLCAyNiBBcHIgMjAyNiAxNToyMDozMSArMDEwMA0KPiAiR2FyeSBHdW8iIDxnYXJ5
QGdhcnlndW8ubmV0PiB3cm90ZToNCj4NCj4+IE9uIFN1biBBcHIgMjYsIDIwMjYgYXQgODo1MiBB
TSBCU1QsIE11a2VzaCBLdW1hciBDaGF1cmFzaXlhIHdyb3RlOg0KPj4gPiBPbiBGcmksIEFwciAy
NCwgMjAyNiBhdCAwMTo0Mzo0M1BNICswMTAwLCBHYXJ5IEd1byB3cm90ZTogIA0KPj4gPj4gT24g
RnJpIEFwciAyNCwgMjAyNiBhdCA2OjQ3IEFNIEJTVCwgTXVrZXNoIEt1bWFyIENoYXVyYXNpeWEg
KElCTSkgd3JvdGU6ICANCj4+ID4+ID4gRnJvbTogTGluayBNYXV2ZSA8bGlua21hdXZlQGxpbmtt
YXV2ZS5mcj4NCj4+ID4+ID4NCj4+ID4+ID4gVGhlIGNvcmUgY3JhdGUgY3VycmVudGx5IGRlcGVu
ZHMgb24gdGhlc2UgdHdvIGZ1bmN0aW9ucyBmb3IgaTY0L3U2NC8NCj4+ID4+ID4gaTEyOC91MTI4
L2NvcmU6OnRpbWU6OkR1cmF0aW9uIGZvcm1hdHRpbmcsIGJ1dCB3ZSBzaG91bGRu4oCZdCB1c2Ug
dGhhdCBpbg0KPj4gPj4gPiB0aGUga2VybmVsIHNvIGxldOKAmXMgcGFuaWMgaWYgdGhleSBhcmUg
ZXZlciBjYWxsZWQuDQo+PiA+PiA+DQo+PiA+PiA+IFRoaXMgZG9lc27igJl0IHlldCBmaXggZHJt
X3BhbmljX3FyLnJzLCB3aGljaCBhbHNvIHVzZXMgX191ZGl2ZGkzIHdoZW4NCj4+ID4+ID4gQ09O
RklHX0NDX09QVElNSVpFX0ZPUl9TSVpFPXksIGJ1dCBhdCBsZWFzdCBtYWtlcyB0aGUgcmVzdCBv
ZiB0aGUga2VybmVsDQo+PiA+PiA+IGJ1aWxkIG9uIFBQQzMyLiAgDQo+PiA+PiANCj4+ID4+IENh
biB3ZSBhbHdheXMgYnVpbGQgbGliY29yZSB3aXRoIGAtQyBvcHQtbGV2ZWw9MmAgZXZlbiBpZg0K
Pj4gPj4gYENPTkZJR19DQ19PUFRJTUlaRV9GT1JfU0laRWAgaXMgc3BlY2lmaWVkPyBJdCBmZWVs
cyBsaWtlIGEgYmV0dGVyIGZpeCB0aGFuDQo+PiA+PiBzdHViYmluZyB0aGluZ3Mgb3V0Lg0KPj4g
Pj4gDQo+PiA+PiBCZXN0LA0KPj4gPj4gR2FyeQ0KPj4gPj4gICANCj4+ID4gVGhlIGlzc3VlIGlz
IG5vdCBjb21pbmcgZnJvbSBsaWJjb3JlIGl0c2VsZi4gSXQncyB0aGUgZHJpdmVyIHRoYXQncw0K
Pj4gPiBjYXVzaW5nIHRoaXMuICANCj4+IA0KPj4gU29ycnkuIEkgcXVvdGVkIHRoZSB3cm9uZyBw
YXJ0LiBJIHdhcyBhc2tpbmcgaWYgY29tcGlsaW5nIGxpYmNvcmUgd2l0aCBPMiBnZXRzDQo+PiBy
aWQgb2YgaXRzIHVzZSBvZiB0aGUgYnVpbHRpbnMsIGFzIHRoYXQncyB3aGF0IHRoZSBjaGFuZ2Ug
dGhpcyBjb21taXQgaXMgZm9yLg0KPj4gDQo+PiBGb3JtYXR0aW5nIG9mIHU2NCB3aWxsIGJlIG5l
ZWRlZCwgc28gd2Ugc2hvdWxkIG1ha2Ugc3VyZSB0aGF0IHRoZXNlIHdvcmtzIGFzDQo+PiBpbnRl
bmRlZC4NCj4NCj4gVGhpcyBjb2RlIChmcm9tIG5vbGliYykgd2lsbCBjb252ZXJ0IHU2NCB0byBh
c2NpaSBpbiBhbnkgYmFzZToNCj4NCj4gW3NuaXBdDQo+DQo+IE5vdCBoYXJkIHRvIGRvIHdpdGhv
dXQgYW55IGRpdmlkZXMgYXQgYWxsLg0KDQpJIG1lYW4sIHRoZSBleGFjdCBzYW1lIGxvZ2ljIGlz
IHdoZW4gTExWTSBsb3dlcnMgY29kZSB3aGVyZSBkaXZpc29yIGlzIGNvbnN0YW50Lg0KSXQganVz
dCB0aGF0IGl0IGRlY2lkZXMgdGhhdCB0aGUgbXVsdGlwbHktYnktaW52ZXJzZSBsb3dlcmluZyBz
aG91bGRuJ3QgYmUgZG9uZQ0Kd2l0aCBgT3NgLg0KDQpJbiB0aGlzIGNhc2UgbGliY29yZSBpcyBw
cm92aWRlZCBieSBSdXN0ICh0aGluayBpdCBhcyBmcmVlc3RhbmRpbmcgaGVhZGVycyksDQp0aGF0
IGNvZGUgaXMgbm90IHBhcnQgb2Yga2VybmVsLiBBbmQgY3VycmVudGx5IHRoZXkganVzdCB1c2Ug
Y29uc3RhbnQtZGl2aXNvcg0KZGl2aWRlIGFuZCBoYXZlIHRoaXMgdGFzayBwZXJmb3JtZWQgYnkg
TExWTS4gV2UgY291bGQgYXNrIFJ1c3QgdG8gZXhwbGljaXRseSB1c2UNCm11bHRpcGx5LWJ5LWlu
dmVyc2UgdG8gYXZvaWQgZ2VuZXJhdGluZyBfX3VkaXZkaTMgaW4gdGhlIGZ1dHVyZSwgYnV0IGV2
ZW4gaWYgd2UNCmRvIHRoYXQgaXQgd29uJ3QgYmUgYXZhaWxhYmxlIHRvIGFscmVhZHktcmVsZWFz
ZWQgUnVzdCBjb21waWxlcnMuIA0KDQpJbiB0aGUgbWVhbiB0aW1lIHdlIG5lZWQgdG8gd29ya2Fy
b3VuZCB0aGlzLg0KDQpCZXN0LA0KR2FyeQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
