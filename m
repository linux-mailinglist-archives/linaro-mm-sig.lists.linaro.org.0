Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7B33DA10E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 12:29:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F24E648FE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 10:29:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E6A6C63523; Thu, 29 Jul 2021 10:29:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4224A6350E;
	Thu, 29 Jul 2021 10:29:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 120DA6350B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 10:29:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ED2BC6350E; Thu, 29 Jul 2021 10:29:43 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id ACC2B6350B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 10:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id E66A520201A;
 Thu, 29 Jul 2021 12:29:40 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 1L6nuNw0PY7d; Thu, 29 Jul 2021 12:28:38 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id B4F5F20201B;
 Thu, 29 Jul 2021 12:28:37 +0200 (CEST)
Received: from [::1] by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1m93HI-001Kjn-Oa; Thu, 29 Jul 2021 12:28:36 +0200
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
 <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
 <eedfdc75-72f8-9150-584b-c5e9d16db180@amd.com>
 <20210728165700.38c39cf8@eldfell>
 <74e310fa-e544-889f-2389-5abe06f80eb8@amd.com>
 <20210729112358.237651ff@eldfell>
 <3675d530-c9fc-7ec9-e157-b6abeeec7c2a@amd.com>
 <20210729121542.27d9b1cc@eldfell>
 <15cf73a8-eda4-3559-561a-a05a14f445d0@gmail.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <4def9567-f88d-3b7c-5ed2-d1686a25fbb3@daenzer.net>
Date: Thu, 29 Jul 2021 12:28:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <15cf73a8-eda4-3559-561a-a05a14f445d0@gmail.com>
Content-Language: en-CA
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
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
Cc: Rob Clark <robdclark@chromium.org>, Matthew Brost <matthew.brost@intel.com>,
 Jack Zhang <Jack.Zhang1@amd.com>, Gustavo Padovan <gustavo@padovan.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMS0wNy0yOSAxMjoxNCBwLm0uLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+IEFtIDI5
