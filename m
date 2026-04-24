Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eG+xDCWI72mtCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:00:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B2681475DA2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:00:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BCF92406ED
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 16:00:35 +0000 (UTC)
Received: from LO0P265CU003.outbound.protection.outlook.com (mail-uksouthazon11022102.outbound.protection.outlook.com [52.101.96.102])
	by lists.linaro.org (Postfix) with ESMTPS id EC9C73F796
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 12:43:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=garyguo.net header.s=selector1 header.b=NEqO1q6f;
	dmarc=pass (policy=none) header.from=garyguo.net;
	spf=pass (lists.linaro.org: domain of gary@garyguo.net designates 52.101.96.102 as permitted sender) smtp.mailfrom=gary@garyguo.net;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NigBRx1yEkVD33IbDA4vFt4eHJUN1TvF0X6D2JG+40c5YJ/fXwNLs9Di5O0dlgmjZFuWwvIIcjNv87ptlFqpGAn75z5sa9pOIXEl13SUzrv2onUgkr74mM5xwnIvj54nvWQk72mKwJD3R+MeodsRa1CHAQcCi3YQrDJfuFaCeuWaa04dSdgNyuelzAIVbrIGN96WN62q1rNCyqu3jsgf7C3g5MXjTtwx0Sb1GJ61jppWl8ru0naZU1x5+qy7xjoaxiIiFv8HoJif7UYttqQ9he5DIs4TDc1/BqJYU0Zzt9VuS1RAHRzeru5RJUDKi89kEOfIn+HyzIRJ4RoPUALvaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yM2KVpbeXVKYgSfEiEsPee0AccJ+OUQ3jbc1h7inrC0=;
 b=hFamBzZUeedjkS7Zf1QtkFDqv6yGgn1yZDWBul02fnEERgNe6suDnXpHyq92ClUa4XCh7idWEqS2SC6JwKW2LmX7APxZ6ZBLD3y3LwxjlxgRl3cIoCjQ9q/0RY3WhcLQoz0gbT1muUjj5r5KcJCsRBy9msGiwxRMBF+04pSlEbQJsPymGe1YmlFniW9zeiiSC33JPFAECgyHwKyWImj9xAgxnUoGgrpKjDhAnQhnvI9V4FkEcdr3BaAbRMzz9C5fHTA48DNGpNf3OzUI7Eh1isM3Bjq5IUVfgbZ4mK2fsbE8disa6A1FKHVw7bleE6eB1G+U7wDZqrg91yoaayPAGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yM2KVpbeXVKYgSfEiEsPee0AccJ+OUQ3jbc1h7inrC0=;
 b=NEqO1q6fN+YFKLS2FZBm37UU1P1kOOZAG2BVDmexX5j31Sz1eHLhrEJ9K9RXqcXwtqxxi8qdOw5gWSTQrO2Agxx8gcMtDWNNW9y2UXUvDf9LFIirZwyYyLv7uRdiaDH7tmaBO9wWi85sTrN2FmJezSooNALesP9SkpLVLDlOI3U=
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:488::16)
 by LO0P265MB7026.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:2eb::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Fri, 24 Apr
 2026 12:43:44 +0000
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986]) by LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986%4]) with mapi id 15.20.9846.021; Fri, 24 Apr 2026
 12:43:44 +0000
Date: Fri, 24 Apr 2026 13:43:43 +0100
Message-Id: <DI1E781QPU8F.1C28PL0089NP6@garyguo.net>
From: "Gary Guo" <gary@garyguo.net>
To: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>,
 <maddy@linux.ibm.com>, <mpe@ellerman.id.au>, <npiggin@gmail.com>,
 <chleroy@kernel.org>, <peterz@infradead.org>, <jpoimboe@kernel.org>,
 <jbaron@akamai.com>, <aliceryhl@google.com>, <rostedt@goodmis.org>,
 <ardb@kernel.org>, <sumit.semwal@linaro.org>, <christian.koenig@amd.com>,
 <ojeda@kernel.org>, <boqun@kernel.org>, <gary@garyguo.net>,
 <bjorn3_gh@protonmail.com>, <lossin@kernel.org>, <a.hindborg@kernel.org>,
 <tmgross@umich.edu>, <dakr@kernel.org>, <nathan@kernel.org>,
 <nick.desaulniers+lkml@gmail.com>, <morbo@google.com>,
 <justinstitt@google.com>, <tamird@kernel.org>, <arnd@arndb.de>,
 <nsc@kernel.org>, <simona.vetter@ffwll.ch>,
 <linuxppc-dev@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linaro-mm-sig@lists.linaro.org>, <rust-for-linux@vger.kernel.org>,
 <llvm@lists.linux.dev>
