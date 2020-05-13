Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9131D19C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 17:45:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A04AD65F85
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:45:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8E7AC65F8D; Wed, 13 May 2020 15:45:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1097C65F87;
	Wed, 13 May 2020 15:45:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E994165F85
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 15:45:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DA2B260E68; Wed, 13 May 2020 15:45:12 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by lists.linaro.org (Postfix) with ESMTPS id A9FE160E68
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 15:45:11 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id c12so20816960oic.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 08:45:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mei1LatTmGdj+EOMqNvHhmuC380OhE62eU0mPCj4HIU=;
 b=E52RDrWFX16jkXIQ+5Ao4i1f2XeNEkmxI2ZVgd1uOayaVwypyF9LlxgCNGtPj3XrlE
 Qlm0iuYvDKcDsNgJKrF8hCJlklOAmh4Y2WDwmmZ6ayd4bCcOYK9LIJUF1/PUwV2Q69qI
 AN/d51WnL82ICIL4Cgf5xQEEIYQs83P4F7mK8xSgIIQATwpBZre9/TZoJuKC4CI5FO9r
 f6WsRR4af8/ET6x1EmcnMraYqgbmPx0GRIxxY2S2wqFcSS1fZhGpVJmwgVZyHew5L4Bf
 2CscOkdOyvWcysgzIrtSJU/vZx3MXEoV3b4c+v0d8h9oMNQhonnWmf10R8z6TDEOS8Vk
 xsDA==
X-Gm-Message-State: AGi0PuaDRqJ/BQpXCi7o56rBcEDCVyQ0xwauoDIR+VTEABmRe9V+EWLC
 XlJlWA8h7W4xwhEa/qNstExgotTi6X9aF5LxUYXp1A==
X-Google-Smtp-Source: APiQypI5v/GPcuUPKMBM3NTNqytmPwdux2KcE1khhFrjveIV/zK1dS2UemFwYRgCFispMAUfUJhE2vXjRmumZEBkQZg=
X-Received: by 2002:aca:3b41:: with SMTP id i62mr9169611oia.101.1589384711122; 
 Wed, 13 May 2020 08:45:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200311112004.47138-1-stevensd@chromium.org>
 <20200311112004.47138-2-stevensd@chromium.org>
In-Reply-To: <20200311112004.47138-2-stevensd@chromium.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 13 May 2020 17:45:00 +0200
Message-ID: <CAKMK7uHFgiHLe9oiFBr-VR-6rU9-hLTpBTEVNh0ezyj54u70jw@mail.gmail.com>
To: David Stevens <stevensd@chromium.org>, Tomasz Figa <tfiga@chromium.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "Michael S . Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, "open list:VIRTIO CORE,
 NET..." <virtualization@lists.linux-foundation.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/4] dma-buf: add support for virtio
	exported objects
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

