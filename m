Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A505C1627DF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2020 15:15:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1A62619AF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2020 14:15:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BDB36619CD; Tue, 18 Feb 2020 14:15:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A57C3619B4;
	Tue, 18 Feb 2020 14:15:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7CC8F6197A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2020 14:14:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7093E619B4; Tue, 18 Feb 2020 14:14:57 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by lists.linaro.org (Postfix) with ESMTPS id EF1B16197A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2020 14:14:55 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id i1so20185612oie.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2020 06:14:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hujydpLDAIwrQEmjt1moUxKixDzmIxfIWJaumohuz2g=;
 b=mVfs9qZxSkNylaBU5cHm+o1EnHBKI7SUkg/T6Ljkl3BFxuhXQtxtqoRkc/JC6SByH7
 Gc04Y87DVSSArIvix1NVfvKq32Mmkz0WlpoFc7CLobpmSOw24Gs8k6UxB1SCJdUy5wp9
 tA3402Ei1ilRu2BfUzqL8n5ZACMkxH5tmYrfswvFhiAa47YvDvLuzdAglrl5BA7SKRbd
 cuBQhY33Ps38IHgCqFXeya8FoEKBw63ajlj/tQieXDYSgeoz/QvbYXQPXJDHNyEVw1ko
 xU2oOHsDXk5u1SmZm2czMzYVvdl08/pwIWlwZBCN1vYtPwTNjHCKrdrHua/iOyMxNqZa
 OyJg==
X-Gm-Message-State: APjAAAWSWaTSqOLrqhIEDUm5fEgc/pgkLbG+/gxwlg1mKOb6WlQhvWqd
 zdMo6983A8wRePK9M/k5a0P0/7IFUa83t+OOxIBjvg==
X-Google-Smtp-Source: APXvYqxmhP/i2CWA/jLwh/X5PQyBCOK06TIIexdtLpaooBTFKMia+m5jnBCXaOMn+y8Wem2t7DpcOrgTUON6RMqg5CE=
X-Received: by 2002:a05:6808:319:: with SMTP id
 i25mr1373711oie.128.1582035295462; 
 Tue, 18 Feb 2020 06:14:55 -0800 (PST)
MIME-Version: 1.0
References: <20191029104049.9011-1-christian.koenig@amd.com>
 <20191029104049.9011-2-christian.koenig@amd.com>
 <20191105102045.GC10326@phenom.ffwll.local>
 <cb607ed5-eaeb-5332-d1de-77cae8512c1d@gmail.com>
In-Reply-To: <cb607ed5-eaeb-5332-d1de-77cae8512c1d@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 18 Feb 2020 15:14:44 +0100
Message-ID: <CAKMK7uHuD1PP4uX2868=oY7mbpfWr76bjjFd9GreP=fm+b17gA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/5] dma-buf: add dynamic DMA-buf
	handling v14
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

