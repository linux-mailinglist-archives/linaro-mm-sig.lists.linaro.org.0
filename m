Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9B42279BA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 09:46:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5808E618D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 07:46:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4B2D1665BF; Tue, 21 Jul 2020 07:46:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 00F78619B5;
	Tue, 21 Jul 2020 07:45:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 815E86013A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 07:45:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 67C4D619B5; Tue, 21 Jul 2020 07:45:32 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2045.outbound.protection.outlook.com [40.107.243.45])
 by lists.linaro.org (Postfix) with ESMTPS id 3FB056013A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 07:45:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JH4r4aiIjtUZTVN3wCAR85JmhzgvHxeKRPv4I6P33gABSgVxmKHFJ6w5mpI9xOdM5PQy/N9bB7xHU8PsdRb+x1x5JnP29cpVptm8d8Fmq9Gx5AgqCakA3ftwV46OYsFq2W4T7/1IqL6hCtGDmPcX977SkQFl1PVRif2zlrcOhnWkwbek5sxPTpu6I3jqtGKdHuDfiQwQRfCh2ysQOG1PoCiariCONc95ryg8h/5prkibj9Q0IV5fO43Y3R47qFRHRR8XeUCo8aqB3N4RI3GXaSKWkBuCVNifyEXYSayl4fvEKMy4mr3bJMzubPfwJETtzvLEJ/2fhJ08H4zxd8XoDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wUWqYWXjGZ5OdnuqsTdsz2ev0WdISQZDr42VloR8yTg=;
 b=BBjk7K4eNb5Xo8gOipIrLOEQq9ZPr5fNd9H3rz6kG6++6EBa73Eue8YOTXQFyGNeC1CMxPePxv0AHja76vkvb39x5Mmn3AopIQIQQI+Tgz1O7VgruMA6Wgc5G/8/4cASHzsmJS9YZoZr1a7ohkYKJ5xfDS/SsWpRWMS4QEDkQb8H4qTrU4osXtFMvqSyHz0TND4sul3nCYn5ZPfsK8HRvNa6HN0XTomnrfuyahSsFa6Ql/o8PDVdorb9TakdvDF2vQk3riZwYjcuFB3ZNSgF6D2GUweAwjbZFNuTxgxlE9lpW7sTSexXZCsGrCg0UPbiV7nXOSiZgptzIvGF7wPLxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3935.namprd12.prod.outlook.com (2603:10b6:208:168::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.23; Tue, 21 Jul
 2020 07:45:26 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::a16e:8812:b4c0:918d]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::a16e:8812:b4c0:918d%6]) with mapi id 15.20.3195.026; Tue, 21 Jul 2020
 07:45:08 +0000
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
Date: Tue, 21 Jul 2020 09:45:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200721074157.GB3278063@phenom.ffwll.local>
Content-Language: en-US
X-ClientProxiedBy: AM0PR03CA0025.eurprd03.prod.outlook.com
 (2603:10a6:208:14::38) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR03CA0025.eurprd03.prod.outlook.com (2603:10a6:208:14::38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3216.20 via Frontend Transport; Tue, 21 Jul 2020 07:45:05 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 22de25be-7bf2-498f-4608-08d82d49fd49
X-MS-TrafficTypeDiagnostic: MN2PR12MB3935:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB393545FF5A8E570BA46DC7B783780@MN2PR12MB3935.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lrltq7Ly72C8i0bovbe0zZUFMP4Tfdyg2RsSqDceZyLsfPKvUdY6pJf2iCAn+Y74/qZfsTc63IlsEP0GB2fkQdizlCINvrm+yi9db1h/nlM605u0+xap/qweIh+oaoV90CTHBRsWZJLc29brjhhWt6CGYWnPYKJHf7si8R5Y+Wznyaiwha5OFuGuUjrVjknAmY98KFbZDjCAreeF4dRM1CCZPBGilHWxBS/4ZCky81aVaaH2fC+5nuq5vbhikKf/1KF5vysF5+ea7La7y9HL3P9SRBpEG5t0CfMexq0K4oYqGBvVjCGQgHMgoAWCVimLuQKCuCGGXNC7DLut3ZNeTU8iNf+JUofesjhgcaIiIa61Z0ZXsEHM0RcPZyT9dZwh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(5660300002)(8676002)(52116002)(53546011)(6486002)(8936002)(86362001)(478600001)(7416002)(31696002)(6666004)(316002)(110136005)(186003)(4326008)(54906003)(66946007)(66556008)(31686004)(2616005)(66476007)(16526019)(36756003)(2906002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: cxZHbExQQhGeLFZVzw/wzeeLojbqJpl1tA5DhMdFLoATBRaxTd7i467dORphz1si3INLY7Yx7SmBBjzovaEq/tFAQHcBnBduoPSdytdogLcb+INCJbHvNuQlC4lKO0YU9DxOzVsH+bLFLowRcf7XuXBDZzNwA2mm1fv+X8XsobWs3V73rP6tmeKEiIbnLU9BTGrMcG5tWfhFivveJHxnYIqn5I/Q+20cHNHF0bYhtnL4mDG28Ln7yYCtXNvP3HvLd2riyGUTuSKsxZ3I2P4wXdHN+KBPMBdV/hi6UzMXgaF7iZF4Tejkjpl7IPOc/54ZvZQv8TPZL9S/JrK/dy05mU41QIk17c1OnbYIkXTfThZ4ORB4phuomRN0GMuwHFtcjJ8+JMcdgN2CPesyR004E25Fs5Gsa0wBf8jpJR6XH4vNoNIvtoEKy9QmY/XwWEvId0s7Hx3UnNfpCTHndSgdNTCoGpdS3xEC0vUpZT/2hVKunIoWYqjQ28Ko03eOTvCQ8siizE4fUNoqi0udpqpmfVx1BLYZsg5JxpR/3eisG3AcrFZL41Q/K964cbZm9Yap
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22de25be-7bf2-498f-4608-08d82d49fd49
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2020 07:45:08.1363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0ThKWsuBaLokNtiT4Q6yFfZqYtxeKlxVTVLiWK1NUTsK51epKUjyyPcvIY910y5A
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3935
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Stone <daniels@collabora.com>, linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx@lists.freedesktop.org, Jason Ekstrand <jason@jlekstrand.net>,
 Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document why
 indefinite fences are a bad idea
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjEuMDcuMjAgdW0gMDk6NDEgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIE1vbiwgSnVs
IDIwLCAyMDIwIGF0IDAxOjE1OjE3UE0gKzAyMDAsIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkg
d3JvdGU6Cj4+IEhpLAo+Pgo+PiBPbiA3LzkvMjAgMjozMyBQTSwgRGFuaWVsIFZldHRlciB3cm90
ZToKPj4+IENvbWVzIHVwIGV2ZXJ5IGZldyB5ZWFycywgZ2V0cyBzb21ld2hhdCB0ZWRpb3VzIHRv
IGRpc2N1c3MsIGxldCdzCj4+PiB3cml0ZSB0aGlzIGRvd24gb25jZSBhbmQgZm9yIGFsbC4KPj4+
Cj4+PiBXaGF0IEknbSBub3Qgc3VyZSBhYm91dCBpcyB3aGV0aGVyIHRoZSB0ZXh0IHNob3VsZCBi
ZSBtb3JlIGV4cGxpY2l0IGluCj4+PiBmbGF0IG91dCBtYW5kYXRpbmcgdGhlIGFtZGtmZCBldmlj
dGlvbiBmZW5jZXMgZm9yIGxvbmcgcnVubmluZyBjb21wdXRlCj4+PiB3b3JrbG9hZHMgb3Igd29y
a2xvYWRzIHdoZXJlIHVzZXJzcGFjZSBmZW5jaW5nIGlzIGFsbG93ZWQuCj4+IEFsdGhvdWdoIChp
biBteSBodW1ibGUgb3BpbmlvbikgaXQgbWlnaHQgYmUgcG9zc2libGUgdG8gY29tcGxldGVseSB1
bnRhbmdsZQo+PiBrZXJuZWwtaW50cm9kdWNlZCBmZW5jZXMgZm9yIHJlc291cmNlIG1hbmFnZW1l
bnQgYW5kIGRtYS1mZW5jZXMgdXNlZCBmb3IKPj4gY29tcGxldGlvbi0gYW5kIGRlcGVuZGVuY3kg
dHJhY2tpbmcgYW5kIGxpZnQgYSBsb3Qgb2YgcmVzdHJpY3Rpb25zIGZvciB0aGUKPj4gZG1hLWZl
bmNlcywgaW5jbHVkaW5nIHByb2hpYml0aW5nIGluZmluaXRlIG9uZXMsIEkgdGhpbmsgdGhpcyBt
YWtlcyBzZW5zZQo+PiBkZXNjcmliaW5nIHRoZSBjdXJyZW50IHN0YXRlLgo+IFllYWggSSB0aGlu
ayBhIGZ1dHVyZSBwYXRjaCBuZWVkcyB0byB0eXBlIHVwIGhvdyB3ZSB3YW50IHRvIG1ha2UgdGhh
dAo+IGhhcHBlbiAoZm9yIHNvbWUgY3Jvc3MgZHJpdmVyIGNvbnNpc3RlbmN5KSBhbmQgd2hhdCBu
ZWVkcyB0byBiZQo+IGNvbnNpZGVyZWQuIFNvbWUgb2YgdGhlIG5lY2Vzc2FyeSBwYXJ0cyBhcmUg
YWxyZWFkeSB0aGVyZSAod2l0aCBsaWtlIHRoZQo+IHByZWVtcHRpb24gZmVuY2VzIGFtZGtmZCBo
YXMgYXMgYW4gZXhhbXBsZSksIGJ1dCBJIHRoaW5rIHNvbWUgY2xlYXIgZG9jcwo+IG9uIHdoYXQn
cyByZXF1aXJlZCBmcm9tIGJvdGggaHcsIGRyaXZlcnMgYW5kIHVzZXJzcGFjZSB3b3VsZCBiZSBy
ZWFsbHkKPiBnb29kLgoKSSdtIGN1cnJlbnRseSB3cml0aW5nIHRoYXQgdXAsIGJ1dCBwcm9iYWJs
eSBzdGlsbCBuZWVkIGEgZmV3IGRheXMgZm9yIHRoaXMuCgpDaHJpc3RpYW4uCgo+PiBSZXZpZXdl
ZC1ieTogVGhvbWFzIEhlbGxzdHJvbSA8dGhvbWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+Cj4gVGhh
bmtzIGZvciB0YWtpbmcgYSBsb29rLCBmaXJzdCAzIHBhdGNoZXMgaGVyZSB3aXRoIGFubm90YXRp
b25zIGFuZCBkb2NzCj4gbWVyZ2VkIHRvIGRybS1taXNjLW5leHQuIEknbGwgYXNrIE1hYXJ0ZW4v
RGF2ZSB3aGV0aGVyIGFub3RoZXIgcHVsbCBpcyBvawo+IGZvciA1Ljkgc28gdGhhdCBldmVyeW9u
ZSBjYW4gdXNlIHRoaXMgYXNhcC4KPiAtRGFuaWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
