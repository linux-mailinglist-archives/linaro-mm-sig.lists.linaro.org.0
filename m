Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F08B2484C5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:33:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFCC16670B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:33:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C08BE60665; Tue, 18 Aug 2020 12:33:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0D8C60D77;
	Tue, 18 Aug 2020 12:32:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9E6A161507
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Jul 2020 11:15:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8552A6659D; Mon, 20 Jul 2020 11:15:36 +0000 (UTC)
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by lists.linaro.org (Postfix) with ESMTPS id 7E88A61507
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Jul 2020 11:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id EEED53F64F;
 Mon, 20 Jul 2020 13:15:33 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vixtsmS5pBFA; Mon, 20 Jul 2020 13:15:33 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 7B7A03F2DB;
 Mon, 20 Jul 2020 13:15:30 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.139.76])
 by mail1.shipmail.org (Postfix) with ESMTPSA id CCBA93605CC;
 Mon, 20 Jul 2020 13:15:22 +0200 (CEST)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
Date: Mon, 20 Jul 2020 13:15:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200709123339.547390-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: Daniel Stone <daniels@collabora.com>, linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Steve Pronovost <spronovo@microsoft.com>,
 Jason Ekstrand <jason@jlekstrand.net>, Jesse Natalie <jenatali@microsoft.com>,
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

SGksCgpPbiA3LzkvMjAgMjozMyBQTSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiBDb21lcyB1cCBl
dmVyeSBmZXcgeWVhcnMsIGdldHMgc29tZXdoYXQgdGVkaW91cyB0byBkaXNjdXNzLCBsZXQncwo+
IHdyaXRlIHRoaXMgZG93biBvbmNlIGFuZCBmb3IgYWxsLgo+Cj4gV2hhdCBJJ20gbm90IHN1cmUg
YWJvdXQgaXMgd2hldGhlciB0aGUgdGV4dCBzaG91bGQgYmUgbW9yZSBleHBsaWNpdCBpbgo+IGZs
YXQgb3V0IG1hbmRhdGluZyB0aGUgYW1ka2ZkIGV2aWN0aW9uIGZlbmNlcyBmb3IgbG9uZyBydW5u
aW5nIGNvbXB1dGUKPiB3b3JrbG9hZHMgb3Igd29ya2xvYWRzIHdoZXJlIHVzZXJzcGFjZSBmZW5j
aW5nIGlzIGFsbG93ZWQuCgpBbHRob3VnaCAoaW4gbXkgaHVtYmxlIG9waW5pb24pIGl0IG1pZ2h0
IGJlIHBvc3NpYmxlIHRvIGNvbXBsZXRlbHkgCnVudGFuZ2xlIGtlcm5lbC1pbnRyb2R1Y2VkIGZl
bmNlcyBmb3IgcmVzb3VyY2UgbWFuYWdlbWVudCBhbmQgZG1hLWZlbmNlcyAKdXNlZCBmb3IgY29t
cGxldGlvbi0gYW5kIGRlcGVuZGVuY3kgdHJhY2tpbmcgYW5kIGxpZnQgYSBsb3Qgb2YgCnJlc3Ry
aWN0aW9ucyBmb3IgdGhlIGRtYS1mZW5jZXMsIGluY2x1ZGluZyBwcm9oaWJpdGluZyBpbmZpbml0
ZSBvbmVzLCBJIAp0aGluayB0aGlzIG1ha2VzIHNlbnNlIGRlc2NyaWJpbmcgdGhlIGN1cnJlbnQg
c3RhdGUuCgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHJvbSA8dGhvbWFzLmhlbGxzdHJvbUBp
bnRlbC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