LjA3LjIxIHVtIDExOjE1IHNjaHJpZWIgUGVra2EgUGFhbGFuZW46Cj4+IFtTTklQXQo+Pj4gQnV0
IGhvdyBkb2VzIGl0IHRoZW4gaGVscCB0byB3YWl0IG9uIHRoZSBDUFUgaW5zdGVhZD8KPj4gQSBj
b21wb3NpdG9yIGRvZXMgbm90ICJ3YWl0IiBsaXRlcmFsbHkuIEl0IHdvdWxkIG9ubHkgY2hlY2sg
d2hpY2ggc3RhdGUKPj4gc2V0IGlzIHJlYWR5IHRvIGJlIHVzZWQsIGFuZCB1c2VzIHRoZSBtb3N0
IHJlY2VudCBzZXQgdGhhdCBpcyByZWFkeS4gQW55Cj4+IHN0YXRlIHNldHMgdGhhdCBhcmUgbm90
IHJlYWR5IGFyZSBpZ25vcmVkIGFuZCByZWNvbnNpZGVyZWQgdGhlIG5leHQKPj4gdGltZSB0aGUg
Y29tcG9zaXRvciB1cGRhdGVzIHRoZSBzY3JlZW4uCj4gCj4gTWhtLCB0aGVuIEknbSBub3QgdW5k
ZXJzdGFuZGluZyB3aGF0IE1pY2hlbCdzIGNoYW5nZXMgYXJlIGFjdHVhbGx5IGRvaW5nLgoKSW4g
YSBudXRzaGVsbCwgbXkgbXV0dGVyIE1SIGhvbGRzIGJhY2sgYWxsIFdheWxhbmQgc3RhdGUgY2hh
bmdlcyB3aGljaCB3ZXJlIGNvbW1pdHRlZCB0b2dldGhlciB3aXRoIGEgbmV3IGJ1ZmZlciAoYW5k
IGRlcGVuZGVudCBsYXRlciBvbmVzKSB1bnRpbCB0aGUgZG1hLWJ1ZiBmaWxlIGRlc2NyaXB0b3Jz
IGZvciB0aGF0IGJ1ZmZlciBoYXZlIGJlY29tZSByZWFkYWJsZS4gVGhpcyBpcyBhY2hpZXZlZCBi
eSBhZGRpbmcgdGhlIGZkcyB0byB0aGUgbWFpbiBldmVudCBsb29wIChpZiB0aGV5IGFyZW4ndCBy
ZWFkYWJsZSBhbHJlYWR5IHdoZW4gdGhlIGJ1ZmZlciBpcyBjb21taXR0ZWQpLCBhbmQgd2hlbiB0
aGV5IGJlY29tZSByZWFkYWJsZSwgYWxsIGNvcnJlc3BvbmRpbmcgc3RhdGUgY2hhbmdlcyBhcmUg
cHJvcGFnYXRlZCBzdWNoIHRoYXQgdGhleSB3aWxsIGJlIHRha2VuIGludG8gYWNjb3VudCBmb3Ig
ZHJhd2luZyB0aGUgbmV4dCBmcmFtZS4KCgo+PiBEZXBlbmRpbmcgb24gd2hpY2ggc3RhdGUgc2V0
cyBhcmUgc2VsZWN0ZWQgZm9yIGEgc2NyZWVuIHVwZGF0ZSwgdGhlCj4+IGdsb2JhbCB3aW5kb3cg
bWFuYWdlciBzdGF0ZSBtYXkgYmUgdXBkYXRlZCBhY2NvcmRpbmdseSwgYmVmb3JlIHRoZQo+PiBk
cmF3aW5nIGNvbW1hbmRzIGZvciB0aGUgY29tcG9zaXRpb24gY2FuIGJlIGNyZWF0ZWQuCj4+Cj4+
PiBTZWUgd2hhdCBJJ20gcHJvcG9zaW5nIGlzIHRvIGVpdGhlciByZW5kZXIgdGhlIG5leHQgc3Rh
dGUgb2YgdGhlIHdpbmRvdwo+Pj4gb3IgY29tcG9zZSBmcm9tIHRoZSBvbGQgc3RhdGUgKGluY2x1
ZGluZyBhbGwgYXRvbWljIHByb3BlcnRpZXMpLgo+PiBZZXMsIHRoYXQncyBleGFjdGx5IGhvdyBp
dCB3b3VsZCB3b3JrLiBJdCdzIGp1c3QgdGhhdCBzdGF0ZSBmb3IgYQo+PiB3aW5kb3cgaXMgbm90
IGFuIGluZGVwZW5kZW50IHRoaW5nLCBpdCBjYW4gYWZmZWN0IGhvdyB1bnJlbGF0ZWQgd2luZG93
cwo+PiBhcmUgbWFuYWdlZC4KPj4KPj4gQSBzaW1wbGlmaWVkIGV4YW1wbGUgd291bGQgYmUgdHdv
IHdpbmRvd3Mgc2lkZSBieSBzaWRlIHdoZXJlIHRoZQo+PiByZXNpemluZyBvZiBvbmUgY2F1c2Vz
IHRoZSBvdGhlciB0byBtb3ZlLiBZb3UgY2FuJ3QgcmVzaXplIHRoZSB3aW5kb3cKPj4gb3IgbW92
ZSB0aGUgb3RoZXIgdW50aWwgdGhlIGJ1ZmZlciB3aXRoIHRoZSBuZXcgc2l6ZSBpcyByZWFkeS4g
VW50aWwKPj4gdGhlbiB0aGUgY29tcG9zaXRvciB1c2VzIHRoZSBvbGQgc3RhdGUuCj4+Cj4+PiBF
LmcuIHdoYXQgZG8geW91IGRvIGlmIHlvdSB0aW1lb3V0IGFuZCBjYW4ndCBoYXZlIHRoZSBuZXcg
d2luZG93IGNvbnRlbnQKPj4+IG9uIHRpbWU/IFdoYXQncyB0aGUgZmFsbGJhY2sgaGVyZT8KPj4g
QXMgdGhlcmUgaXMgbm8gd2FpdCwgdGhlcmUgaXMgbm8gdGltZW91dCBlaXRoZXIuCj4+Cj4+IElm
IHRoZSBhcHAgaGFwcGVucyB0byBiZSBmcm96ZW4gKGUuZy4gc29tZSB3ZWlyZCBidWcgaW4gZmVu
Y2UgaGFuZGxpbmcKPj4gdG8gbWFrZSBpdCBuZXZlciByZWFkeSwgb3IgbWF5YmUgaXQncyBqdXN0
IGJ1Z2dlZCBpdHNlbGYgYW5kIG5ldmVyCj4+IGRyYXdpbmcgYWdhaW4pLCB0aGVuIHRoZSBhcHAg
aXMgZnJvemVuLCBhbmQgYWxsIHRoZSByZXN0IG9mIHRoZSBkZXNrdG9wCj4+IGNvbnRpbnVlcyBy
dW5uaW5nIG5vcm1hbGx5IHdpdGhvdXQgYSBnbGl0Y2guCj4gCj4gQnV0IHRoYXQgaXMgaW4gY29u
dHJhZGljdCB0byB3aGF0IHlvdSB0b2xkIG1lIGJlZm9yZS4KPiAKPiBTZWUgd2hlbiB0aGUgd2lu
ZG93IHNob3VsZCBtb3ZlIGJ1dCBmYWlscyB0byBkcmF3IGl0J3MgbmV3IGNvbnRlbnQgd2hhdCBo
YXBwZW5zPwo+IAo+IEFyZSB0aGUgb3RoZXIgd2luZG93cyB3aGljaCB3b3VsZCBiZSBhZmZlY3Rl
ZCBieSB0aGUgbW92ZSBub3QgZHJhd24gYXMgd2VsbD8KCkJhc2ljYWxseSwgdGhlIGNvbXBvc2l0
b3IgZHJhd3MgaXRzIG91dHB1dCBhcyBpZiB0aGUgbmV3IGJ1ZmZlciBhbmQgYWxsIGNvbm5lY3Rl
ZCBXYXlsYW5kIHN0YXRlIGNoYW5nZXMgaGFkIG5vdCBiZWVuIGNvbW1pdHRlZCB5ZXQuCgoKLS0g
CkVhcnRobGluZyBNaWNoZWwgRMOkbnplciAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICBo
dHRwczovL3JlZGhhdC5jb20KTGlicmUgc29mdHdhcmUgZW50aHVzaWFzdCAgICAgICAgICAgICB8
ICAgICAgICAgICAgIE1lc2EgYW5kIFggZGV2ZWxvcGVyCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
