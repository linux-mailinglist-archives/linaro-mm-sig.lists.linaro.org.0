Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 454F93D7993
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 17:19:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 075C9634E5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 15:19:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7431F63503; Tue, 27 Jul 2021 15:19:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 74E1161A43;
	Tue, 27 Jul 2021 15:19:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2DA85604F6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 15:19:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 220F361A43; Tue, 27 Jul 2021 15:19:34 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id 03F4E604F6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 15:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id 6C5C220201D;
 Tue, 27 Jul 2021 17:19:31 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id BF3nS1YJscyH; Tue, 27 Jul 2021 17:19:31 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id 4135A20201A;
 Tue, 27 Jul 2021 17:19:30 +0200 (CEST)
Received: from localhost ([::1]) by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1m8Orh-000qpp-E5; Tue, 27 Jul 2021 17:19:29 +0200
To: Rob Clark <robdclark@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
Date: Tue, 27 Jul 2021 17:19:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
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
Cc: Matthew Brost <matthew.brost@intel.com>, Rob Clark <robdclark@chromium.org>,
 Jack Zhang <Jack.Zhang1@amd.com>, open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMS0wNy0yNyA1OjEyIHAubS4sIFJvYiBDbGFyayB3cm90ZToKPiBPbiBUdWUsIEp1bCAy