T24gV2VkLCBNYXIgMTEsIDIwMjAgYXQgMTI6MjAgUE0gRGF2aWQgU3RldmVucyA8c3RldmVuc2RA
Y2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IFRoaXMgY2hhbmdlIGFkZHMgYSBuZXcgZG1hLWJ1ZiBv
cGVyYXRpb24gdGhhdCBhbGxvd3MgZG1hLWJ1ZnMgdG8gYmUgdXNlZAo+IGJ5IHZpcnRpbyBkcml2
ZXJzIHRvIHNoYXJlIGV4cG9ydGVkIG9iamVjdHMuIFRoZSBuZXcgb3BlcmF0aW9uIGFsbG93cwo+
IHRoZSBpbXBvcnRpbmcgZHJpdmVyIHRvIHF1ZXJ5IHRoZSBleHBvcnRpbmcgZHJpdmVyIGZvciB0
aGUgVVVJRCB3aGljaAo+IGlkZW50aWZpZXMgdGhlIHVuZGVybHlpbmcgZXhwb3J0ZWQgb2JqZWN0
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogRGF2aWQgU3RldmVucyA8c3RldmVuc2RAY2hyb21pdW0ub3Jn
PgoKQWRkaW5nIFRvbWFzeiBGaWdhLCBJJ3ZlIGRpc2N1c3NlZCB0aGlzIHdpdGggaGltIGF0IGVs
Y2UgbGFzdCB5ZWFyIEkKdGhpbmsuIEp1c3QgdG8gbWFrZSBzdXJlLgoKQnVuY2ggb2YgdGhpbmdz
OgotIG9idmlvdXNseSB3ZSBuZWVkIHRoZSB1c2VycyBvZiB0aGlzIGluIGEgZmV3IGRyaXZlcnMs
IGNhbid0IHJlYWxseQpyZXZpZXcgYW55dGhpbmcgc3RhbmQtYWxvbmUKLSBhZGRpbmcgdmVyeSBz
cGVjaWZpYyBvcHMgdG8gdGhlIGdlbmVyaWMgaW50ZXJmYWNlIGlzIHJhdGhlciBhd2t3YXJkLApl
dmVudHVhbGx5IGV2ZXJ5b25lIHdhbnRzIHRoYXQgYW5kIHdlIGVuZCB1cCBpbiBhIG1lc3MuIEkg
dGhpbmsgdGhlCmJlc3Qgc29sdXRpb24gaGVyZSB3b3VsZCBiZSBpZiB3ZSBjcmVhdGUgYSBzdHJ1
Y3QgdmlydGlvX2RtYV9idWYgd2hpY2gKc3ViY2xhc3NlcyBkbWEtYnVmLCBhZGQgYSAoaG9wZWZ1
bGx5IHNhZmUpIHJ1bnRpbWUgdXBjYXN0aW5nCmZ1bmN0aW9ucywgYW5kIHRoZW4gYSB2aXJ0aW9f
ZG1hX2J1Zl9nZXRfdXVpZCgpIGZ1bmN0aW9uLiBKdXN0IHN0b3JpbmcKdGhlIHV1aWQgc2hvdWxk
IGJlIGRvYWJsZSAoYXNzdW1pbmcgdGhpcyBkb2Vzbid0IGNoYW5nZSBkdXJpbmcgdGhlCmxpZmV0
aW1lIG9mIHRoZSBidWZmZXIpLCBzbyBubyBuZWVkIGZvciBhIGNhbGxiYWNrLgotIGZvciB0aGUg
cnVudGltZSB1cGNhc3RpbmcgdGhlIHVzdWFsIGFwcHJvYWNoIGlzIHRvIGNoZWNrIHRoZSAtPm9w
cwpwb2ludGVyLiBXaGljaCBtZWFucyB0aGF0IHdvdWxkIG5lZWQgdG8gYmUgdGhlIHNhbWUgZm9y
IGFsbCB2aXJ0aW8KZG1hX2J1ZnMsIHdoaWNoIG1pZ2h0IGdldCBhIGJpdCBhd2t3YXJkLiBCdXQg
SSdkIHJlYWxseSBwcmVmZXIgd2Ugbm90CmFkZCBhbGxvY2F0b3Igc3BlY2lmaWMgc3R1ZmYgbGlr
ZSB0aGlzIHRvIGRtYS1idWYuCi1EYW5pZWwKCj4gLS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgfCAxMiArKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICB8IDE4
ICsrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKykK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYwo+IGluZGV4IGQ0MDk3ODU2Yzg2Yi4uZmE1MjEwYmE2YWFhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiArKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jCj4gQEAgLTExNTgsNiArMTE1OCwxOCBAQCB2b2lkIGRtYV9idWZfdnVubWFwKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYsIHZvaWQgKnZhZGRyKQo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xf
R1BMKGRtYV9idWZfdnVubWFwKTsKPgo+ICtpbnQgZG1hX2J1Zl9nZXRfdXVpZChzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLCB1dWlkX3QgKnV1aWQpCj4gK3sKPiArICAgICAgIGlmIChXQVJOX09OKCFk
bWFidWYpIHx8ICF1dWlkKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiArCj4g
KyAgICAgICBpZiAoIWRtYWJ1Zi0+b3BzLT5nZXRfdXVpZCkKPiArICAgICAgICAgICAgICAgcmV0
dXJuIC1FTk9ERVY7Cj4gKwo+ICsgICAgICAgcmV0dXJuIGRtYWJ1Zi0+b3BzLT5nZXRfdXVpZChk
bWFidWYsIHV1aWQpOwo+ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfZ2V0X3V1aWQp
Owo+ICsKPiAgI2lmZGVmIENPTkZJR19ERUJVR19GUwo+ICBzdGF0aWMgaW50IGRtYV9idWZfZGVi
dWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkKPiAgewo+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj4g
aW5kZXggYWJmNTQ1OWE1YjlkLi4wMDc1ODUyMzU5N2QgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9kbWEtYnVmLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+IEBAIC0yNTEs
NiArMjUxLDIxIEBAIHN0cnVjdCBkbWFfYnVmX29wcyB7Cj4KPiAgICAgICAgIHZvaWQgKigqdm1h
cCkoc3RydWN0IGRtYV9idWYgKik7Cj4gICAgICAgICB2b2lkICgqdnVubWFwKShzdHJ1Y3QgZG1h
X2J1ZiAqLCB2b2lkICp2YWRkcik7Cj4gKwo+ICsgICAgICAgLyoqCj4gKyAgICAgICAgKiBAZ2V0
X3V1aWQKPiArICAgICAgICAqCj4gKyAgICAgICAgKiBUaGlzIGlzIGNhbGxlZCBieSBkbWFfYnVm
X2dldF91dWlkIHRvIGdldCB0aGUgVVVJRCB3aGljaCBpZGVudGlmaWVzCj4gKyAgICAgICAgKiB0
aGUgYnVmZmVyIHRvIHZpcnRpbyBkZXZpY2VzLgo+ICsgICAgICAgICoKPiArICAgICAgICAqIFRo
aXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuCj4gKyAgICAgICAgKgo+ICsgICAgICAgICogUmV0dXJu
czoKPiArICAgICAgICAqCj4gKyAgICAgICAgKiAwIG9uIHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBl
cnJvciBjb2RlIG9uIGZhaWx1cmUuIE9uIHN1Y2Nlc3MgdXVpZAo+ICsgICAgICAgICogd2lsbCBi
ZSBwb3B1bGF0ZWQgd2l0aCB0aGUgYnVmZmVyJ3MgVVVJRC4KPiArICAgICAgICAqLwo+ICsgICAg
ICAgaW50ICgqZ2V0X3V1aWQpKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHV1aWRfdCAqdXVpZCk7
Cj4gIH07Cj4KPiAgLyoqCj4gQEAgLTQ0NCw0ICs0NTksNyBAQCBpbnQgZG1hX2J1Zl9tbWFwKHN0
cnVjdCBkbWFfYnVmICosIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqLAo+ICAgICAgICAgICAgICAg
ICAgdW5zaWduZWQgbG9uZyk7Cj4gIHZvaWQgKmRtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAq
KTsKPiAgdm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqLCB2b2lkICp2YWRkcik7
Cj4gKwo+ICtpbnQgZG1hX2J1Zl9nZXRfdXVpZChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCB1dWlk
X3QgKnV1aWQpOwo+ICsKPiAgI2VuZGlmIC8qIF9fRE1BX0JVRl9IX18gKi8KPiAtLQo+IDIuMjUu
MS40ODEuZ2ZiY2UwZWI4MDEtZ29vZwo+CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5n
aW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Js
b2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
