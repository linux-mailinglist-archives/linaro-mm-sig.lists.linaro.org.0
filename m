Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NIxCBmbFGo0OwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 20:55:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5735CDD7C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 20:55:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15005401B7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 18:55:19 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013007.outbound.protection.outlook.com [40.93.196.7])
	by lists.linaro.org (Postfix) with ESMTPS id 046A4400FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 25 May 2026 18:55:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yzyHOPby;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.7 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=POBApI3OJ9wGx/ItI/I689BALHHkO8B+Z7EjT0BeKNyCfg5xuCAARePbSKgWWL62dckHJuXHufwR1o+p4X90o0OTGml6ksnMt/l6w3rq84k3sD1u8ZJx1pwDo1BPK1tsE9h1je4OJFr/xzv5qxp81CHwCEdQHXOLJngeReqQIyzW7WZSZ4KwWdgAzjdW3GM7ZzVBUzSy4dueBnz6Bni12tWdrs1s09jSRsvvcGo+Kw9BP+X24eX2xgdW6VXkTX91q9d65ay79xGiZ/Ceg76Yk5VZOMKDE+IYQzz22V3oJe6eufWBOtMWByUzwtaRa1KQgKeHUppO86zfqsiCRISgig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l9hZCrlrXqhHs8WlMeU6jvwNDDJNIX5yhs/sQ7sjSPM=;
 b=BoZFE6ngmOEgFAlb5TcT4ZAAKlkRYEN3wHI7FDiVOrpPP5L+lbFSoRTw0rW4Ml0oUMZQuZgw9tzWpJAuDRqZKf0X1sfhSi9b/xD1mVwMEmS6G0vxxr+CCxDCYaoQf1GPw9WEF7Hd+ge60BaDqYV9qefamnVLHQm21L0jF18aVjdGGfQVYg1G/RoVvF4CnyUvz/XCwfg9mCn4RtHmzVmGalIpCvGPjc98LcDVPiazbOZT/59nhJHkIS++Rw783TvtceUIG/7f/m8iPl8cf0KdbG0HDj8vC9cdooXFMHWfZ4z5Z/TUMVLT0/DH/wbaC35WOyMkXSdPO6FM4TE2gSB0zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l9hZCrlrXqhHs8WlMeU6jvwNDDJNIX5yhs/sQ7sjSPM=;
 b=yzyHOPbyWAX9w+yr/4SgP/zgKcxvO59fdLcQwqvalHU6s5bx62i12qUU0O95phv48D0e6xy7tQpE+MiXWyhSpG8hgEorOfAdTn8Ro1nVpT08GR0pDJY9YBckFwwoWMwX/FAunBV+D9jVgAGLfXXT9i8BG9TkWennmSQyFdKkC00=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB8740.namprd12.prod.outlook.com (2603:10b6:a03:53f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Mon, 25 May
 2026 18:55:00 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0048.016; Mon, 25 May 2026
 18:54:59 +0000
Message-ID: <ae16f5c2-c6d9-4274-9a27-f87bfe931b1f@amd.com>
Date: Mon, 25 May 2026 20:54:55 +0200
User-Agent: Mozilla Thunderbird
To: David Carlier <devnexen@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20260523181446.69525-1-devnexen@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260523181446.69525-1-devnexen@gmail.com>
X-ClientProxiedBy: FR3P281CA0113.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB8740:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a10d7d2-d65c-4bdc-917a-08deba8f1eef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: 
	lu+rO9mrlAPlCymjKLNmrMl0aqWcB/2J7fgbzF7cx31SSq/DCSpqnD1hHuXQ5lwuu+Z0E8QaIBRmBDE57XI/snCaMaU+VYVyjVPtjHO66hrl7GEcrIFtNXrvKji6ORTmfVqg1H/m14zpOdK9PDuQe4XPGDLI7eZ0Ln2zQ0SeHwYmW93niUdfTNJn1ex5/PB+bnXZPVc1NNo5q0ptcN45awMIwm1XuZKv6vDl2cPT8DuwqQhyQfShjdH2rt9zJRrvQbCz4mGXRdjP3TjPOV1fcM+J5897pYxH2nbpIv0UCOAdgt2iZIh9bR+nPwdPIvyV3cF8ysmJ0ZMoFzdrIwxMQhDqNS2d+p4BJpwrkZOzhrwniM0BEhalwDBtp3cJ567i+3h6yQrvh/KtCt+48XaYy+N05+oV/NHjgnZ/c9XfEc1ukabA17URApmesmpEvMIqd6vngI5MXrE+XtXYwKIfQFaaDIwkA/6F8kqCjDJdgzfSSzISNq5CloMM5xKDuft0odOV6bV8QGz7u4roPMwsTeChPyg8FVhcSkln60otmvabSRY19niISbzCbpbWkbn1OLpJtFUWSir340aHo9EZJIvzy7fBynZkMCAhEjf0QE70F3mKNRDTxW2T8Vqkqg57qi1sW94FBFHDY+DgZSaZKg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003)(11063799006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UXM1aHRWcGx4Qm11VlNvZ3N6WSthQnUvQVZPZ0NyTmJvcnlkdGlXTHR5RnNz?=
 =?utf-8?B?WVlxWkdiRVNxcitSMWhvd2NQVkVSVERsOGNMNkFNNENZaTFFVDh2bGRHQUl4?=
 =?utf-8?B?Q0lMOG80VzkvenZwekk1d0llMjg0L1Z3QUhLUS9rNkVQM0hNNU55N0pKTmRo?=
 =?utf-8?B?Y3BGQ0RpTXJYMDRxN0QxNHZkTTFCL000b0MrZyszaTFzZk9HcHRpN1UwWmVh?=
 =?utf-8?B?Smw4QXNoSkd0dXQzNkdUYzFsSFpyR1A3UGNwd01UbFBEWlNUUjlYMkFyOW9Q?=
 =?utf-8?B?L2Q2TkNlZ0VpQ2QwTlEvTnJBWjBWODRvYUJGVDBPN2ZHaGZtc09LaG8xc01l?=
 =?utf-8?B?ZDhYVVhVbFg5RldhdXYyNFgxZ3VLTVFaTXBhQURReUczSWJRVkJnQlh3bU1i?=
 =?utf-8?B?c1p3ZUF1YUlSQzdTZDMrMWhKSkJydXVKcktOS1JLelhCbjFzWkxVaHhTSDB3?=
 =?utf-8?B?L2NHS1c4VndlNkgweTFUaDdlWFJNbFk3alZ5R3B3OCs3dUR2UHlvMUh3UVho?=
 =?utf-8?B?ZDdOSXVHRlBPSVYrRGtrYWtyNmhyZTF0OENhYzJwMnNlMC9MaGFwYjZXRjlv?=
 =?utf-8?B?aEtoczFrNk1lNU5WVUo0eHJPdTNhNlZsS0ZISEdIZkdDVjdkSWFZK1ZQbDdZ?=
 =?utf-8?B?aVhtbDJFSnhuRTVWeVBPa1VYamxZYjB3QnJ4Wm9Ud0Y3OGxjZDlJUFhTNmJj?=
 =?utf-8?B?RGw0Q2tnOTNJV29iOWNjZjQzaUg0dElRdjZNVmZEcGV5djgvRlZWbzczL0d5?=
 =?utf-8?B?NzBKWmdVZ3pPMVRySVN1T2JRVEwxL1h1dTdtVyt3UWVTZjFxajM4cEg4ejli?=
 =?utf-8?B?bjczVUtDbGpBeWJjYXVMYmR6VUZVNlAzbzVtRnVPOGdRSmpqZkxUUjlaZ0Zo?=
 =?utf-8?B?K3EyTmwxT2tWTGsyaVphWi93K3drWTVSV1dZM3pJYXFZOWhka3pwTGxST3pL?=
 =?utf-8?B?eGlyZkxJblVUYTB0Uk1nczRWWjhFZ3lhOEJJdXVueVFzNVBpUjQvVVM5N1dR?=
 =?utf-8?B?TGVWU1hndTlwcnhHdEUyVngxZGU5Rys5WStOaHQrWERGUFA2T3RNRHJVblJ2?=
 =?utf-8?B?N1hYOW10T2NETHRFQjJqOElpUFBDNjhGK3lPUTFtbTh4eURmVVB5ZSs2YThT?=
 =?utf-8?B?QWxiSFdDQ3IyeVp6VjJiZXBRV0VRMUJjSUdHalpwa1JjNXkrVS9ERGtVdzg2?=
 =?utf-8?B?VXpDTmFIKzM0MUdORThlbkxwM2dRWGdFSkcvK2NOSDNwWThiRHhEdzQweVY4?=
 =?utf-8?B?dTVHcFhzZlhWUHUyRTJKa214TlVGWjRBaGR3cGUyK3ZQd0d3cDV0aTdBL2Vz?=
 =?utf-8?B?ejhPcDljWldlcmNWdVBaSk9tQWFKejdFSGdxMDdjQkdZc3NGVVloNitJWnlC?=
 =?utf-8?B?eVg0V0NJOFJ6Y2U3MlU1SDFMY0ZrSU9lRjRLZGZIdDRaWHk1UmhJSTNpdmRq?=
 =?utf-8?B?blhLc09HenN0dTgrakFHV3FVbVgwOXdwLzdUaW5uVHV0WGU5UVErN3NnRDBr?=
 =?utf-8?B?UWJkTFJiMFVUWWp4NnJqMEczUFJqY1cwVUxET1dUNEp2MkhTamppQUc0ZjEw?=
 =?utf-8?B?MDJTaXBpZFdhRnF1WlBCc0U5ZzJ1cHlHOGxvK1lURFU0Qng1d09CVm5qWmtF?=
 =?utf-8?B?WVNsM1VoUi9wcFpORFBBZW1yc01HMUhTV3JEYkUvNWgwR2ZPK2pIcmZqbXZ6?=
 =?utf-8?B?bVB2OEU5eVk5Q2JDV1QxK1FRdUIwV1N1VENDdjMyTy9jTG9PTzJ1elUwRVl6?=
 =?utf-8?B?V3BjL2pRYi9Tb2xZR3ZHSy9WalZFM2xEZUpRREhJNWRjdElLR1d2bjI2QUp0?=
 =?utf-8?B?emFQdDNyT3BBWkMyd0ZTeVJmM0tVVE9BeEdGV3psUDRQMjh0U2lvRUFPNWNO?=
 =?utf-8?B?eUlnbml0UElaQ0VaR2NOVUQyQy9BMW1NOTZpUmxkUVJyR0lFMTYyZlR2WGRr?=
 =?utf-8?B?ei9lQ1lTRUFmMENNdTZjb0pwTDhnVGZ4TVFEazlXeXpwanpvTWsxbGN6ZjFV?=
 =?utf-8?B?M3FOY1I1YndjMlVZNEY0ZktRcVE0TUxwdjZXblFrbjR5elNBVXFrRWNIYVpB?=
 =?utf-8?B?QjN2b3dKYlZYWHZ2Sko4Qzl2VGRiOG0ra09kUVdGMjJ5bGUrV2tOMlpLNXFE?=
 =?utf-8?B?Tjd3WkZaYmdqaHRUUStSdVVEeGMwUy80NDJuOXZ1TElrbVNjSkZsNG1Uc0Iz?=
 =?utf-8?B?eEJRZWo3bVl1M2tUQ3pkazU3akVhYkN6VGhrWThzS1RmT0dPVnBRV09qMFJj?=
 =?utf-8?B?VGlIN2pPcmQvWXArSnlMbm81UXFRSS8wOHBwUFg0Wlo4a3dpMXRlVitYcFhy?=
 =?utf-8?Q?BGyj4BIlBRSJ/UjLMR?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a10d7d2-d65c-4bdc-917a-08deba8f1eef
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2026 18:54:59.7657
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1fh4wJ+WPAgKSXTZmGDVXvlwFKZ9dg8QAgTUeCpRNdREvXZYUIYyNJTXNujYmHe2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8740
X-Spamd-Bar: --
Message-ID-Hash: 3UDNMPKSCQ3DNDJSCQE4LDJIRNMMSYU6
X-Message-ID-Hash: 3UDNMPKSCQ3DNDJSCQE4LDJIRNMMSYU6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gaoxiang17@xiaomi.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, syzbot+7f4987d0afb97dd090cb@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix UAF in dma_buf_fd() tracepoint
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3UDNMPKSCQ3DNDJSCQE4LDJIRNMMSYU6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,7f4987d0afb97dd090cb];
	NEURAL_SPAM(0.00)[0.581];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9A5735CDD7C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMy8yNiAyMDoxNCwgRGF2aWQgQ2FybGllciB3cm90ZToNCj4gT25jZSBGRF9BREQoKSBy
