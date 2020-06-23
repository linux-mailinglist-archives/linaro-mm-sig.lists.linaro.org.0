Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCA3219FC1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:12:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CD9B66587
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:12:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F3730665AA; Thu,  9 Jul 2020 12:12:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 158A86671F;
	Thu,  9 Jul 2020 11:34:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 89DB2664F9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 01:31:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7CA97665D6; Tue, 23 Jun 2020 01:31:40 +0000 (UTC)
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by lists.linaro.org (Postfix) with ESMTPS id 4419E664F9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 01:31:39 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id f18so17491934qkh.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2020 18:31:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eHCbxa4yLLq+0pOhVBKweZwAtR1jWaAM46jnceQkpwE=;
 b=X92XkIv3rYr5saS/964nBEa8dvB0aUteHwqHkycmRsM010fNBpoVQrl/YGOSWRWWqu
 STwWzeTaN9D/elaKEdGqvvMt82iXzbekqcsX+KoE+PpvY+9TFmTDLP5Xc7z2UGY5Bsmg
 mPdo/MxYLEM4KyFb5C6XdxsX6z8k2w9f1l6OThu2NV9baEejrILm1/dVa8iNBkt1A8tt
 FEDGky1M7YHuqxkg+vmPCDdccCapa3OJr1kuDyrUx3UAnxnTEOmSPurDyWnQ69eJ+tx6
 lLNkl+pysiqw6zqpe51MaGHOhKxYAYP90ur4NhgS+GyJgSwQ643k32AMNeS/c2mj9RwO
 qIfw==
X-Gm-Message-State: AOAM533snQ3A7guvSws1k5q7EmWiHqozkdaSO/vUnOI0dUm/YeyVkpwd
 jzzb1C/U9juNUpGegbVF6XWX+KQiNXB7TpkGj8G2tw==
X-Google-Smtp-Source: ABdhPJwMJlxh1gtY97I2kVKm9OIAts8GWq+RuGfGOUmzRWY4SAjkUqzw8u1O4Yn7AgYcPbJZ0Vsm0B2frMtXAAEZyiE=
X-Received: by 2002:a05:620a:40c1:: with SMTP id
 g1mr12395512qko.391.1592875898709; 
 Mon, 22 Jun 2020 18:31:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200609012518.198908-1-stevensd@chromium.org>
 <20200609055021-mutt-send-email-mst@kernel.org>
In-Reply-To: <20200609055021-mutt-send-email-mst@kernel.org>
From: David Stevens <stevensd@chromium.org>
Date: Tue, 23 Jun 2020 10:31:28 +0900
Message-ID: <CAD=HUj7wJfoKj_K44Cs9eEmh=OQHZ1+qz7ZHxoscHjYgOMXvZQ@mail.gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: ML dri-devel <dri-devel@lists.freedesktop.org>,
 virtio-dev@lists.oasis-open.org, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 "open list:VIRTIO GPU DRIVER" <virtualization@lists.linux-foundation.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 alex.williamson@redhat.com, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [virtio-dev] Re: [PATCH v5 0/3] Support virtio
	cross-device resources
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

