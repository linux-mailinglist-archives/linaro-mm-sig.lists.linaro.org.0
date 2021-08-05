Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D583E1F14
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Aug 2021 00:58:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38F98634C4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Aug 2021 22:58:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 551E3622E7; Thu,  5 Aug 2021 22:58:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 440FE617DE;
	Thu,  5 Aug 2021 22:58:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4B5336073C
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Aug 2021 22:58:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3FD7F617DE; Thu,  5 Aug 2021 22:58:44 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 39B926073C
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Aug 2021 22:58:42 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id z4so8569045wrv.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Aug 2021 15:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=q6beibzNrILHq2SGf9/COm2CxcmfWx9qSxPEsXfxPtw=;
 b=uNPbQwXzK6ouX5+p8QgoDFyf/NIPsbdwWueKLuI4V9JnYMwxCFtlxOAatI83UljIzU
 2EqTDXeUqwJHIWDUgztaATkmLbK5KEMY3vA/RR9DF3nyQmpfL6mYYw9raKkpiX910SGY
 +bzOlnew+FAC5v4QGPN8V4suXFMEv2wja3fav3Vr6NaFnDdi2wRQsnTxvZpAbb8XHhJb
 v27feG5SYEZc2xwnJAq/BCKKW5DG0YUn/fhyTg75Gdj9K79SHoSmGg9NSY1QArSnhep+
 P1ikQyb0GNisUnnUCAWuYxLTFGDkQdyDSyS5v9k/bxh9W/AN5iBS8LXQY1CY5J5gFwI8
 a8QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=q6beibzNrILHq2SGf9/COm2CxcmfWx9qSxPEsXfxPtw=;
 b=SHRD9c1xRsPcvOmHh+f7suN81lWb49zM2cyPStJk21bLAf+KdNuDD6dGd9BYFdG59X
 hj6ZoSh44Iqa8mJnz6vSP/VA1FfMVqwzAD6RoUSSMeAgzeOxW5bmVvHe0ImS72SMoR8r
 8bKgR8AnqLEpyH17Fat78t6KwT0w4gPsVz5hwktzULMkvpjxcEta2WJvuhxi8iB2EhWD
 9mpUDM1C7Ri94rhJnvZVgxAW1D1g8j0RN24hYwfdg6U49IPMPkabwyjqddl3CsAEXPny
 pWY+3iXClfV5HhsGEA0klz7hnPv8LuYA4qUp2jbXzEb6LL+0x+yPPETYPC6Zzi9ZFp2P
 VwVw==
X-Gm-Message-State: AOAM533+0h8uZR+i8wPNtHBvRzwq1iK4t5BBRzUMmJzAipHj6qiRv0qo
 JSZs8qvnNYt2O/Fy4wePjhSgOfkjUM/U0qN8xE0=
X-Google-Smtp-Source: ABdhPJwkqoi7Te+8IVA6FyKKRv4mbRhIKOatAn/IO6gqCZx4Kj1mou4VEJhavjSimHsrRoYATzTuNhXPQ7l4hmxuN5E=
X-Received: by 2002:a05:6000:1ce:: with SMTP id
 t14mr7751825wrx.83.1628204321241; 
 Thu, 05 Aug 2021 15:58:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-3-daniel.vetter@ffwll.ch>
