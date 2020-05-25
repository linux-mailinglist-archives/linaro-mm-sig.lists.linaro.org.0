Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 289D81E11C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2020 17:31:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E23466193C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2020 15:31:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D438961947; Mon, 25 May 2020 15:31:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 823D2618D3;
	Mon, 25 May 2020 15:31:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0BE9C61805
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 May 2020 15:31:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DE2F7618D3; Mon, 25 May 2020 15:31:11 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id 9E4A361805
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 May 2020 15:31:10 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id h7so14076073otr.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 May 2020 08:31:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bAUJzoc7IqUjSn+yo0peq2R8rxLuXszL8v1+SHoHNg4=;
 b=nJdxzyw5sI+gu/NZPNz3Y8tczaJwbpPpkoLt41a2REANbtmQIQFVwUxZOL4vdXUL86
 8CcZ0UX8EE+oI+MSsSza7w2WRprCumzrcJl8DcW/fgtZYKt5KkiQl0jYL7Up7sMDGpFn
 9PRxEx4aRrhYHsbLbmN5dmEyjHC0eyTtkz2mrja/lK28xn8Mp9UAYsN4RWe5CtopQL6e
 TrnXqEQyGyplUFLGd0JPdUQaSaM7HpW7/IEWflR+OETvwsMtmGRprwQokq52FF3Fuv3+
 bGQ7n5bLN1ukCNp2Cj4snnuJ+25TKxpde9QvKtEn889oIwDo/kSCKwuaDHf2cjoVpueI
 KldA==
X-Gm-Message-State: AOAM5331C8sEK8zCIo+ERrH+Lxcyr0LpXQu15aujeRMS97DmMgVHRYmz
 Edd8Wak/4bmT/Ynomi9FxAmxFpYJaGD6s9QprfBrag==
X-Google-Smtp-Source: ABdhPJzkcrR3yAMwEAELXE9cys4iQedV/n7q7FwrzlUwqN0x19DN2aghlSLeBpaRXuxxoHbrXZYQHIFlGr+0T8f9mVM=
X-Received: by 2002:a9d:768a:: with SMTP id j10mr5068453otl.188.1590420670094; 
 Mon, 25 May 2020 08:31:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
 <20200512085944.222637-9-daniel.vetter@ffwll.ch>
In-Reply-To: <20200512085944.222637-9-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 25 May 2020 17:30:59 +0200
Message-ID: <CAKMK7uHXjFcVZuV-gF-mGYZVG8CbosoxWKN5MKV+rBXwEr3JZw@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Lucas Stach <l.stach@pengutronix.de>, 
 Christian Gmeiner <christian.gmeiner@gmail.com>, Qiang Yu <yuq825@gmail.com>, 
 Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, 
 Steven Price <Steven.Price@arm.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 "Anholt, Eric" <eric@anholt.net>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [RFC 08/17] drm/scheduler: use dma-fence
	annotations in main thread
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

T24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMTE6MDAgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cj4KPiBJZiB0aGUgc2NoZWR1bGVyIHJ0IHRocmVhZCBnZXRz
IHN0dWNrIG9uIGEgbXV0ZXggdGhhdCB3ZSdyZSBob2xkaW5nCj4gd2hpbGUgd2FpdGluZyBmb3Ig
Z3B1IHdvcmtsb2FkcyB0byBjb21wbGV0ZSwgd2UgaGF2ZSBhIHByb2JsZW0uCj4KPiBBZGQgZG1h
LWZlbmNlIGFubm90YXRpb25zIHNvIHRoYXQgbG9ja2RlcCBjYW4gY2hlY2sgdGhpcyBmb3IgdXMu
Cj4KPiBJJ3ZlIHRyaWVkIHRvIHF1aXRlIGNhcmVmdWxseSByZXZpZXcgdGhpcywgYW5kIEkgdGhp
bmsgaXQncyBhdCB0aGUKPiByaWdodCBzcG90LiBCdXQgb2J2aW9zbHkgbm8gZXhwZXJ0IG9uIGRy
bSBzY2hlZHVsZXIuCj4KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IENjOiBsaW51eC1yZG1hQHZnZXIua2VybmVs
Lm9yZwo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgo+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+CgpBZGRpbmcgYSBidW5jaCBtb3JlIHBlb3BsZSBmcm9tIGRyaXZlcnMgdXNpbmcgdGhl
IGRybS9zY2hlZHVsZXIgKHNvCnRoYXQncyBtYWludGFpbmVycyBmb3IgZXRuYXZpdiwgbGltYSwg
cGFuZnJvc3QsIGFuZCB2M2Qgb24gdG9wIG9mCmFtZGdwdSBmb2xrcyBhcmxyZWFkeSBvbiBjYyku
IEFueSB0YWtlcyBvciB0ZXN0aW5nIG9uIHRoaXMgYW5kIHdlbGwKdGhlIGVudGlyZSBzZXJpZXMg
dmVyeSBtdWNoIGFwcHJlY2lhdGVkLCB0aGVyZSdzIGFsc28gYW5vdGhlciBwYXRjaCB0bwphbm90
YXRlIHRoZSB0ZHIgd29yayBpbiB0aGlzIHNlcmllcy4gUGx1cyBvZmMgdGhlIHByZXAgd29yay4K
ClRoYW5rcywgRGFuaWVsCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X21haW4uYyB8IDYgKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCj4gaW5kZXggMmYzMTkxMDJhZTlm
Li4wNmE3MzZlNTA2YWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9z
Y2hlZF9tYWluLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4u
Ywo+IEBAIC03NjMsOSArNzYzLDEyIEBAIHN0YXRpYyBpbnQgZHJtX3NjaGVkX21haW4odm9pZCAq
cGFyYW0pCj4gICAgICAgICBzdHJ1Y3Qgc2NoZWRfcGFyYW0gc3BhcmFtID0gey5zY2hlZF9wcmlv
cml0eSA9IDF9Owo+ICAgICAgICAgc3RydWN0IGRybV9ncHVfc2NoZWR1bGVyICpzY2hlZCA9IChz
dHJ1Y3QgZHJtX2dwdV9zY2hlZHVsZXIgKilwYXJhbTsKPiAgICAgICAgIGludCByOwo+ICsgICAg
ICAgYm9vbCBmZW5jZV9jb29raWU7Cj4KPiAgICAgICAgIHNjaGVkX3NldHNjaGVkdWxlcihjdXJy
ZW50LCBTQ0hFRF9GSUZPLCAmc3BhcmFtKTsKPgo+ICsgICAgICAgZmVuY2VfY29va2llID0gZG1h
X2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsKPiArCj4gICAgICAgICB3aGlsZSAoIWt0aHJlYWRf
c2hvdWxkX3N0b3AoKSkgewo+ICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0
eSAqZW50aXR5ID0gTlVMTDsKPiAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9zY2hlZF9mZW5j
ZSAqc19mZW5jZTsKPiBAQCAtODIzLDYgKzgyNiw5IEBAIHN0YXRpYyBpbnQgZHJtX3NjaGVkX21h
aW4odm9pZCAqcGFyYW0pCj4KPiAgICAgICAgICAgICAgICAgd2FrZV91cCgmc2NoZWQtPmpvYl9z
Y2hlZHVsZWQpOwo+ICAgICAgICAgfQo+ICsKPiArICAgICAgIGRtYV9mZW5jZV9lbmRfc2lnbmFs
bGluZyhmZW5jZV9jb29raWUpOwo+ICsKPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiAtLQo+
IDIuMjYuMgo+CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