VW5sZXNzIHRoZXJlIGFyZSBhbnkgcmVtYWluaW5nIG9iamVjdGlvbnMgdG8gdGhlc2UgcGF0Y2hl
cywgd2hhdCBhcmUKdGhlIG5leHQgc3RlcHMgdG93YXJkcyBnZXR0aW5nIHRoZXNlIG1lcmdlZD8g
U29ycnksIEknbSBub3QgZmFtaWxpYXIKd2l0aCB0aGUgd29ya2Zsb3cgZm9yIGNvbnRyaWJ1dGlu
ZyBwYXRjaGVzIHRvIExpbnV4LgoKVGhhbmtzLApEYXZpZAoKT24gVHVlLCBKdW4gOSwgMjAyMCBh
dCA2OjUzIFBNIE1pY2hhZWwgUy4gVHNpcmtpbiA8bXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4g
T24gVHVlLCBKdW4gMDksIDIwMjAgYXQgMTA6MjU6MTVBTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiA+IFRoaXMgcGF0Y2hzZXQgaW1wbGVtZW50cyB0aGUgY3VycmVudCBwcm9wb3NhbCBm
b3IgdmlydGlvIGNyb3NzLWRldmljZQo+ID4gcmVzb3VyY2Ugc2hhcmluZyBbMV0uIEl0IHdpbGwg
YmUgdXNlZCB0byBpbXBvcnQgdmlydGlvIHJlc291cmNlcyBpbnRvCj4gPiB0aGUgdmlydGlvLXZp
ZGVvIGRyaXZlciBjdXJyZW50bHkgdW5kZXIgZGlzY3Vzc2lvbiBbMl0uIFRoZSBwYXRjaAo+ID4g
dW5kZXIgY29uc2lkZXJhdGlvbiB0byBhZGQgc3VwcG9ydCBpbiB0aGUgdmlydGlvLXZpZGVvIGRy
aXZlciBpcyBbM10uCj4gPiBJdCB1c2VzIHRoZSBBUElzIGZyb20gdjMgb2YgdGhpcyBzZXJpZXMs
IGJ1dCB0aGUgY2hhbmdlcyB0byB1cGRhdGUgaXQKPiA+IGFyZSByZWxhdGl2ZWx5IG1pbm9yLgo+
ID4KPiA+IFRoaXMgcGF0Y2hzZXQgYWRkcyBhIG5ldyBmbGF2b3Igb2YgZG1hLWJ1ZnMgdGhhdCBz
dXBwb3J0cyBxdWVyeWluZyB0aGUKPiA+IHVuZGVybHlpbmcgdmlydGlvIG9iamVjdCBVVUlELCBh
cyB3ZWxsIGFzIGFkZGluZyBzdXBwb3J0IGZvciBleHBvcnRpbmcKPiA+IHJlc291cmNlcyBmcm9t
IHZpcnRncHUuCj4KPiBHZXJkLCBEYXZpZCwgaWYgcG9zc2libGUsIHBsZWFzZSB0ZXN0IHRoaXMg
aW4gY29uZmlndXJhdGlvbiB3aXRoCj4gdmlydHVhbCBWVEQgZW5hYmxlZCBidXQgd2l0aCBpb21t
dV9wbGF0Zm9ybT1vZmYKPiB0byBtYWtlIHN1cmUgd2UgZGlkbid0IGJyZWFrIHRoaXMgY29uZmln
Lgo+Cj4KPiBCZXNpZGVzIHRoYXQsIGZvciB2aXJ0aW8gcGFydHM6Cj4KPiBBY2tlZC1ieTogTWlj
aGFlbCBTLiBUc2lya2luIDxtc3RAcmVkaGF0LmNvbT4KPgo+Cj4gPiBbMV0gaHR0cHM6Ly9tYXJr
bWFpbC5vcmcvdGhyZWFkLzJ5cGp0NWNmZXUzbTZseHUKPiA+IFsyXSBodHRwczovL21hcmttYWls
Lm9yZy90aHJlYWQvcDVkM2s1NjZzcnRkdHV0ZQo+ID4gWzNdIGh0dHBzOi8vbWFya21haWwub3Jn
L3RocmVhZC9qNHhscWFhaW0yNjZxcGtzCj4gPgo+ID4gdjQgLT4gdjUgY2hhbmdlczoKPiA+ICAt
IFJlbW92ZSB2aXJ0aW9fZG1hX2J1Zl9leHBvcnRfaW5mby4KPiA+Cj4gPiBEYXZpZCBTdGV2ZW5z
ICgzKToKPiA+ICAgdmlydGlvOiBhZGQgZG1hLWJ1ZiBzdXBwb3J0IGZvciBleHBvcnRlZCBvYmpl
Y3RzCj4gPiAgIHZpcnRpby1ncHU6IGFkZCBWSVJUSU9fR1BVX0ZfUkVTT1VSQ0VfVVVJRCBmZWF0
dXJlCj4gPiAgIGRybS92aXJ0aW86IFN1cHBvcnQgdmlydGdwdSBleHBvcnRlZCByZXNvdXJjZXMK
PiA+Cj4gPiAgZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Rydi5jICAgfCAgMyArCj4g
PiAgZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Rydi5oICAgfCAyMCArKysrKysKPiA+
ICBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfa21zLmMgICB8ICA0ICsrCj4gPiAgZHJp
dmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3ByaW1lLmMgfCA5NiArKysrKysrKysrKysrKysr
KysrKysrKysrLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV92cS5jICAgIHwg
NTUgKysrKysrKysrKysrKysrCj4gPiAgZHJpdmVycy92aXJ0aW8vTWFrZWZpbGUgICAgICAgICAg
ICAgICAgfCAgMiArLQo+ID4gIGRyaXZlcnMvdmlydGlvL3ZpcnRpby5jICAgICAgICAgICAgICAg
IHwgIDYgKysKPiA+ICBkcml2ZXJzL3ZpcnRpby92aXJ0aW9fZG1hX2J1Zi5jICAgICAgICB8IDgy
ICsrKysrKysrKysrKysrKysrKysrKysKPiA+ICBpbmNsdWRlL2xpbnV4L3ZpcnRpby5oICAgICAg
ICAgICAgICAgICB8ICAxICsKPiA+ICBpbmNsdWRlL2xpbnV4L3ZpcnRpb19kbWFfYnVmLmggICAg
ICAgICB8IDM3ICsrKysrKysrKysKPiA+ICBpbmNsdWRlL3VhcGkvbGludXgvdmlydGlvX2dwdS5o
ICAgICAgICB8IDE5ICsrKysrCj4gPiAgMTEgZmlsZXMgY2hhbmdlZCwgMzIxIGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvdmlydGlv
L3ZpcnRpb19kbWFfYnVmLmMKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC92
aXJ0aW9fZG1hX2J1Zi5oCj4gPgo+ID4gLS0KPiA+IDIuMjcuMC4yNzguZ2UxOTNjN2NmM2E5LWdv
b2cKPgo+Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gVG8gdW5zdWJzY3JpYmUsIGUtbWFpbDogdmlydGlvLWRl
di11bnN1YnNjcmliZUBsaXN0cy5vYXNpcy1vcGVuLm9yZwo+IEZvciBhZGRpdGlvbmFsIGNvbW1h
bmRzLCBlLW1haWw6IHZpcnRpby1kZXYtaGVscEBsaXN0cy5vYXNpcy1vcGVuLm9yZwo+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