NywgMjAyMSBhdCA3OjUwIEFNIE1pY2hlbCBEw6RuemVyIDxtaWNoZWxAZGFlbnplci5uZXQ+IHdy
b3RlOgo+Pgo+PiBPbiAyMDIxLTA3LTI3IDE6MzggYS5tLiwgUm9iIENsYXJrIHdyb3RlOgo+Pj4g
RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgo+Pj4KPj4+IEJhc2VkIG9u
IGRpc2N1c3Npb24gZnJvbSBhIHByZXZpb3VzIHNlcmllc1sxXSB0byBhZGQgYSAiYm9vc3QiIG1l
Y2hhbmlzbQo+Pj4gd2hlbiwgZm9yIGV4YW1wbGUsIHZibGFuayBkZWFkbGluZXMgYXJlIG1pc3Nl
ZC4gIEluc3RlYWQgb2YgYSBib29zdAo+Pj4gY2FsbGJhY2ssIHRoaXMgYXBwcm9hY2ggYWRkcyBh
IHdheSB0byBzZXQgYSBkZWFkbGluZSBvbiB0aGUgZmVuY2UsIGJ5Cj4+PiB3aGljaCB0aGUgd2Fp
dGVyIHdvdWxkIGxpa2UgdG8gc2VlIHRoZSBmZW5jZSBzaWduYWxsZWQuCj4+Pgo+Pj4gSSd2ZSBu
b3QgeWV0IGhhZCBhIGNoYW5jZSB0byByZS13b3JrIHRoZSBkcm0vbXNtIHBhcnQgb2YgdGhpcywg
YnV0Cj4+PiB3YW50ZWQgdG8gc2VuZCB0aGlzIG91dCBhcyBhbiBSRkMgaW4gY2FzZSBJIGRvbid0
IGhhdmUgYSBjaGFuY2UgdG8KPj4+IGZpbmlzaCB0aGUgZHJtL21zbSBwYXJ0IHRoaXMgd2Vlay4K
Pj4+Cj4+PiBPcmlnaW5hbCBkZXNjcmlwdGlvbjoKPj4+Cj4+PiBJbiBzb21lIGNhc2VzLCBsaWtl
IGRvdWJsZS1idWZmZXJlZCByZW5kZXJpbmcsIG1pc3NpbmcgdmJsYW5rcyBjYW4KPj4+IHRyaWNr
IHRoZSBHUFUgaW50byBydW5uaW5nIGF0IGEgbG93ZXIgZnJlcXVlbmNlLCB3aGVuIHJlYWxseSB3
ZQo+Pj4gd2FudCB0byBiZSBydW5uaW5nIGF0IGEgaGlnaGVyIGZyZXF1ZW5jeSB0byBub3QgbWlz
cyB0aGUgdmJsYW5rcwo+Pj4gaW4gdGhlIGZpcnN0IHBsYWNlLgo+Pj4KPj4+IFRoaXMgaXMgcGFy
dGlhbGx5IGluc3BpcmVkIGJ5IGEgdHJpY2sgaTkxNSBkb2VzLCBidXQgaW1wbGVtZW50ZWQKPj4+
IHZpYSBkbWEtZmVuY2UgZm9yIGEgY291cGxlIG9mIHJlYXNvbnM6Cj4+Pgo+Pj4gMSkgVG8gY29u
dGludWUgdG8gYmUgYWJsZSB0byB1c2UgdGhlIGF0b21pYyBoZWxwZXJzCj4+PiAyKSBUbyBzdXBw
b3J0IGNhc2VzIHdoZXJlIGRpc3BsYXkgYW5kIGdwdSBhcmUgZGlmZmVyZW50IGRyaXZlcnMKPj4+
Cj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85MDMzMS8K
Pj4KPj4gVW5mb3J0dW5hdGVseSwgbm9uZSBvZiB0aGVzZSBhcHByb2FjaGVzIHdpbGwgaGF2ZSB0
aGUgZnVsbCBpbnRlbmRlZCBlZmZlY3Qgb25jZSBXYXlsYW5kIGNvbXBvc2l0b3JzIHN0YXJ0IHdh
aXRpbmcgZm9yIGNsaWVudCBidWZmZXJzIHRvIGJlY29tZSBpZGxlIGJlZm9yZSB1c2luZyB0aGVt
IGZvciBhbiBvdXRwdXQgZnJhbWUgKHRvIHByZXZlbnQgb3V0cHV0IGZyYW1lcyBmcm9tIGdldHRp
bmcgZGVsYXllZCBieSBjbGllbnQgd29yaykuIFNlZSBodHRwczovL2dpdGxhYi5nbm9tZS5vcmcv
R05PTUUvbXV0dGVyLy0vbWVyZ2VfcmVxdWVzdHMvMTg4MCAoc2hhbWVsZXNzIHBsdWcgOikgZm9y
IGEgcHJvb2Ygb2YgY29uY2VwdCBvZiB0aGlzIGZvciBtdXR0ZXIuIFRoZSBib29zdCB3aWxsIG9u
bHkgYWZmZWN0IHRoZSBjb21wb3NpdG9yJ3Mgb3duIEdQVSB3b3JrLCBub3QgdGhlIGNsaWVudCB3
b3JrICh3aGljaCBtZWFucyBubyBlZmZlY3QgYXQgYWxsIGZvciBmdWxsc2NyZWVuIGFwcHMgd2hl
cmUgdGhlIGNvbXBvc2l0b3IgY2FuIHNjYW4gb3V0IHRoZSBjbGllbnQgYnVmZmVycyBkaXJlY3Rs
eSkuCj4+Cj4gCj4gSSBndWVzcyB5b3UgbWVhbiAibm8gZWZmZWN0IGF0IGFsbCAqZXhjZXB0KiBm
b3IgZnVsbHNjcmVlbi4uLiI/CgpJIG1lYW50IHdoYXQgSSB3cm90ZTogVGhlIGNvbXBvc2l0b3Ig
d2lsbCB3YWl0IGZvciB0aGUgbmV4dCBidWZmZXIgdG8gYmVjb21lIGlkbGUsIHNvIHRoZXJlJ3Mg
bm8gYm9vc3QgZnJvbSB0aGlzIG1lY2hhbmlzbSBmb3IgdGhlIGNsaWVudCBkcmF3aW5nIHRvIHRo
YXQgYnVmZmVyLiBBbmQgc2luY2UgdGhlIGNvbXBvc2l0b3IgZG9lcyBubyBkcmF3aW5nIG9mIGl0
cyBvd24gaW4gdGhpcyBjYXNlLCB0aGVyZSdzIG5vIGJvb3N0IGZyb20gdGhhdCBlaXRoZXIuCgoK
PiBJJ2QgcGVyaGFwcyByZWNvbW1lbmQgdGhhdCB3YXlsYW5kIGNvbXBvc2l0b3JzLCBpbiBjYXNl
cyB3aGVyZSBvbmx5IGEKPiBzaW5nbGUgbGF5ZXIgaXMgY2hhbmdpbmcsIG5vdCB0cnkgdG8gYmUg
Y2xldmVyIGFuZCBqdXN0IHB1c2ggdGhlCj4gdXBkYXRlIGRvd24gdG8gdGhlIGtlcm5lbC4KCkV2
ZW4ganVzdCBmb3IgdGhlIGZ1bGxzY3JlZW4gZGlyZWN0IHNjYW5vdXQgY2FzZSwgdGhhdCB3b3Vs
ZCByZXF1aXJlIHNvbWUga2luZCBvZiBhdG9taWMgS01TIEFQSSBleHRlbnNpb24gdG8gYWxsb3cg
cXVldWluZyBtdWx0aXBsZSBwYWdlIGZsaXBzIGZvciB0aGUgc2FtZSBDUlRDLgoKRm9yIG90aGVy
IGNhc2VzLCB0aGlzIHdvdWxkIGFsc28gcmVxdWlyZSBhIG1lY2hhbmlzbSB0byBjYW5jZWwgYSBw
ZW5kaW5nIGF0b21pYyBjb21taXQsIGZvciB3aGVuIGFub3RoZXIgc3VyZmFjZSB1cGRhdGUgY29t
ZXMgaW4gYmVmb3JlIHRoZSBjb21wb3NpdG9yJ3MgZGVhZGxpbmUsIHdoaWNoIGFmZmVjdHMgdGhl
IHByZXZpb3VzbHkgc2luZ2xlIHVwZGF0aW5nIHN1cmZhY2UgYXMgd2VsbC4KCgotLSAKRWFydGhs
aW5nIE1pY2hlbCBEw6RuemVyICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgIGh0dHBzOi8v
cmVkaGF0LmNvbQpMaWJyZSBzb2Z0d2FyZSBlbnRodXNpYXN0ICAgICAgICAgICAgIHwgICAgICAg
ICAgICAgTWVzYSBhbmQgWCBkZXZlbG9wZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