T24gVHVlLCBGZWIgMTgsIDIwMjAgYXQgMjoyMCBQTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBBbSAwNS4xMS4xOSB1bSAxMToy
MCBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiBPbiBUdWUsIE9jdCAyOSwgMjAxOSBhdCAxMTo0
MDo0NUFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+ID4gW1NOSVBdCj4gPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jCj4gPj4gaW5kZXggZDM3N2I0Y2E2NmJmLi5jZTI5M2NlZTc2ZWQgMTAwNjQ0Cj4gPj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMKPiA+PiBAQCAtNTI5LDYgKzUyOSwxMCBAQCBzdHJ1Y3QgZG1hX2J1ZiAqZG1h
X2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQo+
ID4+ICAgICAgICAgICAgICAgICAgZXhwX2luZm8tPm9wcy0+ZHluYW1pY19tYXBwaW5nKSkKPiA+
PiAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4gPj4KPiA+PiArICAgIGlm
IChXQVJOX09OKCFleHBfaW5mby0+b3BzLT5keW5hbWljX21hcHBpbmcgJiYKPiA+PiArICAgICAg
ICAgICAgICAgIChleHBfaW5mby0+b3BzLT5waW4gfHwgZXhwX2luZm8tPm9wcy0+dW5waW4pKSkK
PiA+PiArICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4gPiBJbW8gbWFrZSB0
aGlzIHN0cm9uZ2VyLCBoYXZlIGEgZHluYW1pYyBtYXBwaW5nIGlmZiB0aGVyZSdzIGJvdGggYSBw
aW4gYW5kCj4gPiB1bnBpbiBmdW5jdGlvbi4gT3RoZXJ3aXNlIHRoaXMgZG9lc24ndCBtYWtlIGEg
bG90IG9mIHNlbnNlIHRvIG1lLgo+Cj4gSSB3YW50IHRvIGF2b2lkIHRoYXQgZm9yIHRoZSBpbml0
aWFsIGltcGxlbWVudGF0aW9uLiBTbyBmYXIgZHluYW1pYyBvbmx5Cj4gbWVhbnQgdGhhdCB3ZSBo
YXZlIHRoZSBuZXcgbG9ja2luZyBzZW1hbnRpY3MuCj4KPiBXZSBjb3VsZCBtYWtlIHRoYXQgbWFu
ZGF0b3J5IGFmdGVyIHRoaXMgcGF0Y2ggc2V0IHdoZW4gYW1kZ3B1IGlzCj4gbWlncmF0ZWQgYW5k
IGhhcyBpbXBsZW1lbnRlZCB0aGUgbmVjZXNzYXJ5IGNhbGxiYWNrcy4KCk9rIGlmIHdlIGdvIHdp
dGggQ09ORklHX0VYUEVSSU1FTlRBTF9EWU5fRE1BQlVGIG9yIHdoYXRldmVyIGl0J3MgZ29pbmcK
dG8gYmUgY2FsbGVkIEknbSB0b3RhbGx5IG9rIGlmIHdlIGp1c3Qgbm90ZSB0aGlzIHNvbWV3aGVy
ZSBhcyBhIEZJWE1FCihtYXliZSBqdXN0IGlubGluZSBpbiBhIGNvZGUgY29tbWVudCBuZXh0IHRv
IHRoZSBtYWluICNpZmRlZiBpbgpkbWEtYnVmLmguIFNhbWUgZm9yIGFsbCB5b3VyIG90aGVyIGNv
bW1lbnRzIGJlbG93LgoKQ2hlZXJzLCBEYW5pZWwKCj4KPiA+PiBbU05JUF0KPiA+PiBAQCAtODIx
LDEzICs4NzcsMjMgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKPiA+PiAgICAgICAgICAgICAgcmV0dXJu
IGF0dGFjaC0+c2d0Owo+ID4+ICAgICAgfQo+ID4+Cj4gPj4gLSAgICBpZiAoZG1hX2J1Zl9pc19k
eW5hbWljKGF0dGFjaC0+ZG1hYnVmKSkKPiA+PiArICAgIGlmIChkbWFfYnVmX2lzX2R5bmFtaWMo
YXR0YWNoLT5kbWFidWYpKSB7Cj4gPj4gICAgICAgICAgICAgIGRtYV9yZXN2X2Fzc2VydF9oZWxk
KGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsKPiA+PiArICAgICAgICAgICAgaWYgKCFhdHRhY2gtPmlt
cG9ydGVyX29wcy0+bW92ZV9ub3RpZnkpIHsKPiA+IEltbyBqdXN0IHJlcXVpcmUgLT5tb3ZlX25v
dGlmeSBmb3IgaW1wb3J0ZXJzIHRoYXQgZ2l2ZSB5b3UgYW4gb3BzCj4gPiBmdW5jdGlvbi4gRG9l
c24ndCByZWFsbHkgbWFrZSBzZW5zZSB0byBhbGxvdyBkeW5hbWljIHdpdGhvdXQgc3VwcG9ydAo+
ID4gLT5tb3ZlX25vdGlmeS4KPgo+IFNhbWUgdGhpbmcgaGVyZS4gV2UgY291bGQgbWFrZSB0aGF0
IG1hbmRhdG9yeSBhbmQgY2xlYW4gaXQgdXAgYWZ0ZXIKPiBtaWdyYXRpbmcgYW1kZ3B1Lgo+Cj4g
Pj4gW1NOSVBdCj4gPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5j
bHVkZS9saW51eC9kbWEtYnVmLmgKPiA+PiBpbmRleCBhZjczZjgzNWM1MWMuLjc0NTZiYjkzNzYz
NSAxMDA2NDQKPiA+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+ID4+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj4gPj4gQEAgLTkzLDE0ICs5Myw0MCBAQCBzdHJ1Y3QgZG1h
X2J1Zl9vcHMgewo+ID4+ICAgICAgICovCj4gPj4gICAgICB2b2lkICgqZGV0YWNoKShzdHJ1Y3Qg
ZG1hX2J1ZiAqLCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICopOwo+ID4+Cj4gPj4gKyAgICAv
KioKPiA+PiArICAgICAqIEBwaW46Cj4gPj4gKyAgICAgKgo+ID4+ICsgICAgICogVGhpcyBpcyBj
YWxsZWQgYnkgZG1hX2J1Zl9waW4gYW5kIGxldHMgdGhlIGV4cG9ydGVyIGtub3cgdGhhdCB0aGUK
PiA+PiArICAgICAqIERNQS1idWYgY2FuJ3QgYmUgbW92ZWQgYW55IG1vcmUuCj4gPiBJIHRoaW5r
IHdlIHNob3VsZCBhZGQgYSB3YXJuaW5nIGhlcmUgdGhhdCBwaW5uaW5nIGlzIG9ubHkgb2sgZm9y
IGxpbWl0ZWQKPiA+IHVzZS1jYXNlcyAobGlrZSBzY2Fub3V0IG9yIHNpbWlsYXIpLCBhbmQgbm90
IGFzIHBhcnQgb2YgZ2VuZXJhbCBidWZmZXIKPiA+IG1hbmFnZW1lbnQuCj4gPgo+ID4gaTkxNSB1
c2VzIHRlbXBvcmFyeSBwaW5zIHRocm91Z2ggaXQncyBleGVjYnVmIG1hbmFnZW1lbnQgKGFuZCBl
dmVyeXdoZXJlCj4gPiBlbHNlKSwgc28gd2UgaGF2ZSBhIF9sb3RfIG9mIHBlb3BsZSBpbiBkcmkt
ZGV2ZWwgd2l0aCBxdWl0ZSBkaWZmZXJlbnQKPiA+IGlkZWFzIG9mIHdoYXQgdGhpcyBtaWdodCBi
ZSBmb3IgOi0pCj4KPiBZZWFoLCB0aGF0IGlzIGFsc28gYSBnb29kIGlkZWEgZm9yIHVzLiBXcm90
ZSBhIG9uZSBsaW5lciwgYnV0IHlvdSBtaWdodAo+IHdhbnQgdG8gZG91YmxlIGNoZWNrIHRoZSB3
b3JkaW5nLgo+Cj4gPj4gW1NOSVBdCj4gPj4gQEAgLTE0MSw5ICsxNjcsNiBAQCBzdHJ1Y3QgZG1h
X2J1Zl9vcHMgewo+ID4+ICAgICAgICoKPiA+PiAgICAgICAqIFRoaXMgaXMgY2FsbGVkIGJ5IGRt
YV9idWZfdW5tYXBfYXR0YWNobWVudCgpIGFuZCBzaG91bGQgdW5tYXAgYW5kCj4gPj4gICAgICAg
KiByZWxlYXNlIHRoZSAmc2dfdGFibGUgYWxsb2NhdGVkIGluIEBtYXBfZG1hX2J1ZiwgYW5kIGl0
IGlzIG1hbmRhdG9yeS4KPiA+PiAtICAgICAqIEl0IHNob3VsZCBhbHNvIHVucGluIHRoZSBiYWNr
aW5nIHN0b3JhZ2UgaWYgdGhpcyBpcyB0aGUgbGFzdCBtYXBwaW5nCj4gPj4gLSAgICAgKiBvZiB0
aGUgRE1BIGJ1ZmZlciwgaXQgdGhlIGV4cG9ydGVyIHN1cHBvcnRzIGJhY2tpbmcgc3RvcmFnZQo+
ID4+IC0gICAgICogbWlncmF0aW9uLgo+ID4gVGhpcyBpcyBzdGlsbCB2YWxpZCBmb3Igbm9uLWR5
bmFtaWMgZXhwb3J0ZXJzLiBJbW8ga2VlcCBidXQgY2xhcmlmeSB0aGF0Lgo+Cj4gT0ssIGNoYW5n
ZWQuCj4KPiA+PiBbU05JUF0KPiA+PiBAQCAtNDM4LDE2ICs0OTEsMTkgQEAgc3RhdGljIGlubGlu
ZSBib29sIGRtYV9idWZfaXNfZHluYW1pYyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQo+ID4+ICAg
c3RhdGljIGlubGluZSBib29sCj4gPj4gICBkbWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCj4gPj4gICB7Cj4gPj4gLSAgICByZXR1
cm4gYXR0YWNoLT5keW5hbWljX21hcHBpbmc7Cj4gPj4gKyAgICByZXR1cm4gISFhdHRhY2gtPmlt
cG9ydGVyX29wczsKPiA+IEhtIHdoeSBub3QgZG8gdGhlIHNhbWUgZm9yIGV4cG9ydGVycywgYW5k
IG1ha2UgdGhlbSBkeW5hbWljIGlmZiB0aGV5IGhhdmUKPiA+IHBpbi91bnBpbj8KPgo+IFNhbWUg
dGhpbmcgYXMgYmVmb3JlLCB0byBtaWdyYXRlIGFtZGdwdSB0byB0aGUgbmV3IGludGVyZmFjZSBm
aXJzdCBhbmQKPiB0aGVuIG1ha2UgaXQgbWFuZGF0b3J5Lgo+Cj4gSSB0aGluayBJIHdpbGwganVz
dCB3cml0ZSBhIGNsZWFudXAgcGF0Y2ggaW50byB0aGUgc2VyaWVzIHdoaWNoIGNvbWVzCj4gYWZ0
ZXIgdGhlIGFtZGdwdSBjaGFuZ2VzLgo+Cj4gVGhhbmtzLAo+IENocmlzdGlhbi4KCgoKLS0gCkRh
bmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkg
NzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
