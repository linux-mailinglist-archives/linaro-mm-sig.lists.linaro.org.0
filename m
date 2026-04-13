Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MqaFbCS3Gl9TAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 08:52:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B49203E7F63
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 08:52:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36200404A5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 06:52:30 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013017.outbound.protection.outlook.com [40.107.201.17])
	by lists.linaro.org (Postfix) with ESMTPS id 995B43F8E9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 06:52:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=QB9AEWyF;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.201.17 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PvySxG2De0i+xyC1YihMdxMD+wwtllvl3A7Nj5j9P8Ih25+Vef1uOlzsrlRzqIsNiEBRizX1UQHPjq+B+MWkMRz6+iSlsNf/b2AxbSvw2UNYXHNOI+oYPn//vtRaH10vDCT4z/xfBfg/tx/wiGxFOd7k4kD0MfD2MV4T2+vH/ANHQN3bQAI3B1yb5xCs/mOrnnQ3yRx4nB0dxPY0P3FAM3XhngFpBzRWCyFAOuydG6QVF1EmHNDfZvWLVN2hkoPOYQDlc4qBbbLhrX4FybUJjGIZriA4VBMuQZ/OEuEz67aA+qH0HvcJAc/af0RcACHcAJ2xr0H3prN998G+R+0tlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xq9ivFJVIK9NV7J2Rzdw42G7qz9FFimow6a34CM/Rtc=;
 b=lpxqT0UmCvh/6mntrGYM+qxBPtKkqyDnlCAt91L+jKEmT6nTvj74sj2xEXWCQADdPm7qXwCB+RN3ZVe9roqmEtLIb/bV4L+YY6yGX8ju+nN8rNO1b1vHS50Hx/2roi3Gs1s5PwT7AURdLj6YfOff5PXegHDPxkY5Kxs0ZRJL4eaC/TS7XMt1FGGfCdcKFQkApL1nihN5tqmfsfLVhQT2rkuMiXqGwzUo/mG/0r7Hn7gdDqjzW4FXpOwoxy1Jp/6CHfS32ntVPo+5OtxXLLPTaN0mOxg1duDDFdV0RfosgLNUb3QFufLLGEwON8ecwFnz1WA16yEA4U8YXGgEUEYwWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xq9ivFJVIK9NV7J2Rzdw42G7qz9FFimow6a34CM/Rtc=;
 b=QB9AEWyFTiz1WKiRxf/N/NXOVTjfjxMnKv/oxk455b8KumkF4v4/lJ/OF2xPeCVwjfdSPjrzMdN35a9NzoNYDsiutlg9wBKub3eeFrd9xeXwvpqkW/CC1m5B7op4yD9/tAYLVRp2vJjPuQJWMF/Hby9qOLGS+uR3yzKSB3XKTio=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CYYPR12MB8855.namprd12.prod.outlook.com (2603:10b6:930:bb::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.47; Mon, 13 Apr
 2026 06:52:25 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 06:52:25 +0000
Message-ID: <c09d9dc1-43d1-4d7a-93ef-9707f282ad07@amd.com>
Date: Mon, 13 Apr 2026 08:52:21 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
References: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
 <20260331094944.772833c0@fedora>
 <918805b0-2cb9-454a-9048-84cc5bfc8798@igalia.com>
 <2fae926b-a25b-42bc-ab63-caf36505b33d@amd.com>
 <601a78ea-74e7-4b20-afeb-d822a362484a@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <601a78ea-74e7-4b20-afeb-d822a362484a@igalia.com>
X-ClientProxiedBy: FR0P281CA0173.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CYYPR12MB8855:EE_
X-MS-Office365-Filtering-Correlation-Id: a55c013d-5c4d-4321-8c5a-08de9929380d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	2FzGcz3o4FW/qHbgkRIdQh9fWDy4EvSQWu2BWlSNm1ZGOvltNmS6yysDucgR/6Nf/Jd2EgSOHzw3MUmbfSYSfltK9zbf0kl7IY0wTxLY8JV3uD6dlcYuMAoHKyhtH/QShb9o7W76Vke6V6iOMm12OTqPpcj2n8nrPcELH6j+9Boonp5jgq2XtJiom/D8FB7lXJdkSueBuseU/uuBo2rBysHLmn+/zDtgY+DJWbsEQzEulhnuHObPrDMe5zJTqkD8ukbZ+oMVSL7aZPxIDR2J5DLDbNNFO0jfzEPjcgvWL0iIvTNah4QTGKfOcKVo54OqNSRmnhzO/61YrldufIdIwt5Y2rezid0cDyz785rheW6aL1WmxdqBKZ9uN9yohYVajzrGQbzkyoE6hatBQpKYNbZuG8son4INjwVGsdaVNckpzh6sR5sanRD1I/LmvXEGLSdDv0xc0PEvhg0K+Z4+Xg51UFuTDUfOZXL/xnJAs0Tw3TU3C1EVfdp/XDLnOxywknfh1AwWUxgGTow6aUfAu+711surrqko2O16ELRb2KxzeXU5KsuhTT3DQ4orSUZA+1c9kbjoyuBsd1EfyxEyMXlEKGd70sfOW0wrfU/t9JD9K7nCGJf0KbTGYAOpt8ALDPAZlfeyp2gC1wq4+1pA+nHMDIZnf6Rd1PcpeSHsVyPA4szxBJpVbJaYuSIwN7mhzuaJHnlj6QdvWsgEzJSRZ4oePJn05hDnLaoQcEdb3nA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YmwzQndCQTlXSmhxcHVmd1llUytDRmZDTVd2eUxtemU5VEN5SmFzSFdUblUr?=
 =?utf-8?B?RDFEUG9tNDJ2QXJ3Tk1BdHluRWlpd3F3c3hqc0tJaXVEUXBEUzgxMS9xOTVn?=
 =?utf-8?B?akNONWV5OUxDZFpma2hkd1h1SjNMT3BoMkRKVFF0dElMcGdaZTJUdFVYK0hs?=
 =?utf-8?B?OFQrNGQ2UW5vR1BDY0lYdHF0NjA3U1c5TFdBaE5MOEZaMnFLUmxOOGV2bHhu?=
 =?utf-8?B?aHNEWUg1UjJNSnBJSE11SU9FcmJhcTNSNjBRL2Q3V0hzdVh0eTY1bWR3U2Qr?=
 =?utf-8?B?OGhKVllhK3pqcFAzSXBqL0VGN3RNTGkvb2ZIK01lSGN4UE5PNE9walQwWjhh?=
 =?utf-8?B?cGZUNHpJQ2EvUGE2aUtnbkpUYUZmS0dlaXArWnB6MWZXOE04bDlReEFodFRB?=
 =?utf-8?B?UWZrUUpBYWE3aWJGUzZWdHVGT2dyblB5eUZKeXRkd2Jkd1UxM1JzUktHUU1B?=
 =?utf-8?B?WTBRZTIwTG02cjBuVnVablQremVrWkI5RzBlbUZPdDhmUzFTRGZEejJ2djdS?=
 =?utf-8?B?dWxweFlqUlBTaUwrb1VsVDBuYkR3RkRVMlRNSE1BTWVBNjNLaWlERmd0RzdL?=
 =?utf-8?B?TkQ5c2g2V0ZJYjlkSmsyaU1EYnBnLzM3TDhCSGJ0WE82RlpXOEk2OTJDa3py?=
 =?utf-8?B?Y2t6WkhBRFFGaStXQUlObGtKMTVRcW94SmsxdmxoN3dLam1lRGxDd2ZQMWZR?=
 =?utf-8?B?K2d3MVpBaWFSVTVsOXFRcCs1eVhnMVRJaHpzSHlBdWp4RyttSXpTTVZ5TTMv?=
 =?utf-8?B?RWV5TXc5bENWVkliQW95cVNQb28vbitXY3IxdVpEMXcxdFdIVlY2a2ZkZ3p5?=
 =?utf-8?B?TUc4TzVSZ1JVRVRpTE0zUGZLTytSdXlncXVlS2V4djdzUjU2MVdLdlJSZGM4?=
 =?utf-8?B?UGdqMnJ0bWtIRlpacndJaXpxZjNSUFlyaVEySVA2dkI4VkxOamtmVU1wYVNG?=
 =?utf-8?B?eWM4S1dYc2lERkg3R0tySjB5LzFXMlNDMlVRc0FpcnlBTGJhTGxlZmFoK1BJ?=
 =?utf-8?B?a0VCWWVqcWdRMHM3OW11L25hM3JnaWtqMWxsS3dHWEhxMXdWY2FWRjV2R3Bn?=
 =?utf-8?B?bW0ySGdHeHZma0FnV213VTQrTWJDVnFlZHlXb0xWZFROd1RtRjNTdUpDYkxU?=
 =?utf-8?B?b1pTYzNMUGpaMTZVTXpoN3VkTzVYNzRDZS9mR0VUTTBGUDJyTVJwQ3BmS3l6?=
 =?utf-8?B?SVQ4alc1T0Z0bDQxakdpeTFiNGpvRVNoM0NudG1BQXI5eWNXNjhiQWpwMFpT?=
 =?utf-8?B?NWovbDNzK3BMNXVJOHRxWHNzV1phK0tDMEZ0Z2dTdVdDK1g3K0RTcklJK3ZN?=
 =?utf-8?B?WVNyQWE2NldCMTQ0VWRtQngxdDVCQ3E2WTR3RzdWZ2FWWVFXK2E0R2VzWXBo?=
 =?utf-8?B?NXUrc3Bwamh3TVEwdnNsUEw3eTkzN2Vid3JNUmFBd1ZWWDhzNEgyenBjRDhH?=
 =?utf-8?B?RWhhWEhHa2VrSmZoMzFRMGlFWHVwZnVtalZqcnM5OHRLb1o2YVJqdFp6SVlK?=
 =?utf-8?B?ZXpKc3o2T3MyNDJ1cWsyZUZmdzRyTVlkNVF1QWRzd0RvdHpCQXhFbWN1RUdL?=
 =?utf-8?B?TGxTenQ3ZlQ3WkNuZHkyQk9IU2pxbHpPYjdWNGtMcGgvRUtqcDNKYXBFZUU3?=
 =?utf-8?B?b29sTVlLbVBqRklQY0gyRTJ4b2xxY3VQR0VVVUhsOGhuV3BPNU9xU21PdU1E?=
 =?utf-8?B?Z3FVL0tQN0w3NCtsa3ZtaHBiVTg4elJza0I0M1JqUzErdFJiVUdJYjVxVnpm?=
 =?utf-8?B?elMyYlBvb2ZiNkIyam05OXZ2Q0ZmTmRaOS9XbXJIWDZrTGlBQUdsdmM5UVpY?=
 =?utf-8?B?MHJ3TFE1NTZ4UDFFdkRGZXpkcFNHN3hPZFg3VXBWdndXbnBDTE5JbUpuSG8y?=
 =?utf-8?B?Vkl5ZGtTOTBzdWdDbmN6N2dLbUVvMFVzbENac2t1VzJhYS9GMUhYNGF6eU03?=
 =?utf-8?B?dDlkOUFYS2wyTUVtZGhqUllLRklLM21yRlFndUY5YnNhT2ViTENZSmZ2MXkw?=
 =?utf-8?B?a0ZmSURhS0xuWEdCUkxqaC9sMngzTklYa1gwb1c4bTk1V0EyUWxGMmFocG5l?=
 =?utf-8?B?VG4zQll4TG5TN2UxcXozSkdRNE9PZnZ4OTJSTUxqTjBaRk1MTHRGVjdLSFAr?=
 =?utf-8?B?UWc5MlNOa3dxU2VYR0pRZktKZjVOZ2sxNGxoV1h2SjNLRHdUOEVJYldHZVlE?=
 =?utf-8?B?NVhzWUNoZVE4K3BIN0xEQ3puY1Z4UHVEaVgvVGNZcStuM0xra1k0ZUcrcjUr?=
 =?utf-8?B?dzJEb2hxZ0xoWlEwREY5ODRnTDZmUEFCMnJSRENXV2NIMTRHd05UQTYzYWFp?=
 =?utf-8?Q?Tg0DdQWcBxW+yp5T6a?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a55c013d-5c4d-4321-8c5a-08de9929380d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 06:52:24.8910
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RCr+y7DK2GR35zpivyXzKqdUfkkydWhXA5bgHYZAuB0UY4KunV3vvE8Hcg4lsbdR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR12MB8855
X-Spamd-Bar: -----
Message-ID-Hash: 2K73TIBZ4TDWF7AL45SVLRTGKLWBFJVO
X-Message-ID-Hash: 2K73TIBZ4TDWF7AL45SVLRTGKLWBFJVO
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Move signalling tracepoint to before ops detach
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2K73TIBZ4TDWF7AL45SVLRTGKLWBFJVO/>
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
	NEURAL_HAM(-0.00)[-0.673];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: B49203E7F63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8xMC8yNiAxNzozNywgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IA0KPiBPbiAxMC8wNC8y
MDI2IDA5OjU4LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gNC85LzI2IDE1OjU4LCBU
dnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+Pg0KPj4+IE9uIDMxLzAzLzIwMjYgMDg6NDksIEJvcmlz
IEJyZXppbGxvbiB3cm90ZToNCj4+Pj4gT24gTW9uLCAzMCBNYXIgMjAyNiAxNDozNjoyMyArMDEw
MA0KPj4+PiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4gd3JvdGU6
DQo+Pj4+DQo+Pj4+PiBNb3ZlIHRoZSBzaWduYWxsaW5nIHRyYWNlcG9pbnQgdG8gYmVmb3JlIGZl
bmNlLT5vcHMgYXJlIHJlc2V0IG90aGVyd2lzZQ0KPj4+Pj4gdHJhY2Vwb2ludCB3aWxsIGRlcmVm
ZXJlbmNlIGEgbnVsbCBwb2ludGVyLg0KPj4+Pg0KPj4+PiBJIHN1c3BlY3Qgb3RoZXIgdHJhY2Ug
cG9pbnRzIGFyZSBpbXBhY3RlZCB0b28NCj4+Pj4gKHRyYWNlX2RtYV9mZW5jZV9kZXN0cm95KCkg
aXMsIGF0IHRoZSB2ZXJ5IGxlYXN0KS4NCj4+Pg0KPj4+IEluZGVlZC4gSSB3b25kZXIgd2h5IHRo
YXQgZGlkIG5vdCB0cmlnZ2VyIGZvciBtZSwgd2hpbGUgdGhlIG9uZSBJIGZpeCBoZXJlIHdhcyBh
biBpbnN0YS1jcmFzaC4uLg0KPj4NCj4+IFlvdSBuZWVkIHRvIGFjdHVhbGx5IGVuYWJsZSB0aGUg
dHJhY2UgcG9pbnRzIGFuZCBhdCBsZWFzdCBmb3IgdGhlIGRlc3Ryb3kgb25lIG5vYm9keSBpcyB1
c3VhbGx5IGludGVyZXN0ZWQgaW4gdGhhdC4NCj4gDQo+IFJpZ2h0LCBidXQgSSB3YXMgcHJldHR5
IHN1cmUgSSB3YXMgZW5hYmxpbmcgcGVyZiByZWNvcmQgLWUgJ2RtYV9mZW5jZToqJyB3aGVuIEkg
aGl0IHRoaXMuIEFueXdheSwgaXQgZG9lc24ndCBtYXR0ZXIsIEkgY291bGQgYmUgbWlzcmVtZW1i
ZXJpbmcuDQo+IA0KPj4+DQo+Pj4gVG8gZml4IHRyYWNlX2RtYV9mZW5jZV9kZXN0cm95IEkgdGhp
bmsgd2UgbmVlZCBhIG5ldyB0cmFjZXBvaW50IGRlZmluaXRpb24gaWUuIG1vdmUgaXQgYXdheSBm
cm9tIHRoZSBleGlzdGluZyBldmVudCBjbGFzcyAtIG1ha2UgaXQganVzdCBsb2cgdGhlIGNvbnRl
eHQgYW5kIHNlcW5vLg0KPj4+DQo+Pj4gQW55b25lIGhhcyBhIGJldHRlciBpZGVhPw0KPj4NCj4+
IFRoZSBpZGVhIG9mIHRyYWNpbmcgd2l0aG91dCBhY2Nlc3NpbmcgZmVuY2UtPm9wcyBzb3VuZHMg
dmFsaWQgdG8gbWUuDQo+Pg0KPj4gQWx0ZXJuYXRpdmVseSB3ZSBjb3VsZCBjYWxsIGRtYV9mZW5j
ZV90aW1lbGluZV9uYW1lKCkgYW5kIGRtYV9mZW5jZV9kcml2ZXJfbmFtZSgpIGZyb20gdGhlIHRy
YWNlcG9pbnQgYXMgd2VsbCwgYnV0IHRoYXQgbWVhbnMgdGhlIHRyYWNlcG9pbnRzIG5vdyByZXF1
aXJlIGEgUkNVIHJlYWQgc2lkZSBsb2NrLg0KPiANCj4gV2UgY291bGQgcG9zc2libHkgdXNlIHRo
ZSBoZWxwZXJzLiBJIGFtIG5vdCBzdXJlIGlmIFJDVSBhbm5vdGF0aW9uIHdvdWxkIGhhdmUgdG8g
YmUgY2FzdGVkIGF3YXkgdG8ga2VlcCBzcGFyc2UgaGFwcHksIGJ1dCBtb3JlIGltcG9ydGFudGx5
LCBJIHRoaW5rIGl0IHdvdWxkIG5vdCBiZSBzYWZlLg0KPiANCj4gwqAgdGhyZWFkIEHCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aHJlYWQgQg0KPiANCj4gwqAgZG1hX2Zl
bmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3RpbWVs
aW5lX25hbWUNCj4gwqDCoMKgIC4uwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFkbWFfZmVuY2VfdGVz
dF9zaWduYWxlZF9mbGFnKGZlbmNlKSkNCj4gwqDCoMKgIHRlc3RfYW5kX3NldF9iaXQNCj4gwqDC
oMKgIC4uDQo+IMKgwqDCoCBSQ1VfSU5JVF9QT0lOVEVSKGZlbmNlLT5vcHMsIE5VTEwpOw0KPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIChjb25zdCBjaGFyIF9fcmN1ICopb3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpOyAvLyBP
T1BTIQ0KPiANCj4gQXBvbG9naWVzIGZvciBsb25nIGxpbmUgbGVuZ3RoLCBpdCBkaWQgbm90IGZp
dCBvdGhlcndpc2UuDQo+IA0KPiBMb29rcyBsaWtlIHdlIG1pc3NlZCB0aGlzLiBPciBpdCBpcyBt
ZSB3aG8gaXMgbWlzc2luZyBzb21ldGhpbmc/DQoNClNlZSBmdW5jdGlvbiBkbWFfZmVuY2VfZHJp
dmVyX25hbWUoKSBhbmQgZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoKToNCg0Kb3BzID0gcmN1X2Rl
cmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KaWYgKCFkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFn
KGZlbmNlKSkNCglyZXR1cm4gKGNvbnN0IGNoYXIgX19yY3UgKilvcHMtPmdldF9kcml2ZXJfbmFt
ZShmZW5jZSk7DQoNCldlIGZpcnN0IGdyYWIgdGhlIG9wcyBwb2ludGVyIGFuZCB0aGVuIGNoZWNr
IGlmIHRoZSBmZW5jZSBpcyBzaWduYWxlZCBvciBub3QuIFNpbmNlIHdlIGZpcnN0IHNldCB0aGUg
c2lnbmFsZWQgZmxhZyBhbmQgdGhlbiBOVUxMIHRoZSBvcHMgcG9pbnRlciBpbiB0aGUgb3RoZXIg
dGhyZWFkIHdlIHNob3VsZCBiZSBzYXZlIGhlcmUuDQoNCkNvdWxkIG9ubHkgYmUgdGhhdCB0ZXN0
X2JpdCgpIGlzIG5vdCBhIG1lbW9yeSBiYXJyaWVyLCBidXQgc2V0X2JpdCgpIGlzIHNvIHRoYXQg
d291bGQgYmUgYSBiaXQgc3VycHJpc2luZy4NCg0KQWx0ZXJuYXRpdmVseSBJIHdvdWxkIGJlIGZp
bmUgdG8gc3dpdGNoaW5nIHRlc3Rpbmcgb3BzIGZvciBOVUxMIGluc3RlYWQgb2YgY2FsbGluZyBk
bWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKCkuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoN
Cj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KPj4+Pj4gRml4ZXM6IDU0MWM4
ZjI0NjhiOSAoImRtYS1idWY6IGRldGFjaCBmZW5jZSBvcHMgb24gc2lnbmFsIHYzIikNCj4+Pj4+
IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4+PiBD
YzogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCj4+Pj4+IENjOiBCb3JpcyBC
cmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPg0KPj4+Pj4gQ2M6IGxpbnV4
LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPj4+Pj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZw0KPj4+Pj4gLS0tDQo+Pj4+PiDCoMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
YyB8IDMgKystDQo+Pj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkNCj4+Pj4+DQo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4+PiBpbmRleCAxODI2
YmE3MzA5NGMuLjFjMWVhZWNhZjFiMCAxMDA2NDQNCj4+Pj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYw0KPj4+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+
Pj4+PiBAQCAtMzYzLDYgKzM2Myw4IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBf
bG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZmZW5jZS0+ZmxhZ3MpKSkNCj4+Pj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsNCj4+Pj4+IMKgwqAgK8KgwqDCoCB0cmFjZV9kbWFf
ZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0KPj4+Pj4gKw0KPj4+Pj4gwqDCoMKgwqDCoMKgIC8qDQo+
Pj4+PiDCoMKgwqDCoMKgwqDCoCAqIFdoZW4gbmVpdGhlciBhIHJlbGVhc2Ugbm9yIGEgd2FpdCBv
cGVyYXRpb24gaXMgc3BlY2lmaWVkIHNldCB0aGUgb3BzDQo+Pj4+PiDCoMKgwqDCoMKgwqDCoCAq
IHBvaW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ugc3RydWN0dXJlIHRvIGJlY29tZSBp
bmRlcGVuZGVudA0KPj4+Pj4gQEAgLTM3Nyw3ICszNzksNiBAQCB2b2lkIGRtYV9mZW5jZV9zaWdu
YWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4+Pj4+IMKgwqAg
wqDCoMKgwqDCoCBmZW5jZS0+dGltZXN0YW1wID0gdGltZXN0YW1wOw0KPj4+Pj4gwqDCoMKgwqDC
oMKgIHNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCwgJmZlbmNlLT5mbGFncyk7
DQo+Pj4+PiAtwqDCoMKgIHRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZChmZW5jZSk7DQo+Pj4+PiDC
oMKgIMKgwqDCoMKgwqAgbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGN1ciwgdG1wLCAmY2JfbGlz
dCwgbm9kZSkgew0KPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgSU5JVF9MSVNUX0hFQUQoJmN1
ci0+bm9kZSk7DQo+Pj4+DQo+Pj4NCj4+DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
