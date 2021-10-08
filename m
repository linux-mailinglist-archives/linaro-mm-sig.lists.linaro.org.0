Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F9E4267B9
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Oct 2021 12:24:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11D21618D0
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Oct 2021 10:24:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E962E61A22; Fri,  8 Oct 2021 10:24:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 150346194E;
	Fri,  8 Oct 2021 10:24:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B672161840
 for <linaro-mm-sig@lists.linaro.org>; Fri,  8 Oct 2021 10:24:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B42D16194E; Fri,  8 Oct 2021 10:24:18 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2041.outbound.protection.outlook.com [40.107.223.41])
 by lists.linaro.org (Postfix) with ESMTPS id 991C061840
 for <linaro-mm-sig@lists.linaro.org>; Fri,  8 Oct 2021 10:24:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=grzzX2bv/KOtFKvj8TcPDWaSCTdDlHIQTQoj3/SkUu648tuzEA6a3kth53d0I3iZBRJpYlVLSyH2RpuD1UQvFq+QW3iMTVvrwixaRq9fBQFS9cyDKqR8E74mOk8fKzauXw642uPB86h8ZBC4teRjNLqrDcUc83meb+lkNGENZWGnT3DGkF/akssjpll2YxK0rS2Xjsm3vXAnRfzUOgBs8X8w1hkXU16VlsajoGmx9oHByHWcQekbyTQOloG3TOPBiUwwCveHGkE1/wxy2sQbjxmR9MT6kZIONzUvLZrXYjbATdU8SS25Lr5kW0/Y55anznD7D4l2+hL24wcKoTJdPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CSgI1n9OX8M1wngxHyzalUPKmItZYwTszpp53TBTQJ8=;
 b=Fbw48/ue1eVLYoAzIMZNQWVZc9+QtUjrxhqmVE9vSdnTYxYPTHTKINNLTwU+Vsl+jBtZLc72s4TsBH5AycmG3KSNXLghE7/BJhZUEAZnKvI2V8z7FxtsrMBVfLsW2CAAdCzRA7m4JX8f2ZuwCWRW/zmYZQiPzWbF5fcvesEeU2OnRNosv1d7MmDAiwES6tmBK2/X0Yroh9/qFThtJDLLozYPGIX7k2J1znOtUX1c5JQFKpmnL3kHLZITQuOrp4QZ5VfXFUVmxvlghrSFX1zKKLfrZ/ELLdjkbV3Buz+3M+2VtlpKumAbZn1BrT3xuWfar8Gw7c/jrgUpoCJ8Zb1XuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CSgI1n9OX8M1wngxHyzalUPKmItZYwTszpp53TBTQJ8=;
 b=O20ZIc/nzZB86+qWJoPTspf0ia/JWBfO9tXMPcP5ZVOWO2Hgx+jM4ZoYaM5gdXiNP18UrYD4BHsEd5eQfHF88J5hv/DweusVpX5IUaJp04VT4UD5dJbstLNI8O3ZSFra14ow4d4PFzc3uRImcLZmthBCAeV6MqxhHOE0TbeKG4Y=
Authentication-Results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MW3PR12MB4457.namprd12.prod.outlook.com
 (2603:10b6:303:2e::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.20; Fri, 8 Oct
 2021 10:24:14 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::55c7:6fc9:b2b1:1e6a]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::55c7:6fc9:b2b1:1e6a%10]) with mapi id 15.20.4587.022; Fri, 8 Oct 2021
 10:24:14 +0000
To: guangming.cao@mediatek.com
References: <5b7cdb6c-45f2-6b31-bfdd-5cc68a2fda5e@amd.com>
 <20211008075420.42874-1-guangming.cao@mediatek.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <169957a7-302b-1de9-39b0-415c4675743a@amd.com>
