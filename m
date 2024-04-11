Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8D88A0DE5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Apr 2024 12:09:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 273CE43E81
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Apr 2024 10:09:03 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2065.outbound.protection.outlook.com [40.107.102.65])
	by lists.linaro.org (Postfix) with ESMTPS id EDE0F43D34
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Apr 2024 10:09:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=NiO2ZKLK;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.102.65 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BKV9gwUqtB5PqX9+aXsrCygBNmMFdpVjqz0jldcwsH7iB732kbi+uqK+fCv7TPAVaFOtFnUZlecK0SBk09Fguj0OEZhgd2oBMOvRLlll+A1gZ81i5tRx9FLj/aycnWKKXDgMI5OjJuNv+3Yann9ZcX86nvbAoCwNaTue1lTJDQS37W32NP3G5hGi57PGpKul6UfZgn6mKJPnjG8veS1+ODXl6SImLi+AXvFWhBQVn7mpIGz4fu6iaJLIyRjbGEM9P9PkJ7DDjuTU4GDqjwWN9EP2QzTB7zu/DjQuEzCsFExYvYTPiFQex3bfnYtDWyIOBWyQUIvceZk3BYyyl9F8aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ap78K8Newm4BnQ3TItEjz2ltOxcvyhhQnJdRIANsFHw=;
 b=GUYHmZfGuM3HdXCI8PK4iKVc5cd+nozpOqoih8qs4k10gplXfMkZllihp168J5Z01HvNyq30J8S0ewiCgRkPO7uU19EAqZxRlUxzC3CedSq0nF23XpimpIRcbOVyjoYHKadAqPAmBKDJfsV+xHZov8e69vOvB+V4vD201myqJHKPWZKq/Q12pZrtFbBZbabCpyVJiY7opSbH3xbHVN60cCvk5UNu4Cjg+YMKfT0UWJK6joPYbarUHe9cjVVXVVOSarl7KTwKxJLWzscBSj2k9sNCAsTyHwvDS7H+uIMUzSHraRd8BpfQkGHNR94t3rca/nZwtvTAcU3qxTpilJynsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ap78K8Newm4BnQ3TItEjz2ltOxcvyhhQnJdRIANsFHw=;
 b=NiO2ZKLKsGdhn9I7NOo5wfQyu3W8LNUinW/gL3k4F3gXBbb/AqE3Zh393XoVWKMoHivJqMOXK6eUGh7McqfQqO/kcjogPDI/hKrPHF351QAMA9HqeQ9WKodxxIvQxaQGMIeIDx+wv2pKWB7GTk8djG4rgrBQINSSgG/nt/SAFdw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB6906.namprd12.prod.outlook.com (2603:10b6:510:1b8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Thu, 11 Apr
 2024 10:08:58 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7409.053; Thu, 11 Apr 2024
 10:08:58 +0000
Message-ID: <72ac9781-6b71-4683-a908-c1289a031b01@amd.com>
Date: Thu, 11 Apr 2024 12:08:51 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com>
 <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
 <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
 <0df41277-ded5-4a42-9df5-864d2b6646f5@amd.com>
 <CABdmKX03Of7OE_9PfAy5DWcCwwvQvJGXDjzAE8c4WRrz_0Z_eg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX03Of7OE_9PfAy5DWcCwwvQvJGXDjzAE8c4WRrz_0Z_eg@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0365.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f8::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB6906:EE_
X-MS-Office365-Filtering-Correlation-Id: f2111b3f-485e-4a39-5079-08dc5a0f6761
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FJdbTVoM8QYPZiiDWiyQImq2qkWb9QRzUydDa6DJgUPCxUb9c2zTTuox5DVFcmOXIxcm23fXlvDhtq7SJ/ofhxEDkT0ziX5Upf4cuZ5WexxSxWMR3QhkBOoOPx6ucMCyf+TnjX9Pw7PUvsg6147hyriUlYXJhPH7ODciMSNipLK/1veulVfY3QRnzTKc0yItaKUc7LmftAvZqAsQeV7xrJx5APC4TkAxn/mSEXpAg/PtTzqiyGN1KNXfvPoDWtBuiWZ9hqqvTj/cAyGEEbS21bSL7No3QBidi44cnEe7gULmoLSoII5tj2D46UMCnBiSEa8shoaLgsO3A3GpYB9wrC4mvBmL7jpctLU5JFG29yUhwBNOCmmFZXlLujJ0+k0MonTacj6BQx36uyFm7aibDfKESwQAUv8ZW+2lpbBJd6xGJLNikXIsK5ssxYFClMD/+db/UHt6DRXr5FqyKv+hsm547ecVBu6yAZGaYknjvwpMvLReBcpFCqHfjb3vL/DZNYXMnz5EWlWLhzdAyFINzUIwaOLXLB3hFRH8fJ62MRqKeXx+6GUeDe3U/2zsoU1skhjyUguTVTOPhCRegPYR96l5tsLROXnRwZUM04GVDMI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(7416005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TTlRdDB5L053cy9nV0dPUmx2bytPQ003dWY5OTBodTNWSTVuSTlXSzlqMHlp?=
 =?utf-8?B?TlowOHI1dFhYTkZwdktKWVc0ZFJTMFFCVndmZzZsa1dHSzVHZVhZaG9MdVVp?=
 =?utf-8?B?ZG5haThXYitqT2FtVHRYcEsvZG5EdzEzU29iTHV4ZUg2YVpDbWppRkdmNjh1?=
 =?utf-8?B?T3pQNk5tMzZUTTVKM3Z2cEhJYmtQTk00MnRCU3RTVjVLVVhRaytjUmh1ZXR0?=
 =?utf-8?B?NjhMOGYySCs2VExaT0RsVWFoSkNFYnVVdnJKZk1CWWRsSzNOdEhyaGhncjVO?=
 =?utf-8?B?VGVkWkFwVHRtSVpkRXQyU2JlZmR0azFhNithbGxiMURiWTFLWThuL1ZqLzBV?=
 =?utf-8?B?M0tSczhDZGxYb3cyMVNPeHRZTmZYUE9DaGYxZENibUxvMTl1eDBKcU15Tzd6?=
 =?utf-8?B?RC9XQjdRVmtXNzM5dHZndmRJT0F0VUtkV0lhOXN1cGQwRC9RWkFZVXdSbDdE?=
 =?utf-8?B?WjR1MjNsKzZCNmdPUjFGTm91OWpZcGgrd3V2UEE4VEN2b2h5dm1jRjVESkFw?=
 =?utf-8?B?eDhrdUJJQzViTGd6UUt1Q2JNaWxyWnlMKzdHQlpTSDJJbjYyanFMcldGUlFa?=
 =?utf-8?B?TlNhbU9MT2xtcjZueWF2Y1A4cjkxRTFZeVVSNFdFQ3FjSHBmbnVkV2syVjR1?=
 =?utf-8?B?dDFHeitkS3JaMUppclBwc3ZnSHhnNG92dGYzRStpbnJ6b1FzRFhlTzV5WWdw?=
 =?utf-8?B?M0EwUlE0OVFJanJEZHFDUThZU0hzMHRxdWl2U1FnekhCRDRlWW1BbHQ5RDFI?=
 =?utf-8?B?cTZlYVRlTFJ2ODF5NzU0QXVmSktrRHhOc1kwY2s4M0hQQTB5V3dKaHUydGFM?=
 =?utf-8?B?WDI4UVZxVVlpeHFHbFp4WCt4cE1qVTJrTC9QYmE0YTJ4bm1vbnVqTU1WNGdq?=
 =?utf-8?B?Wm9pY05mVnZ3R25qdzZ6WUdkblpOZm04b2hoVWlIaFBrUW41WUowQ1dLeEtY?=
 =?utf-8?B?MkNtcVlZNENBVjdsbmo4MWJZeDBadVFUTlhHQkJPZFFaOXNHa0F5U1pKamV3?=
 =?utf-8?B?YVhORmlwMXErVjRyN0Z3U2pMRXlqaG42WEUzcklueVdZa0piU0hNNk9UVFBC?=
 =?utf-8?B?NHE5RG9lZnNVUVAzaHh6dXVvSmpIRWQzd2dlTys1T0tYdjJmUWlKdzR5NjVD?=
 =?utf-8?B?MzIzUnk4UkJTQjRhYmdxMFVtaGZkb2p1NHhSOVQ4ZDg4OWUwNDNxaE80cmtE?=
 =?utf-8?B?TFJ1WmhsbGJVYUt6RlR1L1RWY0FtVHVjWHUxdUdFRmlUc2MrTk5JVEx5Qkgy?=
 =?utf-8?B?TVVQV0VnYWNwN3VheDl0ZU16K0xWT1RLS0RyOVhSR29saVpDS3Z0N3FLeTFD?=
 =?utf-8?B?cTBqUnVxYUY1cEVZaXpIL3NUb0JBK1ZGRXB4Y0s3L0JCY1BpUHcveDNCb01M?=
 =?utf-8?B?MHo2elphdXVJbGdvSXNtTElJV01LdXdTZVJNMUhnVXRGUGY0ZEQ1eGF4SllL?=
 =?utf-8?B?RENsK3BBbDIxKzVNNlJRd1Z5Uk5zM2QrTmxRYmsrWGZyTkJBek56Tit0OHh6?=
 =?utf-8?B?RzAyZ29jcGRlaXNmcHdQNmpLaWh4ck9NdWptRGlwZjdLak5HdnJjK001RCtm?=
 =?utf-8?B?RTBCVDJLZVMrb05kdWFzNTRvd3RuSndmZFV1azdKVFFVcmtlTVQ1cmh1VDVD?=
 =?utf-8?B?SlBrdS9LUWQyU2tHWWpkMFROYi9pZXlqa1hmcjU5c1hkcFEzZXVGSVdNMmxo?=
 =?utf-8?B?WS9VOWhnUmFqU0NqNXhhZGEyaXQyejV3U0J5czBPY3p2djd2QkthcE5uaUJD?=
 =?utf-8?B?TkR0ZldobXlBdlQ0aVlHRXJ4UWVLZGgyaUVna2owL3FsNDlZMm9aTFNTL0Rk?=
 =?utf-8?B?amlQWjRSN1VJTmYwUkxYdDVDQ09WbzIzUWZ2ZmkvZVRlcyt4N01rSFE3bGRK?=
 =?utf-8?B?M0FEL2JDcER4aStEVUtRSXJ5cjhVMElqMDcyUllBNkVhdEwwekxxdUpOL3dB?=
 =?utf-8?B?OTBKVitmTjNEYktOaGl5Nk5sZU1kaytNaGZMMkhyRXNTdkJpRG1yckdheW8x?=
 =?utf-8?B?dU16a0MrSEVJMy84ZjlOZ0wzemI2d2dDdlZHZmJCNnRwNlpYV050WW5aL0Vw?=
 =?utf-8?B?Ykx6U1ppM2NvWDNYRm9Vck5OZml0bUVnWWpKYnZzQmNhT3FWdUUrWGZacmc5?=
 =?utf-8?Q?Jb+wLTpY4H76yufi8R3Dg9MFH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2111b3f-485e-4a39-5079-08dc5a0f6761
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2024 10:08:58.6578
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hZXdlyIy2z1mGlfMOiq6XhB4K9AJSQgkeaGmKubOg1m9fLvmyUVd6BlLabvP+fgl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6906
X-Rspamd-Queue-Id: EDE0F43D34
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	URIBL_BLOCKED(0.00)[amd.com:dkim,amd.com:email];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.102.65:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2GVGXYNONV3BYQ2PC42D5OSBYYBZPBY7
X-Message-ID-Hash: 2GVGXYNONV3BYQ2PC42D5OSBYYBZPBY7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rong Qianfeng <11065417@vivo.com>, Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org, pekka.paalanen@collabora.com, jason@jlekstrand.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2GVGXYNONV3BYQ2PC42D5OSBYYBZPBY7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTAuMDQuMjQgdW0gMTc6MDcgc2NocmllYiBULkouIE1lcmNpZXI6DQo+IE9uIFdlZCwgQXBy
IDEwLCAyMDI0IGF0IDc6MjLigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+IHdyb3RlOg0KPj4gQW0gMDkuMDQuMjQgdW0gMTg6Mzcgc2NocmllYiBULkou
IE1lcmNpZXI6DQo+Pj4gT24gVHVlLCBBcHIgOSwgMjAyNCBhdCAxMjozNOKAr0FNIFJvbmcgUWlh
bmZlbmcgPDExMDY1NDE3QHZpdm8uY29tPiB3cm90ZToNCj4+Pj4g5ZyoIDIwMjQvNC84IDE1OjU4
LCBDaHJpc3RpYW4gS8O2bmlnIOWGmemBkzoNCj4+Pj4+IEFtIDA3LjA0LjI0IHVtIDA5OjUwIHNj
aHJpZWIgUm9uZyBRaWFuZmVuZzoNCj4+Pj4+PiBbU05JUF0NCj4+Pj4+Pj4gQW0gMTMuMTEuMjEg
dW0gMDc6MjIgc2NocmllYiBKaWFucXVuIFh1Og0KPj4+Pj4+Pj4gQWRkIERNQV9CVUZfSU9DVExf
U1lOQ19QQVJUSUFMIHN1cHBvcnQgZm9yIHVzZXIgdG8gc3luYyBkbWEtYnVmIHdpdGgNCj4+Pj4+
Pj4+IG9mZnNldCBhbmQgbGVuLg0KPj4+Pj4+PiBZb3UgaGF2ZSBub3QgZ2l2ZW4gYW4gdXNlIGNh
c2UgZm9yIHRoaXMgc28gaXQgaXMgYSBiaXQgaGFyZCB0bw0KPj4+Pj4+PiByZXZpZXcuIEFuZCBm
cm9tIHRoZSBleGlzdGluZyB1c2UgY2FzZXMgSSBkb24ndCBzZWUgd2h5IHRoaXMgc2hvdWxkDQo+
Pj4+Pj4+IGJlIG5lY2Vzc2FyeS4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gRXZlbiB3b3JzZSBmcm9tIHRo
ZSBleGlzdGluZyBiYWNrZW5kIGltcGxlbWVudGF0aW9uIEkgZG9uJ3QgZXZlbiBzZWUNCj4+Pj4+
Pj4gaG93IGRyaXZlcnMgc2hvdWxkIGJlIGFibGUgdG8gZnVsZmlsbCB0aGlzIHNlbWFudGljcy4N
Cj4+Pj4+Pj4NCj4+Pj4+Pj4gUGxlYXNlIGV4cGxhaW4gZnVydGhlciwNCj4+Pj4+Pj4gQ2hyaXN0
aWFuLg0KPj4+Pj4+IEhlcmUgaXMgYSBwcmFjdGljYWwgY2FzZToNCj4+Pj4+PiBUaGUgdXNlciBz
cGFjZSBjYW4gYWxsb2NhdGUgYSBsYXJnZSBjaHVuayBvZiBkbWEtYnVmIGZvcg0KPj4+Pj4+IHNl
bGYtbWFuYWdlbWVudCwgdXNlZCBhcyBhIHNoYXJlZCBtZW1vcnkgcG9vbC4NCj4+Pj4+PiBTbWFs
bCBkbWEtYnVmIGNhbiBiZSBhbGxvY2F0ZWQgZnJvbSB0aGlzIHNoYXJlZCBtZW1vcnkgcG9vbCBh
bmQNCj4+Pj4+PiByZWxlYXNlZCBiYWNrIHRvIGl0IGFmdGVyIHVzZSwgdGh1cyBpbXByb3Zpbmcg
dGhlIHNwZWVkIG9mIGRtYS1idWYNCj4+Pj4+PiBhbGxvY2F0aW9uIGFuZCByZWxlYXNlLg0KPj4+
Pj4+IEFkZGl0aW9uYWxseSwgY3VzdG9tIGZ1bmN0aW9uYWxpdGllcyBzdWNoIGFzIG1lbW9yeSBz
dGF0aXN0aWNzIGFuZA0KPj4+Pj4+IGJvdW5kYXJ5IGNoZWNraW5nIGNhbiBiZSBpbXBsZW1lbnRl
ZCBpbiB0aGUgdXNlciBzcGFjZS4NCj4+Pj4+PiBPZiBjb3Vyc2UsIHRoZSBhYm92ZS1tZW50aW9u
ZWQgZnVuY3Rpb25hbGl0aWVzIHJlcXVpcmUgdGhlDQo+Pj4+Pj4gaW1wbGVtZW50YXRpb24gb2Yg
YSBwYXJ0aWFsIGNhY2hlIHN5bmMgaW50ZXJmYWNlLg0KPj4+Pj4gV2VsbCB0aGF0IGlzIG9idmlv
dXMsIGJ1dCB3aGVyZSBpcyB0aGUgY29kZSBkb2luZyB0aGF0Pw0KPj4+Pj4NCj4+Pj4+IFlvdSBj
YW4ndCBzZW5kIG91dCBjb2RlIHdpdGhvdXQgYW4gYWN0dWFsIHVzZXIgb2YgaXQuIFRoYXQgd2ls
bA0KPj4+Pj4gb2J2aW91c2x5IGJlIHJlamVjdGVkLg0KPj4+Pj4NCj4+Pj4+IFJlZ2FyZHMsDQo+
Pj4+PiBDaHJpc3RpYW4uDQo+Pj4+IEluIGZhY3QsIHdlIGhhdmUgYWxyZWFkeSB1c2VkIHRoZSB1
c2VyLWxldmVsIGRtYS1idWYgbWVtb3J5IHBvb2wgaW4gdGhlDQo+Pj4+IGNhbWVyYSBzaG9vdGlu
ZyBzY2VuYXJpbyBvbiB0aGUgcGhvbmUuDQo+Pj4+DQo+Pj4+ICAgIEZyb20gdGhlIHRlc3QgcmVz
dWx0cywgVGhlIGV4ZWN1dGlvbiB0aW1lIG9mIHRoZSBwaG90byBzaG9vdGluZw0KPj4+PiBhbGdv
cml0aG0gaGFzIGJlZW4gcmVkdWNlZCBmcm9tIDMuOHMgdG8gM3MuDQo+Pj4+DQo+Pj4gRm9yIHBo
b25lcywgdGhlIChvdXQgb2YgdHJlZSkgQW5kcm9pZCB2ZXJzaW9uIG9mIHRoZSBzeXN0ZW0gaGVh
cCBoYXMgYQ0KPj4+IHBhZ2UgcG9vbCBjb25uZWN0ZWQgdG8gYSBzaHJpbmtlci4NCj4+IFdlbGws
IGl0IHNob3VsZCBiZSBvYnZpb3VzIGJ1dCBJJ20gZ29pbmcgdG8gcmVwZWF0IGl0IGhlcmU6IFN1
Ym1pdHRpbmcNCj4+IGtlcm5lbCBwYXRjaGVzIGZvciBvdXIgb2YgdHJlZSBjb2RlIGlzIGEgcmF0
aGVyICpleHRyZW1lKiBuby1nby4NCj4+DQo+IFNvcnJ5IEkgdGhpbmsgbXkgY29tbWVudCBsZWQg
dG8gc29tZSBjb25mdXNpb24uIEkgd2Fzbid0IHN1Z2dlc3RpbmcNCj4geW91IHNob3VsZCB0YWtl
IHRoZSBwYXRjaDsgaXQncyBjbGVhcmx5IGluY29tcGxldGUuIEkgd2FzIHBvaW50aW5nIG91dA0K
PiBhbm90aGVyIG9wdGlvbiB0byBSb25nLiBJdCBhcHBlYXJzIFJvbmcgaXMgY3JlYXRpbmcgYSBz
aW5nbGUgb3ZlcnNpemVkDQo+IGRtYS1idWYsIGFuZCBzdWJkaXZpZGluZyBpdCBpbiB1c2Vyc3Bh
Y2UgdG8gYXZvaWQgbXVsdGlwbGUgYWxsb2NhdGlvbnMNCj4gZm9yIG11bHRpcGxlIGJ1ZmZlcnMu
IFRoYXQgd291bGQgbGVhZCB0byBhIG5lZWQgZm9yIGEgcGFydGlhbCBzeW5jIG9mDQo+IHRoZSBi
dWZmZXIgZnJvbSB1c2Vyc3BhY2UuIEluc3RlYWQgb2YgdGhhdCwgdXNpbmcgYSBoZWFwIHdpdGgg
YSBwYWdlDQo+IHBvb2wgZ2V0cyB5b3Uga2luZCBvZiB0aGUgc2FtZSB0aGluZyB3aXRoIGEgbG90
IGxlc3MgaGVhZGFjaGUgaW4NCj4gdXNlcnNwYWNlLCBhbmQgbm8gbmVlZCBmb3IgcGFydGlhbCBz
eW5jLiBTbyBJIHdhbnRlZCB0byBzaGFyZSB0aGF0DQo+IG9wdGlvbiwgYW5kIHRoYXQgY2FuIGdv
IGluIGp1c3QgQW5kcm9pZCBpZiBuZWNlc3Nhcnkgd2l0aG91dCB0aGlzDQo+IHBhdGNoLg0KDQpB
aCEgVGhhbmtzIGZvciB0aGUgY2xhcmlmaWNhdGlvbiBhbmQgc29ycnkgZm9yIGFueSBub2lzZSBJ
IGNyZWF0ZWQuDQoNCkkgbWVhbiBmcm9tIHRoZSB0ZWNobmljYWwgc2lkZSB0aGUgcGF0Y2ggZG9l
c24ndCBsb29rcyBpbnZhbGlkIG9yIA0KYW55dGhpbmcsIGJ1dCB0aGVyZSBpcyBzaW1wbHkgbm8g
dXBzdHJlYW0gdXNlIGNhc2UuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4+IFRoYXQg
aW4ga2VybmVsIGNvZGUgKm11c3QqIGhhdmUgYW4gaW4ga2VybmVsIHVzZXIgaXMgYSBudW1iZXIg
b25lIHJ1bGUuDQo+Pg0KPj4gV2hlbiBzb21lYm9keSB2aW9sYXRlcyB0aGlzIHJ1bGUgaGUgcHJl
dHR5IG11Y2ggZGlzcXVhbGlmeWluZyBoaW1zZWxmIGFzDQo+PiByZWxpYWJsZSBzb3VyY2Ugb2Yg
cGF0Y2hlcyBzaW5jZSBtYWludGFpbmVycyB0aGVuIGhhdmUgdG8gYXNzdW1lIHRoYXQNCj4+IHRo
aXMgcGVyc29uIHRyaWVzIHRvIHN1Ym1pdCBjb2RlIHdoaWNoIGRvZXNuJ3QgaGF2ZSBhIGp1c3Rp
ZmljYXRpb24gdG8NCj4+IGJlIHVwc3RyZWFtLg0KPj4NCj4+IFNvIHdoaWxlIHRoaXMgYWN0dWFs
bHkgbG9va3MgdXNlZnVsIGZyb20gdGhlIHRlY2huaWNhbCBzaWRlIGFzIGxvbmcgYXMNCj4+IG5v
Ym9keSBkb2VzIGFuIGltcGxlbWVudGF0aW9uIGJhc2VkIG9uIGFuIHVwc3RyZWFtIGRyaXZlciBJ
IGFic29sdXRlbHkNCj4+IGhhdmUgdG8gcmVqZWN0IGl0IGZyb20gdGhlIG9yZ2FuaXphdGlvbmFs
IHNpZGUuDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4gICAgVGhhdCBh
bGxvd3MgeW91IHRvIHNraXAgcGFnZQ0KPj4+IGFsbG9jYXRpb24gd2l0aG91dCBmdWxseSBwaW5u
aW5nIHRoZSBtZW1vcnkgbGlrZSB5b3UgZ2V0IHdoZW4NCj4+PiBhbGxvY2F0aW5nIGEgZG1hLWJ1
ZiB0aGF0J3Mgd2F5IGxhcmdlciB0aGFuIG5lY2Vzc2FyeS4gSWYgaXQncyBmb3IgYQ0KPj4+IGNh
bWVyYSBtYXliZSB5b3UgbmVlZCBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMgbWVtb3J5LCBidXQgaXQn
cyBhbHNvDQo+Pj4gcG9zc2libGUgdG8gc2V0IHRoYXQgdXAuDQo+Pj4NCj4+PiBodHRwczovL2Fu
ZHJvaWQuZ29vZ2xlc291cmNlLmNvbS9rZXJuZWwvY29tbW9uLysvcmVmcy9oZWFkcy9hbmRyb2lk
MTQtNi4xL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jIzM3Nw0KPj4+DQo+Pj4N
Cj4+Pj4gVG8gYmUgaG9uZXN0LCBJIGRpZG4ndCB1bmRlcnN0YW5kIHlvdXIgY29uY2VybiAiLi4u
aG93IGRyaXZlcnMgc2hvdWxkIGJlDQo+Pj4+IGFibGUgdG8gZnVsZmlsbCB0aGlzIHNlbWFudGlj
cy4iIENhbiB5b3UgcGxlYXNlIGhlbHAgZXhwbGFpbiBpdCBpbiBtb3JlDQo+Pj4+IGRldGFpbD8N
Cj4+Pj4NCj4+Pj4gVGhhbmtzLA0KPj4+Pg0KPj4+PiBSb25nIFFpYW5mZW5nLg0KPj4+Pg0KPj4+
Pj4+IFRoYW5rcw0KPj4+Pj4+IFJvbmcgUWlhbmZlbmcuDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