ZXR1cm5zLCB0aGUgZmQgaXMgbGl2ZSBpbiB0aGUgZmlsZSBkZXNjcmlwdG9yIHRhYmxlDQo+IGFu
ZCBhIHRocmVhZCBzaGFyaW5nIHRoYXQgdGFibGUgY2FuIGNsb3NlKCkgaXQgYmVmb3JlIERNQV9C
VUZfVFJBQ0UoKQ0KPiBydW5zLiBUaGUgY2xvc2UgZHJvcHMgdGhlIGxhc3QgcmVmZXJlbmNlLCBf
X2ZwdXQoKSBmcmVlcyB0aGUgZG1hX2J1ZiwNCj4gYW5kIHRoZSB0cmFjZXBvaW50IHRoZW4gZGVy
ZWZlcmVuY2VzIGRtYWJ1ZiB0byB0YWtlIGRtYWJ1Zi0+bmFtZV9sb2NrDQo+IC0tIHNsYWItdXNl
LWFmdGVyLWZyZWUuDQo+IA0KPiBTcGxpdCBGRF9BREQoKSBiYWNrIGludG8gZ2V0X3VudXNlZF9m
ZF9mbGFncygpICsgZmRfaW5zdGFsbCgpIGFuZA0KPiBlbWl0IHRoZSB0cmFjZXBvaW50IGJldHdl
ZW4gdGhlbS4gV2hpbGUgdGhlIGZkdGFibGUgc2xvdCBpcyByZXNlcnZlZA0KPiB3aXRoIGEgTlVM
TCBmaWxlIHBvaW50ZXIsIGEgcmFjaW5nIGNsb3NlKCkgcmV0dXJucyAtRUJBREYgd2l0aG91dA0K
PiBlbnRlcmluZyBfX2ZwdXQoKSwgc28gdGhlIGRtYV9idWYgc3RheXMgYWxpdmUgYWNyb3NzIHRo
ZSB0cmFjZS4gU2FtZQ0KPiBhcHByb2FjaCBhcyBjb21taXQgMmQ3NjMxOWM0Y2JiICgiZG1hLWJ1
ZjogZml4IFVBRiBpbiBkbWFfYnVmX3B1dCgpDQo+IHRyYWNlcG9pbnQiKS4NCj4gDQo+IFRoaXMg
dW5kb2VzIHRoZSBGRF9BREQoKSBjb252ZXJzaW9uIGRvbmUgaW4gY29tbWl0IDM0ZGZjZTUyM2M5
MA0KPiAoImRtYTogY29udmVydCBkbWFfYnVmX2ZkKCkgdG8gRkRfQUREKCkiKTsgRkRfQUREKCkg
aGFzIG5vIHBsYWNlIHRvDQo+IGhvb2sgdGhlIHRyYWNlcG9pbnQgc2FmZWx5Lg0KPiANCj4gUmVw
b3J0ZWQtYnk6IHN5emJvdCs3ZjQ5ODdkMGFmYjk3ZGQwOTBjYkBzeXprYWxsZXIuYXBwc3BvdG1h
aWwuY29tDQo+IENsb3NlczogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlk
PTdmNDk4N2QwYWZiOTdkZDA5MGNiDQo+IEZpeGVzOiAyODFhMjI2MzE0MjMgKCJkbWEtYnVmOiBh
ZGQgc29tZSB0cmFjZXBvaW50cyB0byBkZWJ1Zy4iKQ0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZyAjIDcuMC54DQo+IFNpZ25lZC1vZmYtYnk6IERhdmlkIENhcmxpZXIgPGRldm5leGVuQGdt
YWlsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA2ICsr
KysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IDcxZjM3NTQ0YTVjNi4uZDUwNGM2MzZkYzI5IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMNCj4gQEAgLTc5Miw5ICs3OTIsMTMgQEAgaW50IGRtYV9idWZfZmQoc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1ZiwgaW50IGZsYWdzKQ0KPiAgICAgICAgIGlmICghZG1hYnVmIHx8
ICFkbWFidWYtPmZpbGUpDQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gDQo+
IC0gICAgICAgZmQgPSBGRF9BREQoZmxhZ3MsIGRtYWJ1Zi0+ZmlsZSk7DQo+ICsgICAgICAgZmQg
PSBnZXRfdW51c2VkX2ZkX2ZsYWdzKGZsYWdzKTsNCj4gKyAgICAgICBpZiAoZmQgPCAwKQ0KPiAr
ICAgICAgICAgICAgICAgcmV0dXJuIGZkOw0KPiArDQo+ICAgICAgICAgRE1BX0JVRl9UUkFDRSh0
cmFjZV9kbWFfYnVmX2ZkLCBkbWFidWYsIGZkKTsNCj4gDQo+ICsgICAgICAgZmRfaW5zdGFsbChm
ZCwgZG1hYnVmLT5maWxlKTsNCj4gICAgICAgICByZXR1cm4gZmQ7DQo+ICB9DQo+ICBFWFBPUlRf
U1lNQk9MX05TX0dQTChkbWFfYnVmX2ZkLCAiRE1BX0JVRiIpOw0KPiAtLQ0KPiAyLjUzLjANCj4g
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