X-Mailer: aerc 0.21.0
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
In-Reply-To: <20260424054742.45832-6-mkchauras@gmail.com>
X-ClientProxiedBy: LO4P265CA0028.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ae::20) To LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:488::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LOVP265MB8871:EE_|LO0P265MB7026:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cf2ce5d-0c7e-4354-218e-08dea1ff1ee9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|10070799003|1800799024|366016|7416014|376014|921020|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	qZxuI9vt5qSeLsyrg9zmyJOM/CEX42j7kuAUtj8gBfLFAU38bw3Oae3ceSTgI6jh+sfFJKFIl28itXW5SS2Ubcuft6krOLaAqX6wlUr2XRq2u+HJghwErPBSzf0wedOoJHXPGmnbCFqYNr4q12AsQmTrFvjR2rAzLaaFmWmRn/UbbOvrLj2V/+fy1DfEBFGcKeIW8LPS707iJXyarkkhbiWIz3pvoHSPGVu+Q3TzbwTk2oD3KC9HRvtHlFtv5nydOTcG2JVdRayes42fMfaF9O64XmIh0KrkPiLX/G2JWP8FpL+MhQqrzPUynUZdP1mdCDJRuqfHJC04KxExZ0XBPV1C/vzfgW7nrevjdQno9pM9Hr5ZeFIPIIFefTomna5Wp5C4RaJcBkXbPtK4i3KmP76I/nuRZnK7yYqRvG3hsgKW37hrYQfRQxIAfhu+bK3q2mW4wIoQoZnWe+fvAh63ujEVJXDioNO9pvop5s4h/FUzdjxd49dqIp760z84ThMFcCNubJpMBURW27kSP2WdXsy38e5VedJYcjTHXENAnBcoV54kjPTQNz87nVbDqs/h4e+hjNKyCHklwxnsva/fkFFRxQYgGgFwbU6GgwJZB8W4Nz3mScVa1YPBMOldxjtkHYonQhHB1TNkKPjY2Dz9GAZp78Sg7Y/raDgLQKUTz5I26lWn2J7zGMiNh9+/UIM2JuiIJLoF3Uh7QdjeyQk5ge86kOIon6RRJrdpsdIqL4FqeZCHuAeQx3wHz7yEjiwbbcZU2wEyhAwFRgW7EKp9BA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(366016)(7416014)(376014)(921020)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dDdVTTRJYW1VU3pTU2JyWXdmWUNDQVpIbVd6RnlYVnlLa0VYT3kwK3RRditU?=
 =?utf-8?B?YVBIRFlSUjcvS1VIR3YvM2dOR3g3bFpTT2haWUdRYVB3anM5bnd5ckpuVDNx?=
 =?utf-8?B?NkgzWW9QZ0NPbjQ1V0xGY2xDd1BRV0hDbFlKSHhMZUR0MU04cGREMDBQb2R1?=
 =?utf-8?B?NjVENkRDcTVFR1pCZUJ2ZGdVUTF5WjNTdlRub3Z1UjVkTXg5bjU0Zm4rOFpD?=
 =?utf-8?B?eSttaTJqUE1UaDB2UlE3V1d3ZFRiZHhtWUxXT1dvejNwTFA4VitDWHY2eHAw?=
 =?utf-8?B?NEhoVXQ0WVE1WjRKU1g0WVVDOUIwTUdmSWZuMFFUR2paRjlERCtmSU1tMGVl?=
 =?utf-8?B?ZmlhRWxEb0lWSEg2eXRRUEpMb3lRdHJaUVRORnp5UlJUWnpVdGg4UFZieXdh?=
 =?utf-8?B?NnJwVXdBdHdTa3h2bWZ3WmJydmJoZlNjS1p6NVpBM2cvNGlRbUEvNkdicTMw?=
 =?utf-8?B?Nk5QVEZVQ0lRR1JrQmY4RUV3aUZ6SDFDN0kzaGFjZnk3YlVjQnoxeE8zQXp4?=
 =?utf-8?B?cE11b1BtT3MzeG9GSDlpVXJPdG85L2F1aERaMGR1MG0xRkg4RDJxNDdKK3Jl?=
 =?utf-8?B?ZEQwTVVOSkduK0pnQXEvU01FS1hVRUdEWmpIRnFVdm5ySlNYMlJtelVLM3Fz?=
 =?utf-8?B?QW12T0N0NkhhTk1wSXJ4SjJaRGUvWDB1MmV6bUZHaDhvRnNzbUdHNmtsUmtN?=
 =?utf-8?B?TjhhQTFaUlY3ME04TzdIQWZsenFLYzJHVU50RVdWN292M1lVbWcwck1QWkFP?=
 =?utf-8?B?c2NNaTR1RG9WZFlNUkpJVnRwWDZ5ckl5Wnh5c2hjVlBLc3lIOTNXWGJ4VFJV?=
 =?utf-8?B?anVTVlkvUHY2czljSHBsSXI5R2ZhVWczRmVuREFlaDhrQVZQcjBsbTU0Sk81?=
 =?utf-8?B?Y2hRMXBvOVpJdGlGbDJrQjJBMGk0dzJqNzhqMWNrWExzTXRjL0ZxTytBcURW?=
 =?utf-8?B?YklaZElTMFdkY0VHVS9pRDhRc3AyanpER0FraUJCRlJFS1BRd3FwWjRSOUxw?=
 =?utf-8?B?bkI5UEgzS3BhKyt4ZjE5bWdmM0Mrc0VXTXZvV3paRWxyUmFRODRSY21QTG9x?=
 =?utf-8?B?cWRvbkJmdVVEaEw2ZWdGV2t2aHBJUFhzWEIvaGVLMUlCcWVKUERwRUNLMEtL?=
 =?utf-8?B?K1BqVU9HTnVnL01TWFpGU1UrdEZiaE90ZXk4NjUvSUFtRERVT0FVWFd6aXJZ?=
 =?utf-8?B?U0NZdjZuVlRIS25xc0FIRzZSSXpobHNhKzg4WnlaUHZCc3BETEJLekNBMjVE?=
 =?utf-8?B?K1ZFemZEVlN6OGRMUVg3Q09EbHo1azRMd3VkRTkyckdxRDg2aXB6ejFFaDNz?=
 =?utf-8?B?TXJCYThId1hOU0UyMXdnU0ZPSnFmTjNRclg2NExhSk5vQ2haNjVPcVVpRllv?=
 =?utf-8?B?Ti90VnkvdmhtNERDMGN2SVhxMkMyYWlPREhrQTdqRys5KytmNlNDWVh3aUp4?=
 =?utf-8?B?Q1lKa2ZsZG15YUxsZUFnUjZMVy9zRUNkbDRsVHNDUGFDMXdMZ0s5Qk5kZjcr?=
 =?utf-8?B?WFIrcjN3SnNIK0tGdmxMUUZ4eFNHUFhuL09DdHpJREVqWnI4YlRpM3VnelVE?=
 =?utf-8?B?M3RIcHlYWWJ0c0ZNbkJsVkRwUlljb1pvNVVUNjVxMjlpQjFuMmhjcU9LMGln?=
 =?utf-8?B?eS8yeGxINUFqVlh5S0V3a1djYjFQT3grT28zTWJYQ2JFdG5YOUo3VFFvekxB?=
 =?utf-8?B?RTlxWGFjSC9oVTh2a1d6RHMwZ2NxcGtoOFJzV3JLdkxqNlBpR1Q0SkhXNVVQ?=
 =?utf-8?B?bzVIZDh4bTVjU2o1bUlxdTJYZTYrYXZwbmFlVGYrdmRQN2JzUXQ5YlI4ZmIx?=
 =?utf-8?B?LzAvS0tWdmhTbFJremppSzgxNk5QSjFPWjRaZTN1N0xTUERlZUhRKzdrM0kx?=
 =?utf-8?B?bEZMZEdHdmloMHcwcC92ZFBiV0xJL3dOOFRUQVNWaW00VWNjWHRPdjFCZTdz?=
 =?utf-8?B?U0lZL211NWFTODJ3K1ZPZWVRVHBHWFpnaVA3VWc0U2N1UmlDWU9MRjdXU1FH?=
 =?utf-8?B?R3M5VjZ3cS83QjZMSXVOd1puOWFkZmFQdTJlV1ZrOEUva2ZRV21VWGtiRnFu?=
 =?utf-8?B?c290TTZwNGNpVEVwK3dkOVg4clRvRHpCZDJsWjFvWTFqbzZHY3N0RFlteWNZ?=
 =?utf-8?B?MXB1SzNjSTRwUUwyMVluc255cGhNOXVlbFBkL0VZeHZYeGpMSnUzZWpqN3k4?=
 =?utf-8?B?MlNjWTRLU2FKZllVNk5mMS8vY1pLY1lpUDF0amw1QXNDdktKSVdCTmo3allQ?=
 =?utf-8?B?VHNMQWxSNm1BWXlWTkFxUHRZc1FKQmtONFJjaGhQV1FBaDFCYlg3Zml3eEhQ?=
 =?utf-8?B?Z0JHUGFZNUlyclFPL3pTOVU4MDdPZzQ3MzhZbnRJTmkxVDVUWTlwZz09?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cf2ce5d-0c7e-4354-218e-08dea1ff1ee9
