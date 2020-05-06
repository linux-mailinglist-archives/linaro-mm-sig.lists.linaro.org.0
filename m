Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B41E21C6C9D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2020 11:14:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D52E4619F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2020 09:14:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C927565F82; Wed,  6 May 2020 09:14:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_LOW,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B99E3617C3;
	Wed,  6 May 2020 09:13:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 34E7461731
 for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2020 09:13:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 286CD6186E; Wed,  6 May 2020 09:13:46 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr70051.outbound.protection.outlook.com [40.107.7.51])
 by lists.linaro.org (Postfix) with ESMTPS id DB7A561731
 for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2020 09:13:44 +0000 (UTC)
Received: from AM6PR10CA0076.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:8c::17)
 by AM4PR08MB2851.eurprd08.prod.outlook.com (2603:10a6:205:d::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Wed, 6 May
 2020 09:13:37 +0000
Received: from AM5EUR03FT061.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:8c:cafe::12) by AM6PR10CA0076.outlook.office365.com
 (2603:10a6:209:8c::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26 via Frontend
 Transport; Wed, 6 May 2020 09:13:37 +0000
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT061.mail.protection.outlook.com (10.152.16.247) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Wed, 6 May 2020 09:13:36 +0000
Received: ("Tessian outbound 567b75aed2b9:v54");
 Wed, 06 May 2020 09:13:36 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: df6b87b3e5e79372
X-CR-MTA-TID: 64aa7808
Received: from de5042307d17.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D88A1F6A-04AA-47C6-BEB7-4821D4D430E9.1; 
 Wed, 06 May 2020 09:13:31 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id de5042307d17.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 06 May 2020 09:13:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kPugqb2H8d9OW7OS8yBYlbhoT77U0P1DCNuz4xlr5qRAA/jsh9Ejlbw9kv61nUBA+K/WVlPj63GkN3CVaSefcypQULMnvROrlNKyj0He5KefzcGLqe1Y2KS118h3v8s0D2Nk5jqhXU9TFNKrwaKXpv1unY0crnIK8IE8XnGOjRHQTvlkQZS3NzYhVBn0Z3xxyaV1VU8kTZ1/HmFS8AyS1P076uH6s86f1Y7UnSW2ht1ScoBq3LC7UTxct1xSbnJtWzCioibCc6/05IInh7vmH8Mh6Gf1ZUyjs7371cmo8DMHk/BzLBHr3DJTM2Y54Anvo9n5XuX/CBq3f0yigkHOUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=krOvKOGrQ8QND+C6fbN5amvsBRyNNQIfEdgnowOlvt4=;
 b=UW/UU0yRGuo1jm0UkkuQ4gH9wCowEOBI7ZJpLaKjo4sDa9KBBlcmT4KK+2PI5ZnL5HVB8Bu3FggaBFzvXWjFcfCYgPQsBz6yWJVQaACgoC1RqNY7SpR3FCAYkptYQfydFVzY3tssBvqJRzjRhFnz1WvcZtCA5B63zgq60srilUcYN6usnnhgf0dqe9hr8/04JWWHudNfQR2hgyFiB1Y2HxHhnwnhuLboEFDHpywcYKvZU0PndO4hTA2aO/IbcXAvSPx3Jx7xckculyS41RkzuAd1GYtFM3I3lAPyHHkdufvynvmY5tvHtpavEbslc7kF5df0aCMywwEe0AxjaMuqpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Authentication-Results-Original: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=arm.com;
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (2603:10a6:20b:85::14)
 by AM6PR08MB3767.eurprd08.prod.outlook.com (2603:10a6:20b:84::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Wed, 6 May
 2020 09:13:28 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::78d3:4ffd:f7da:b26d]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::78d3:4ffd:f7da:b26d%3]) with mapi id 15.20.2958.030; Wed, 6 May 2020
 09:13:28 +0000