Date: Fri, 8 Oct 2021 12:24:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20211008075420.42874-1-guangming.cao@mediatek.com>
Content-Language: en-US
X-ClientProxiedBy: AS9PR06CA0157.eurprd06.prod.outlook.com
 (2603:10a6:20b:45c::32) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [IPv6:2a02:908:1252:fb60:efac:61bc:bb73:d6b5]
 (2a02:908:1252:fb60:efac:61bc:bb73:d6b5) by
 AS9PR06CA0157.eurprd06.prod.outlook.com (2603:10a6:20b:45c::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.16 via Frontend
 Transport; Fri, 8 Oct 2021 10:24:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d16ec1aa-ac55-48fa-f891-08d98a45c6c8
X-MS-TrafficTypeDiagnostic: MW3PR12MB4457:
X-Microsoft-Antispam-PRVS: <MW3PR12MB445799C908859C0E46B3823C83B29@MW3PR12MB4457.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:334;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VE4SUBr6f7+R+U8ocdbuRZv46QZo8+6XLdGzqASLFu5zFQN/LZz8G0TKbURHQvXOVQUYHwKoOp2jTRflmoMzVD0DWKDZ+hU+ex2EqUeMywdzPnBqVIMVpJopNKKMWBgKM4ql2nuhx5hchkO3188wrqD+hOqAoiOfQr9OlOslzLBZDDEHnPeV3CECXNs9Z89EgVbukQDXyKEq02Hu4V/2JeSQpxWUAyWD8hteC4XLo0Gama8JeoVMM/xMMptTpixsAX8BX5e/cDzFzkPv4E0PLxRUZC5ii33JpOryp3GJVkGCzoC2Howq6Jw2ZZXJTXgOCR5MKMF0FJwvzffZj8j+kBwtR8d1IqjfhfMnufdOVh3VTdN3kH+OF/pWKUmO+xALu+GNb3CbJzhnVXQd8EJFOdV0ZSPUrZyX5l33k8cFvC9DlxhIWtIDBouTwRfEIXYUMtIQvem+VaoZoQBA81FaE7LwMNaWzuouOMaOm+1DA439O/fobIxhIkADkay9BLThXVypu7UUxjqKXyA9svzNqbfypTlS0DovDFd14ee3fChplsvMtUj85PAZxxIJUKQR2oG+ZiO+vrV1bT3ilFr1jHSewuEkmjXamWSB0+Lo9XmF9qRGty+P+AEn35TSz98j8vnKMo6BqnmwGP1V1Kzbc6IRAxdY3FPIpe+JeOjHMASPBQH/0xRi5pYOqwG8UCGo17beD0Awf8AsL4W5pyLDFOs23dPUrg+D4RWpEqeF4H0BTTzCbqecqBkwzap26qu2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(86362001)(66556008)(6666004)(83380400001)(6486002)(31696002)(316002)(66574015)(186003)(6916009)(8676002)(2906002)(2616005)(8936002)(38100700002)(508600001)(31686004)(5660300002)(36756003)(7416002)(4326008)(66476007)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWoyS0VjWnpnSjBnMmdqQldzY0xFc2Zob3pUWGlhVkI4a1F1WHFRZG5FODE2?=
 =?utf-8?B?dkZmVDdqM2F2blNkeFEwL1dsY3AzcTNHVkdmUFVkb3plN0RhSjdGVHI2Tzgr?=
 =?utf-8?B?T2ZvRmVJbWZjdW9nYWdCYURVMU9vQlhSb3JkTitPVjVQTnczTzFJekx6RnJU?=
 =?utf-8?B?TWpJcWsvblFQdm1mL29UcjhPN1VsaHBnWVNYa2M2K005OXBtSmRKZjh5WnBH?=
 =?utf-8?B?ZjJtTmd0VkJBM2tOOU1Oem5paHBxQ0lQS3FqWXJjOS9aWG4wdWRCQTVhNERV?=
 =?utf-8?B?ZXFFYUplMGlleUsxSC9VQ2dsMlVuT0RMMzdJNHhWY3Q3Vmp0TGtKeklHV0Z1?=
 =?utf-8?B?VkxQQUp0cEdUWUhrekJGZER6RTNRK3BrSmN6M082S2kxaTM4UUNFc0hmN2c4?=
 =?utf-8?B?Q3MyWk9uOWhjVGpMZFNXUEszVU5lS2V1V3BNdU9YTUdLTXcyL0haSDVYSkZi?=
 =?utf-8?B?UWU5MEUvRWg2aUlZNUovZDFkRWFnN2lHVTRiN1l0eG95U3BrNUY5dXpqQ0Ri?=
 =?utf-8?B?U0hnbExCOHdqK05TTCt5OWRGOHQyOVdMQlNMREhwbFVSZWZGS3NObDR2eTVh?=
 =?utf-8?B?cGhQSHBicFZ6Z042blhLTk11YWlscktlY2ZCWnlIK1F2YXZORm5Xc3kycVRH?=
 =?utf-8?B?TjhIZDZMNUc5a0orOThvWHRaQTJ2bnJ2ZGMyMGdlUTVrdE1ieHlBUTFGMTY2?=
 =?utf-8?B?eHVFWnVZZ2xNcU5Hbnh4cHJOUnR6aklGMTNJRXhvRHFMS2VQL21XbHRPbTN6?=
 =?utf-8?B?R1oybUt2QURLRmxGbGExbzI4K1BCS3E2alptVW9QMUhRcTBpSkkrSUxxajhp?=
 =?utf-8?B?S1JueWhLOEN3eU5vTWt2VmFXVHBIYmszM1JUVEdyckdmRklSREsxNFdWazVP?=
 =?utf-8?B?aGZHQWh4QTZtZlNTTmtLdUNDRlRtb3VnVjFQajdSM08zdnJQVG5qcFJjS0g4?=
 =?utf-8?B?MnJSYU5XQWxGbUFxRmJXMSt2YXFrTUsxRTJoSlpNNnFzM0s1aFUrRGh0akhs?=
 =?utf-8?B?TTNWdTJCUjVmR0pGNzVKYld1WU8yOU1NTmtNaG4zVGVEMkR3cFgyMHROZ3Y2?=
 =?utf-8?B?S20ybm43ZGhJbmZ5SkY3U2V2OURBQ1RTK3JjY3NQbDlNT1J6OHFNdHpZbXlR?=
 =?utf-8?B?bEFWVjFTWnJoN21CZGVRVUU0RGYyK3JLNGpYeUtBa0pvTkh6S0pnQk5TRCtQ?=
 =?utf-8?B?M0dWZlUvRk40TlBRMm5uM1RMdVJhcnFwcm5iajZqdzV6STFMdnlXbXk4T2VW?=
 =?utf-8?B?NVREdFFLOFdKa3ZOTGtLSmNzUkdrZWVpMldqMHZuMnl3V1h4aXZLTElwNTdn?=
 =?utf-8?B?ZzBuZlV5b2ZUd0ZhaTVFbUNnUmFxdko3SFRXLzdadjZXeHpxN3R5ekZQNkpV?=
 =?utf-8?B?RG9ndzdkemN6RUhramFUWWJhYTQ2YWdKby83d1pDVVNHbDVQVzgzL1VDYkNV?=
 =?utf-8?B?MlRUMzltcmw2V1NiVnh5T1ozTjlkanc0czJkdG9pSjNKaWhVWUNWcmdSd2xI?=
 =?utf-8?B?VjJkNitFM2JLNHZMcXpiTHRFRm9LWndMaFRMUXdFcUpZRENuOFhzNURZM0JM?=
 =?utf-8?B?NGl2ajljcW5SNjRtSW9PblhrSlpEbG9vb2s3L3dBdk1HRm9PamlZTE1kWW1B?=
 =?utf-8?B?TldENnluVTBWbk9LeEkycUlPV2MzN2hJSHB3VDFNOENRMkNtbExDZ1RRNjF6?=
 =?utf-8?B?cGx1eDVMVGtITGFBOXkrd3ZCRm9SR0hSNnRydkVDdmxpbm5QMU5LMXV6UWRp?=
 =?utf-8?B?S1BScjFBSUFDR0ZrUFI1Tk55YUNnRnE1YXBWWXc2b1oySWs1QWhOTklWWkFD?=
 =?utf-8?B?WWt3K24xdTJ3b3BvUEttYXNnRDI0b2FJRXJjc0VLMWxEL2JudFFkeWExOGpm?=
 =?utf-8?Q?aDMAPy+8xIbDR?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d16ec1aa-ac55-48fa-f891-08d98a45c6c8
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2021 10:24:14.5800 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E6soHBbQ6mrafBu/Gov1rihbLRv3i/RpbNtJlUmufgs5/RQhsWiU/RavSiSuAVrH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4457
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v2] dma-buf: acquire name lock before
 read/write dma_buf.name
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDguMTAuMjEgdW0gMDk6NTQgc2NocmllYiBndWFuZ21pbmcuY2FvQG1lZGlhdGVrLmNvbToK
PiBGcm9tOiBHdWFuZ21pbmcgQ2FvIDxHdWFuZ21pbmcuQ2FvQG1lZGlhdGVrLmNvbT4KPgo+IEJl
Y2F1c2UgZG1hLWJ1Zi5uYW1lIGNhbiBiZSBmcmVlZCBpbiBmdW5jOiAiZG1hX2J1Zl9zZXRfbmFt
ZSIsCj4gc28sIHdlIG5lZWQgdG8gYWNxdWlyZSBsb2NrIGZpcnN0IGJlZm9yZSB3ZSByZWFkL3dy
aXRlIGRtYV9idWYubmFtZQo+IHRvIHByZXZlbnQgVXNlIEFmdGVyIEZyZWUoVUFGKSBpc3N1ZS4K
Pgo+IFNpZ25lZC1vZmYtYnk6IEd1YW5nbWluZyBDYW8gPEd1YW5nbWluZy5DYW9AbWVkaWF0ZWsu
Y29tPgoKUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4KCkdvaW5nIHRvIHB1c2ggdGhhdCB1cHN0cmVhbSBpZiBub2JvZHkgZWxzZSBvYmplY3Rz
LgoKVGhhbmtzLApDaHJpc3RpYW4uCgo+IC0tLQo+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
YyB8IDMgKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMKPiBpbmRleCA1MTFmZTBkMjE3YTAuLmE3ZjZmZDEzYTYzNSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+
IEBAIC0xMzcyLDYgKzEzNzIsOCBAQCBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1
Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkKPiAgIAkJaWYgKHJldCkKPiAgIAkJCWdvdG8g
ZXJyb3JfdW5sb2NrOwo+ICAgCj4gKwo+ICsJCXNwaW5fbG9jaygmYnVmX29iai0+bmFtZV9sb2Nr
KTsKPiAgIAkJc2VxX3ByaW50ZihzLCAiJTA4enVcdCUwOHhcdCUwOHhcdCUwOGxkXHQlc1x0JTA4
bHVcdCVzXG4iLAo+ICAgCQkJCWJ1Zl9vYmotPnNpemUsCj4gICAJCQkJYnVmX29iai0+ZmlsZS0+
Zl9mbGFncywgYnVmX29iai0+ZmlsZS0+Zl9tb2RlLAo+IEBAIC0xMzc5LDYgKzEzODEsNyBAQCBz
dGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVu
dXNlZCkKPiAgIAkJCQlidWZfb2JqLT5leHBfbmFtZSwKPiAgIAkJCQlmaWxlX2lub2RlKGJ1Zl9v
YmotPmZpbGUpLT5pX2lubywKPiAgIAkJCQlidWZfb2JqLT5uYW1lID86ICIiKTsKPiArCQlzcGlu
X3VubG9jaygmYnVmX29iai0+bmFtZV9sb2NrKTsKPiAgIAo+ICAgCQlyb2JqID0gYnVmX29iai0+
cmVzdjsKPiAgIAkJZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKHJvYmopOwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