X-MS-Exchange-CrossTenant-AuthSource: LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2026 12:43:44.1297
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wYzL+1TKZSabyrdAizLf0SgY/fCe51GNVaxudBMtsXwZ+zeR8n9ErHV4WLwE0vIkd0wm+6lAV1eTdy1/XTYL7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P265MB7026
X-Spamd-Bar: ----
X-MailFrom: gary@garyguo.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DHJO2MMHVSPHAW3LYHLPBRUPDAOXUY6E
X-Message-ID-Hash: DHJO2MMHVSPHAW3LYHLPBRUPDAOXUY6E
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:59:57 +0000
CC: Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DHJO2MMHVSPHAW3LYHLPBRUPDAOXUY6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: B2681475DA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[garyguo.net:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[75];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[garyguo.net : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,linux.ibm.com,ellerman.id.au,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.799];
	FROM_NEQ_ENVFROM(0.00)[gary@garyguo.net,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[garyguo.net:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[garyguo.net:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,linkmauve.fr:email]

T24gRnJpIEFwciAyNCwgMjAyNiBhdCA2OjQ3IEFNIEJTVCwgTXVrZXNoIEt1bWFyIENoYXVyYXNp
eWEgKElCTSkgd3JvdGU6DQo+IEZyb206IExpbmsgTWF1dmUgPGxpbmttYXV2ZUBsaW5rbWF1dmUu
ZnI+DQo+DQo+IFRoZSBjb3JlIGNyYXRlIGN1cnJlbnRseSBkZXBlbmRzIG9uIHRoZXNlIHR3byBm
dW5jdGlvbnMgZm9yIGk2NC91NjQvDQo+IGkxMjgvdTEyOC9jb3JlOjp0aW1lOjpEdXJhdGlvbiBm
b3JtYXR0aW5nLCBidXQgd2Ugc2hvdWxkbuKAmXQgdXNlIHRoYXQgaW4NCj4gdGhlIGtlcm5lbCBz
byBsZXTigJlzIHBhbmljIGlmIHRoZXkgYXJlIGV2ZXIgY2FsbGVkLg0KPg0KPiBUaGlzIGRvZXNu
4oCZdCB5ZXQgZml4IGRybV9wYW5pY19xci5ycywgd2hpY2ggYWxzbyB1c2VzIF9fdWRpdmRpMyB3
aGVuDQo+IENPTkZJR19DQ19PUFRJTUlaRV9GT1JfU0laRT15LCBidXQgYXQgbGVhc3QgbWFrZXMg
dGhlIHJlc3Qgb2YgdGhlIGtlcm5lbA0KPiBidWlsZCBvbiBQUEMzMi4NCg0KQ2FuIHdlIGFsd2F5
cyBidWlsZCBsaWJjb3JlIHdpdGggYC1DIG9wdC1sZXZlbD0yYCBldmVuIGlmDQpgQ09ORklHX0ND
X09QVElNSVpFX0ZPUl9TSVpFYCBpcyBzcGVjaWZpZWQ/IEl0IGZlZWxzIGxpa2UgYSBiZXR0ZXIg
Zml4IHRoYW4NCnN0dWJiaW5nIHRoaW5ncyBvdXQuDQoNCkJlc3QsDQpHYXJ5DQoNCj4NCj4gU2ln
bmVkLW9mZi1ieTogTGluayBNYXV2ZSA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4NCj4gU2lnbmVk
LW9mZi1ieTogTXVrZXNoIEt1bWFyIENoYXVyYXNpeWEgKElCTSkgPG1rY2hhdXJhc0BnbWFpbC5j
b20+DQo+IC0tLQ0KPiAgcnVzdC9NYWtlZmlsZSAgICAgICAgICAgICB8IDQgKysrKw0KPiAgcnVz
dC9jb21waWxlcl9idWlsdGlucy5ycyB8IDYgKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEw
IGluc2VydGlvbnMoKykNCj4NCj4gZGlmZiAtLWdpdCBhL3J1c3QvTWFrZWZpbGUgYi9ydXN0L01h
a2VmaWxlDQo+IGluZGV4IDJhNTQyOGE1NTAzZC4uZWUxMWZiYTdhMDNkIDEwMDY0NA0KPiAtLS0g
YS9ydXN0L01ha2VmaWxlDQo+ICsrKyBiL3J1c3QvTWFrZWZpbGUNCj4gQEAgLTYxNiw2ICs2MTYs
MTAgQEAgaWZuZXEgKCQob3IgJChDT05GSUdfQVJNNjQpLCQoYW5kICQoQ09ORklHX1JJU0NWKSwk
KENPTkZJR182NEJJVCkpKSwpDQo+ICAJCV9fYXNocnRpMyBcDQo+ICAJCV9fYXNobHRpMyBfX2xz
aHJ0aTMNCj4gIGVuZGlmDQo+ICtpZmRlZiBDT05GSUdfUFBDMzINCj4gKwlyZWRpcmVjdC1pbnRy
aW5zaWNzICs9IFwNCj4gKwkJX191ZGl2ZGkzIF9fdW1vZGRpMw0KPiArZW5kaWYNCj4gIA0KPiAg
aWZkZWYgQ09ORklHX01PRFZFUlNJT05TDQo+ICBjbWRfZ2VuZHdhcmZrc3ltcyA9ICQoaWYgJChz
a2lwX2dlbmR3YXJma3N5bXMpLCwgXA0KPiBkaWZmIC0tZ2l0IGEvcnVzdC9jb21waWxlcl9idWls
dGlucy5ycyBiL3J1c3QvY29tcGlsZXJfYnVpbHRpbnMucnMNCj4gaW5kZXggZGQxNmMxZGM4OTlj
Li5mYzZiNTQ2MzZkZDUgMTAwNjQ0DQo+IC0tLSBhL3J1c3QvY29tcGlsZXJfYnVpbHRpbnMucnMN
Cj4gKysrIGIvcnVzdC9jb21waWxlcl9idWlsdGlucy5ycw0KPiBAQCAtOTcsNSArOTcsMTEgQEAg
cHViIGV4dGVybiAiQyIgZm4gJGlkZW50KCkgew0KPiAgICAgIF9fYWVhYmlfdWxkaXZtb2QsDQo+
ICB9KTsNCj4gIA0KPiArI1tjZmcodGFyZ2V0X2FyY2ggPSAicG93ZXJwYyIpXQ0KPiArZGVmaW5l
X3Bhbmlja2luZ19pbnRyaW5zaWNzISgiYHU2NGAgZGl2aXNpb24vbW9kdWxvIHNob3VsZCBub3Qg
YmUgdXNlZCIsIHsNCj4gKyAgICBfX3VkaXZkaTMsDQo+ICsgICAgX191bW9kZGkzLA0KPiArfSk7
DQo+ICsNCj4gIC8vIE5PVEU6IGlmIHlvdSBhcmUgYWRkaW5nIGEgbmV3IGludHJpbnNpYyBoZXJl
LCB5b3Ugc2hvdWxkIGFsc28gYWRkIGl0IHRvDQo+ICAvLyBgcmVkaXJlY3QtaW50cmluc2ljc2Ag
aW4gYHJ1c3QvTWFrZWZpbGVgLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