In-Reply-To: <20210805104705.862416-3-daniel.vetter@ffwll.ch>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 5 Aug 2021 16:02:56 -0700
Message-ID: <CAF6AEGvkmZhcPWP58VnL1OXAeJ5tg7v13xkkiYBwkpBi1YiT4g@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v5 02/20] drm/msm: Fix drm/sched point
 of no return rules
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
Cc: Rob Clark <robdclark@chromium.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sean Paul <sean@poorly.run>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCBBdWcgNSwgMjAyMSBhdCAzOjQ3IEFNIERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+Cj4gT3JpZ2luYWxseSBkcm1fc2NoZWRfam9iX2luaXQgd2Fz
IHRoZSBwb2ludCBvZiBubyByZXR1cm4sIGFmdGVyIHdoaWNoCj4gZHJpdmVycyBtdXN0IHN1Ym1p
dCBhIGpvYi4gSSd2ZSBzcGxpdCB0aGF0IHVwLCB3aGljaCBhbGxvd3MgdXMgdG8gZml4Cj4gdGhp
cyBpc3N1ZSBwcmV0dHkgZWFzaWx5Lgo+Cj4gT25seSB0aGluZyB3ZSBoYXZlIHRvIHRha2UgY2Fy
ZSBvZiBpcyB0byBub3Qgc2tpcCB0byBlcnJvciBwYXRocyBhZnRlcgo+IHRoYXQuIE90aGVyIGRy
aXZlcnMgZG8gdGhpcyB0aGUgc2FtZSBmb3Igb3V0LWZlbmNlIGFuZCBzaW1pbGFyIHRoaW5ncy4K
Pgo+IEZpeGVzOiAxZDhhNWNhNDM2ZWUgKCJkcm0vbXNtOiBDb252ZXJzaW9uIHRvIGRybSBzY2hl
ZHVsZXIiKQo+IENjOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4gQ2M6IFJv
YiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4KPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3Js
eS5ydW4+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6
ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBsaW51
eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gQ2M6IGZyZWVkcmVub0BsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgt
bWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
Zwo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMgfCAxNSArKysr
KysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMKPiBpbmRleCA2ZDZjNDRm
MGUxZjMuLmQwZWQ0ZGRjNTA5ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21z
bV9nZW1fc3VibWl0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0
LmMKPiBAQCAtNTIsOSArNTIsNiBAQCBzdGF0aWMgc3RydWN0IG1zbV9nZW1fc3VibWl0ICpzdWJt
aXRfY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gICAgICAgICAgICAgICAgIHJldHVy
biBFUlJfUFRSKHJldCk7Cj4gICAgICAgICB9Cj4KPiAtICAgICAgIC8qIEZJWE1FOiB0aGlzIGlz
IHdheSB0b28gZWFybHkgKi8KPiAtICAgICAgIGRybV9zY2hlZF9qb2JfYXJtKCZqb2ItPmJhc2Up
Owo+IC0KPiAgICAgICAgIHhhX2luaXRfZmxhZ3MoJnN1Ym1pdC0+ZGVwcywgWEFfRkxBR1NfQUxM
T0MpOwo+Cj4gICAgICAgICBrcmVmX2luaXQoJnN1Ym1pdC0+cmVmKTsKPiBAQCAtODgzLDYgKzg4
MCw5IEBAIGludCBtc21faW9jdGxfZ2VtX3N1Ym1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2
b2lkICpkYXRhLAo+Cj4gICAgICAgICBzdWJtaXQtPnVzZXJfZmVuY2UgPSBkbWFfZmVuY2VfZ2V0
KCZzdWJtaXQtPmJhc2Uuc19mZW5jZS0+ZmluaXNoZWQpOwo+Cj4gKyAgICAgICAvKiBwb2ludCBv
ZiBubyByZXR1cm4sIHdlIF9oYXZlXyB0byBzdWJtaXQgbm8gbWF0dGVyIHdoYXQgKi8KPiArICAg
ICAgIGRybV9zY2hlZF9qb2JfYXJtKCZzdWJtaXQtPmJhc2UpOwo+ICsKPiAgICAgICAgIC8qCj4g
ICAgICAgICAgKiBBbGxvY2F0ZSBhbiBpZCB3aGljaCBjYW4gYmUgdXNlZCBieSBXQUlUX0ZFTkNF
IGlvY3RsIHRvIG1hcCBiYWNrCj4gICAgICAgICAgKiB0byB0aGUgdW5kZXJseWluZyBmZW5jZS4K
PiBAQCAtODkyLDE3ICs4OTIsMTYgQEAgaW50IG1zbV9pb2N0bF9nZW1fc3VibWl0KHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAgICAgICBpZiAoc3VibWl0LT5mZW5jZV9p
ZCA8IDApIHsKPiAgICAgICAgICAgICAgICAgcmV0ID0gc3VibWl0LT5mZW5jZV9pZCA9IDA7Cj4g
ICAgICAgICAgICAgICAgIHN1Ym1pdC0+ZmVuY2VfaWQgPSAwOwo+IC0gICAgICAgICAgICAgICBn
b3RvIG91dDsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgaWYgKGFyZ3MtPmZsYWdzICYgTVNNX1NV
Qk1JVF9GRU5DRV9GRF9PVVQpIHsKPiArICAgICAgIGlmIChyZXQgPT0gMCAmJiBhcmdzLT5mbGFn
cyAmIE1TTV9TVUJNSVRfRkVOQ0VfRkRfT1VUKSB7Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCBz
eW5jX2ZpbGUgKnN5bmNfZmlsZSA9IHN5bmNfZmlsZV9jcmVhdGUoc3VibWl0LT51c2VyX2ZlbmNl
KTsKPiAgICAgICAgICAgICAgICAgaWYgKCFzeW5jX2ZpbGUpIHsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICByZXQgPSAtRU5PTUVNOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0
Owo+ICsgICAgICAgICAgICAgICB9IGVsc2Ugewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGZk
X2luc3RhbGwob3V0X2ZlbmNlX2ZkLCBzeW5jX2ZpbGUtPmZpbGUpOwo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIGFyZ3MtPmZlbmNlX2ZkID0gb3V0X2ZlbmNlX2ZkOwo+ICAgICAgICAgICAgICAg
ICB9Cj4gLSAgICAgICAgICAgICAgIGZkX2luc3RhbGwob3V0X2ZlbmNlX2ZkLCBzeW5jX2ZpbGUt
PmZpbGUpOwo+IC0gICAgICAgICAgICAgICBhcmdzLT5mZW5jZV9mZCA9IG91dF9mZW5jZV9mZDsK
Ckkgd29uZGVyIGlmIGluc3RlYWQgd2Ugc2hvdWxkIChhcHByb3hpbWF0ZWx5KSB1bmRvICJkcm0v
bXNtL3N1Ym1pdDoKU2ltcGxpZnkgb3V0LWZlbmNlLWZkIGhhbmRsaW5nIiBzbyB0aGF0IHRoZSBw
b2ludCB0aGF0IGl0IGNvdWxkIGZhaWwKaXMgbW92ZWQgdXAgYWhlYWQgb2YgdGhlIGRybV9zY2hl
ZF9qb2JfYXJtKCk/CgpBbHNvLCBkb2VzIHRoZSBkbWFfZmVuY2VfZ2V0KCkgd29yayBiZWZvcmUg
ZHJtX3NjaGVkX2pvYl9hcm0oKT8gIEZyb20KYSBxdWljayBsb29rLCBpdCBsb29rcyBsaWtlIGl0
IHdvbid0LCBidXQgSSdtIHN0aWxsIHBsYXlpbmcgY2F0Y2h1cAphbmQgaGF2ZW4ndCBoYWQgYSBj
aGFuY2UgdG8gbG9vayBhdCB5b3VyIGVudGlyZSBzZXJpZXMuICBJZiBpdCBkb2Vzbid0Cndvcmsg
YmVmb3JlIGRybV9zY2hlZF9qb2JfYXJtKCksIHRoZW4gdGhlcmUgaXMgcmVhbGx5IG5vIHdheSB0
bwpwcmV2ZW50IGEgZXJyb3IgcGF0aCBiZXR3ZWVuIHRoZSBmZW5jZS1pbml0IGFuZCBqb2Itc3Vi
bWl0LgoKQnV0LCBwcmlvciB0byB5b3VyIHNlcmllcywgd291bGRuJ3QgYSBmYWlsdXJlIGFmdGVy
CmRybV9zY2hlZF9qb2JfaW5pdCgpIGJ1dCBiZWZvcmUgdGhlIGpvYiBpcyBzdWJtaXR0ZWQganVz
dCBidXJuIGEKZmVuY2UtaWQsIGFuZCBvdGhlcndpc2UgY2Fycnkgb24gaXQncyBtZXJyeSB3YXk/
CgpCUiwKLVIKCj4gICAgICAgICB9Cj4KPiAgICAgICAgIHN1Ym1pdF9hdHRhY2hfb2JqZWN0X2Zl
bmNlcyhzdWJtaXQpOwo+IC0tCj4gMi4zMi4wCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