Date: Wed, 6 May 2020 10:13:19 +0100
From: Brian Starkey <brian.starkey@arm.com>
To: Jason Yan <yanaijie@huawei.com>
Message-ID: <20200506091319.yng6bgrnt3zrhb5s@DESKTOP-E1NTVVP.localdomain>
References: <20200506061851.19745-1-yanaijie@huawei.com>
Content-Disposition: inline
In-Reply-To: <20200506061851.19745-1-yanaijie@huawei.com>
User-Agent: NeoMutt/20180716-849-147d51-dirty
X-ClientProxiedBy: SN1PR12CA0088.namprd12.prod.outlook.com
 (2603:10b6:802:21::23) To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from DESKTOP-E1NTVVP.localdomain (217.140.99.251) by
 SN1PR12CA0088.namprd12.prod.outlook.com (2603:10b6:802:21::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.26 via Frontend Transport; Wed, 6 May 2020 09:13:24 +0000
X-Originating-IP: [217.140.99.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d3a2e23c-65ff-489f-88bd-08d7f19dc257
X-MS-TrafficTypeDiagnostic: AM6PR08MB3767:|AM4PR08MB2851:
X-Microsoft-Antispam-PRVS: <AM4PR08MB285124A2C32D3DBC09B4F254F0A40@AM4PR08MB2851.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:1775;OLM:1775;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: DhfSSMbOMPiqYNjrhgN75yPf1uqAfZhIgSlgLLge5isFtOPgvra/mFSc2JTz25YYyIa0PK3aGY/ypQI/tMr1OrG3m0hLg9jIk8k2OydHmrEBhenTONr2H8bODveUdCICPO/f8NZdaXOjvqHqpyxuBLw87jvFjHZwTaTDf5B02zfg2/BDoybR7goOYBmD4pQMY4MUvb4YJVSgerFoQBvSPdVxQvAdctdUehz9NzUwTav306f42Y3u7iF+fFo8TLK+4nDaG8fbKUWFiuOVx+0EzElJK8g3sNDf2zxql1kUFVE1zLtOYHjlN8F/Hj5lb+3HIUif/vXKCC0npKHmAuooIo+uxOi92fbhhJ16Y7g58w/TSXxyDyfV7WMn7+gzSYj41gwz69rFKkRrV+Nxuyz+WGS1QdJ9BKVmgLTppEfhupxtdfx099ehbw7sjDqwuv1DnsH3rh5Z/EHQVclrWs5pVcK/wEKz6Oev22dZvFOwSLKRpfJZslFBgTtuUcniMC03SO1aNJOlhB19i19UwadDhA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB3829.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(366004)(396003)(136003)(39850400004)(346002)(376002)(33430700001)(8936002)(1076003)(16526019)(186003)(66556008)(4326008)(8676002)(44832011)(66946007)(26005)(2906002)(66476007)(86362001)(9686003)(55016002)(5660300002)(33440700001)(316002)(7696005)(52116002)(6666004)(7416002)(6916009)(956004)(6506007)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 46Pu/M84HzailUcpWsDLr2Bk8DOoHtA86tkCsgO+uxhQeTuvXvYqMZWdoKwl3FWcXUu3d2dvV9IpBVUQmtqbcVDZJM9uku2T0MLu6oiLKSpvSE4iKDx/V+5ezVMqZuVfSJM0WKdP/i/Og5CrtoBnHqfleKeoRfzcBfFfgrGJ4XCWk996DSDvut0zuS/WBV0ozcaszm7L1bWo7g4dienbw65D7/DMg6C6yWzC9Pi35GpEDMu3HG3Vmi3HrVm8dFeTLZNqY7e2E0hhzAVmfH2qTPnrDVo5Lt/OiHN78V3IJhMZDb5sXe/pjEHOWvprUmQ3Q+9hyCxI05eWRp/pdvvHDFq8W5ha4KMR6CoD8nyUUxC5BRx082rELkrFWco+Cp+LU27uNWO+nwtc5ZL/SSKWU47Kpt1+19UqbraHCRGkwztwe1Aa7NPP2wo8Pk4CNuNpgpGv9TOHFk7LECHjwSH+xGfLL1Ek83EoBn6K3qqlnSUnl4kpAB1ORvj8HNKwOe3upaRo+hvpuElw6L+gyAoxtEXvSZ1/sWLAWnarh4VznXqDKmvwIVmta0R/vYEe7X0Rl1e8XoftKeJS3yXwZDtYIpzRmDCkKX3DLi+sFxzoU3PAVUWKPDyWiSiXN9fQM8UXdngAR0Y+cPr/2tRNwFLPmPDGKDN58JugnKJvmUbvOUcv66Dbk6/dOh/yZJcbHMJj2d7XsTltIrpMk4i5bgCYussa/r06Z7y/1vuujHh2Skk8tBkYluULT0npM6nZj4sIZaRgWDKV5PExmuW4CGaKPstL97Zr1nvSsJUOpsA3aeU=
X-MS-Exchange-Transport-Forked: True
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3767
Original-Authentication-Results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT061.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(346002)(39850400004)(136003)(396003)(46966005)(33430700001)(33440700001)(6666004)(55016002)(4326008)(44832011)(336012)(478600001)(5660300002)(16526019)(6862004)(956004)(186003)(26005)(70206006)(70586007)(9686003)(2906002)(86362001)(7696005)(81166007)(1076003)(82310400002)(82740400003)(356005)(8936002)(47076004)(316002)(36906005)(8676002)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: b58b4ced-5e8b-4a19-d881-08d7f19dbce4
X-Forefront-PRVS: 03950F25EC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hwoq/S0LPC/j2bN8XVNvvFJmHsDBkOLsNuoYAf9q7EppjASlsp4Gy6+3QxSGvygBiqbiAqM3OkGyoyd0OyEIawO6aRdP1hkC7m7fvkwX0qkw2MLrJxWcz65HwG9U8k35415piOsqtMY34svwV6eGn0dpg0BrNdPjJpQCFbB6Bfs0ujdcLcMZQctKlzSAo0CzJm0+H8tPqfs0SQLKRfsgBUkK2GEIetKYjISs7HDSASQGC95A/qV9wNh+VKNmUnQJZuHDnGvjM+zgphVo+95NRJep8C2XX+p90g491HJ6m6wGYLeL5cVuigSVfNDLzYMNrlTjIJIeBd/khfNl6IJKLG4tK7dcYG9HIECBSTXyRfOv3n0z6BGxC1LPhNU+TNabqKh8zf4ayJmqdvCu0aLPidy7CpZABEFW6nbEfCjQho6z2wbmb11NleQ8RMIubbwuF9PTBChlP906RYZwcmc7SsJ9/+2COorYXZyty6xGFAvPjtNO56wMEyt7cMpMPgXEXiJJu8Py0nBhr23cxHmoEI9KtZmJogmnLnUdyG+Wvr34ssXNhSKO1d4ZskjMsqBS/0tqXZHTlVTR6WTlyASuzA==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 09:13:36.8140 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d3a2e23c-65ff-489f-88bd-08d7f19dc257
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR08MB2851
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: nd@arm.com, linux-kernel@vger.kernel.org, lmark@codeaurora.org,
 linaro-mm-sig@lists.linaro.org, john.stultz@linaro.org,
 dri-devel@lists.freedesktop.org, seanpaul@chromium.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Remove Unneeded
 variable "ret" in dma_heap_dma_buf_begin_cpu_access()
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkgSmFzb24sCgpPbiBXZWQsIE1heSAwNiwgMjAyMCBhdCAwMjoxODo1MVBNICswODAwLCBKYXNv
biBZYW4gd3JvdGU6Cj4gRml4IHRoZSBmb2xsb3dpbmcgY29jY2ljaGVjayB3YXJuaW5nOgo+IAo+
IGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYzoyMDM6NS04OiBVbm5lZWRlZCB2
YXJpYWJsZTogInJldCIuCj4gUmV0dXJuICIwIiBvbiBsaW5lIDIxNgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEphc29uIFlhbiA8eWFuYWlqaWVAaHVhd2VpLmNvbT4KCkxHVE0uCgpSZXZpZXdlZC1ieTog
QnJpYW4gU3RhcmtleSA8YnJpYW4uc3RhcmtleUBhcm0uY29tPgoKVGhhbmtzLAotQnJpYW4KCj4g
LS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYyB8IDMgKy0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jIGIvZHJpdmVycy9kbWEt
YnVmL2hlYXBzL2hlYXAtaGVscGVycy5jCj4gaW5kZXggOWY5NjRjYTNmNTljLi5jODI4NzI1MDFi
YTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jCj4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jCj4gQEAgLTIwMCw3ICsy
MDAsNiBAQCBzdGF0aWMgaW50IGRtYV9oZWFwX2RtYV9idWZfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmLAo+ICB7Cj4gIAlzdHJ1Y3QgaGVhcF9oZWxwZXJfYnVmZmVyICpi
dWZmZXIgPSBkbWFidWYtPnByaXY7Cj4gIAlzdHJ1Y3QgZG1hX2hlYXBzX2F0dGFjaG1lbnQgKmE7
Cj4gLQlpbnQgcmV0ID0gMDsKPiAgCj4gIAltdXRleF9sb2NrKCZidWZmZXItPmxvY2spOwo+ICAK
PiBAQCAtMjEzLDcgKzIxMiw3IEBAIHN0YXRpYyBpbnQgZG1hX2hlYXBfZG1hX2J1Zl9iZWdpbl9j
cHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsCj4gIAl9Cj4gIAltdXRleF91bmxvY2so
JmJ1ZmZlci0+bG9jayk7Cj4gIAo+IC0JcmV0dXJuIHJldDsKPiArCXJldHVybiAwOwo+ICB9Cj4g
IAo+ICBzdGF0aWMgaW50IGRtYV9oZWFwX2RtYV9idWZfZW5kX2NwdV9hY2Nlc3Moc3RydWN0IGRt
YV9idWYgKmRtYWJ1ZiwKPiAtLSAKPiAyLjIxLjEKPiAKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
