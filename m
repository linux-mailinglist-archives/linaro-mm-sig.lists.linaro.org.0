Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6F23D3768
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 11:11:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7701631CC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 09:11:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2E996631AA; Fri, 23 Jul 2021 09:11:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A8D360961;
	Fri, 23 Jul 2021 09:11:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D2C336085A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 09:11:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CEA1060961; Fri, 23 Jul 2021 09:11:32 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id B163F6085A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 09:11:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id 2CEB120201B;
 Fri, 23 Jul 2021 11:11:30 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id kxQLFzKYo8nX; Fri, 23 Jul 2021 11:11:29 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id BF6A920201A;
 Fri, 23 Jul 2021 11:11:29 +0200 (CEST)
Received: from localhost ([::1]) by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1m6rDM-000Bg4-UO; Fri, 23 Jul 2021 11:11:28 +0200
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210723075857.4065-1-michel@daenzer.net>
 <f5f37693-bfe2-e52f-172b-00f4aa94dbd9@amd.com>
 <4cf94f59-f953-f5d7-9901-cfe5fd63bfbc@daenzer.net>
 <YPqFiPftjTUV4361@phenom.ffwll.local>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <babe4878-d99b-2ae4-2389-8139477783db@daenzer.net>
Date: Fri, 23 Jul 2021 11:11:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YPqFiPftjTUV4361@phenom.ffwll.local>
Content-Language: en-CA
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf/poll: Get a file reference for
 outstanding fence callbacks
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
Cc: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMS0wNy0yMyAxMTowMiBhLm0uLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIEZyaSwg
SnVsIDIzLCAyMDIxIGF0IDEwOjE5OjQ5QU0gKzAyMDAsIE1pY2hlbCBEw6RuemVyIHdyb3RlOgo+
PiBPbiAyMDIxLTA3LTIzIDEwOjA0IGEubS4sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBB
bSAyMy4wNy4yMSB1bSAwOTo1OCBzY2hyaWViIE1pY2hlbCBEw6RuemVyOgo+Pj4+IEZyb206IE1p
Y2hlbCBEw6RuemVyIDxtZGFlbnplckByZWRoYXQuY29tPgo+Pj4+Cj4+Pj4gVGhpcyBtYWtlcyBz
dXJlIHdlIGRvbid0IGhpdCB0aGUKPj4+Pgo+Pj4+IMKgwqDCoMKgQlVHX09OKGRtYWJ1Zi0+Y2Jf
aW4uYWN0aXZlIHx8IGRtYWJ1Zi0+Y2Jfb3V0LmFjdGl2ZSk7Cj4+Pj4KPj4+PiBpbiBkbWFfYnVm
X3JlbGVhc2UsIHdoaWNoIGNvdWxkIGJlIHRyaWdnZXJlZCBieSB1c2VyIHNwYWNlIGNsb3Npbmcg
dGhlCj4+Pj4gZG1hLWJ1ZiBmaWxlIGRlc2NyaXB0aW9uIHdoaWxlIHRoZXJlIGFyZSBvdXRzdGFu
ZGluZyBmZW5jZSBjYWxsYmFja3MKPj4+PiBmcm9tIGRtYV9idWZfcG9sbC4KPj4+Cj4+PiBJIHdh
cyBhbHNvIHdvbmRlcmluZyB0aGUgc2FtZSB0aGluZyB3aGlsZSB3b3JraW5nIG9uIHRoaXMsIGJ1
dCB0aGVuIHRob3VnaHQgdGhhdCB0aGUgcG9sbCBpbnRlcmZhY2Ugd291bGQgdGFrZSBjYXJlIG9m
IHRoaXMuCj4+Cj4+IEkgd2FzIGFibGUgdG8gaGl0IHRoZSBCVUdfT04gd2l0aCBodHRwczovL2dp
dGxhYi5nbm9tZS5vcmcvR05PTUUvbXV0dGVyLy0vbWVyZ2VfcmVxdWVzdHMvMTg4MCAuCj4gCj4g
aWd0IHRlc3Qgd291bGQgYmUgcmVhbGx5IGxvdmVseS4gTWF5YmUgYmFzZSBzb21ldGhpbmcgb2Zm
IHRoZQo+IGltcG9ydC9leHBvcnQgaWd0cyBmcm9tIEphc29uPwoKSSdsbCBzZWUgd2hhdCBJIGNh
biBkbywgYnVzeSB3aXRoIG90aGVyIHN0dWZmIHJpZ2h0IG5vdyB0aG91Z2guCgoKLS0gCkVhcnRo
bGluZyBNaWNoZWwgRMOkbnplciAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICBodHRwczov
L3JlZGhhdC5jb20KTGlicmUgc29mdHdhcmUgZW50aHVzaWFzdCAgICAgICAgICAgICB8ICAgICAg
ICAgICAgIE1lc2EgYW5kIFggZGV2ZWxvcGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
