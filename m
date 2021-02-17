Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A86B531D441
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Feb 2021 04:31:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDE2B66518
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Feb 2021 03:31:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C0A5566520; Wed, 17 Feb 2021 03:31:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1FB6966460;
	Wed, 17 Feb 2021 03:30:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 481CA6050C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Feb 2021 03:30:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3ACF666460; Wed, 17 Feb 2021 03:30:49 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 by lists.linaro.org (Postfix) with ESMTPS id 9F7C86050C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Feb 2021 03:30:47 +0000 (UTC)
Received: by mail-lj1-f178.google.com with SMTP id a17so14467001ljq.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Feb 2021 19:30:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=90upSJkSBaDE94xLVKm4FyJgU7j3Yg9CERdZQjvg9pk=;
 b=eHEmbSROVG8OwJ+2lyeO4WpkJ4znbDziDYz6LO4kj8dSKRH/fsf2PNx6X2/pxmD5xs
 kLuSIOobmn2PtL5QfUlVf4Sgtvu1RQqEvdj/Nbswt0JGuxmc5+uMwgRPmd3AX3CpfG6u
 4/8r6+1DaYliH2GNrzdc7vP3Z4yryhmQm9dVoj+pCb5fIgngRu/TW2QEDwG7mNiK1AB2
 HfSVLrt/s5ui7wH4Br50DaWsyX8r7yi+CNjHotBPK9qyK0hVc4rnlb3bMTp8FGrv6OaX
 1Wd7YD+B2rDFvd5N8NAsRRAOPvz4Xng2gG0Ru3BLPW4Lo8Bd3mmDUjlC0KEHxpL/QtDU
 +GsA==
X-Gm-Message-State: AOAM533QKQ6ZpeENCFNfDzXEFzCzpXWPOfE7r1JEVq8jZyij01By3jc4
 W4wOoQqSRwoMPyevT4BPo6sH1ha1gxi3cbRe+BXUFf5i
X-Google-Smtp-Source: ABdhPJzv2bDGbeQ9djCtCiGwF7qL6JmCTWoZF/qHKXTj2cfs/nJVH6vMAR95/8KdPBQwsJ0jWK+uDckhngls20ZhHCc=
X-Received: by 2002:a2e:5356:: with SMTP id t22mr13942820ljd.257.1613532646388; 
 Tue, 16 Feb 2021 19:30:46 -0800 (PST)
MIME-Version: 1.0
References: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 16 Feb 2021 19:30:34 -0800
Message-ID: <CALAqxLWqgLXxry8FhVSK9xC2geiPOA+fTdC-oRENS9iG5AJz=A@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm-buf: Add debug option
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

T24gV2VkLCBKYW4gMTMsIDIwMjEgYXQgNjowNiBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPiB3cm90ZToKPgo+IFdlIGhhdmUgdG9vIG1hbnkgcGVvcGxlIGFidXNpbmcg
dGhlIHN0cnVjdCBwYWdlIHRoZXkgY2FuIGdldCBhdCBidXQKPiByZWFsbHkgc2hvdWxkbid0IGlu
IGltcG9ydGVycy4gQXNpZGUgZnJvbSB0aGF0IHRoZSBiYWNraW5nIHBhZ2UgbWlnaHQKPiBzaW1w
bHkgbm90IGV4aXN0IChmb3IgZHluYW1pYyBwMnAgbWFwcGluZ3MpIGxvb2tpbmcgYXQgaXQgYW5k
IHVzaW5nIGl0Cj4gZS5nLiBmb3IgbW1hcCBjYW4gYWxzbyB3cmVhayB0aGUgcGFnZSBoYW5kbGlu
ZyBvZiB0aGUgZXhwb3J0ZXIKPiBjb21wbGV0ZWx5LiBJbXBvcnRlcnMgcmVhbGx5IG11c3QgZ28g
dGhyb3VnaCB0aGUgcHJvcGVyIGludGVyZmFjZSBsaWtlCj4gZG1hX2J1Zl9tbWFwIGZvciBldmVy
eXRoaW5nLgo+Cj4gSnVzdCBhbiBSRkMgdG8gc2VlIHdoZXRoZXIgdGhpcyBpZGVhIGhhcyBzb21l
IHN0aWNraW5lc3MuIGRlZmF1bHQgeQo+IGZvciBub3cgdG8gbWFrZSBzdXJlIGludGVsLWdmeC1j
aSBwaWNrcyBpdCB1cCB0b28uCj4KPiBJJ20gc2VtaS10ZW1wdGVkIHRvIGVuZm9yY2UgdGhpcyBm
b3IgZHluYW1pYyBpbXBvcnRlcnMgc2luY2UgdGhvc2UKPiByZWFsbHkgaGF2ZSBubyBleGN1c2Ug
YXQgYWxsIHRvIGJyZWFrIHRoZSBydWxlcy4KPgo+IFVuZm9ydHVhbnRlbHkgd2UgY2FuJ3Qgc3Rv
cmUgdGhlIHJpZ2h0IHBvaW50ZXJzIHNvbWV3aGVyZSBzYWZlIHRvIG1ha2UKPiBzdXJlIHdlIG9v
cHMgb24gc29tZXRoaW5nIHJlY29nbml6YWJsZSwgc28gYmVzdCBpcyB0byBqdXN0IHdyYW5nbGUK
PiB0aGVtIGEgYml0IGJ5IGZsaXBwaW5nIGFsbCB0aGUgYml0cy4gQXQgbGVhc3Qgb24geDg2IGtl
cm5lbCBhZGRyZXNzZXMKPiBoYXZlIGFsbCB0aGVpciBoaWdoIGJpdHMgc2V0cyBhbmQgdGhlIHN0
cnVjdCBwYWdlIGFycmF5IGlzIGZhaXJseSBsb3cKPiBpbiB0aGUga2VybmVsIG1hcHBpbmcsIHNv
IGZsaXBwaW5nIGFsbCB0aGUgYml0cyBnaXZlcyB1cyBhIHZlcnkgaGlnaAo+IHBvaW50ZXIgaW4g
dXNlcnNwYWNlIGFuZCBoZW5jZSBleGNlbGxlbnQgY2hhbmNlcyBmb3IgYW4gaW52YWxpZAo+IGRl
cmVmZXJlbmNlLgo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBpbnRlbC5jb20+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+
Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENj
OiBEYXZpZCBTdGV2ZW5zIDxzdGV2ZW5zZEBjaHJvbWl1bS5vcmc+Cj4gQ2M6IGxpbnV4LW1lZGlh
QHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiAt
LS0KPiAgZHJpdmVycy9kbWEtYnVmL0tjb25maWcgICB8ICA4ICsrKysrKysKPiAgZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyB8IDQ5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
LS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL0tjb25maWcgYi9kcml2ZXJzL2RtYS1i
dWYvS2NvbmZpZwo+IGluZGV4IDRmODIyNGE2YWM5NS4uY2RkYjU0OWU1ZTU5IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL0tjb25m
aWcKPiBAQCAtNTAsNiArNTAsMTQgQEAgY29uZmlnIERNQUJVRl9NT1ZFX05PVElGWQo+ICAgICAg
ICAgICBUaGlzIGlzIG1hcmtlZCBleHBlcmltZW50YWwgYmVjYXVzZSB3ZSBkb24ndCB5ZXQgaGF2
ZSBhIGNvbnNpc3RlbnQKPiAgICAgICAgICAgZXhlY3V0aW9uIGNvbnRleHQgYW5kIG1lbW9yeSBt
YW5hZ2VtZW50IGJldHdlZW4gZHJpdmVycy4KPgo+ICtjb25maWcgRE1BQlVGX0RFQlVHCj4gKyAg
ICAgICBib29sICJETUEtQlVGIGRlYnVnIGNoZWNrcyIKPiArICAgICAgIGRlZmF1bHQgeQo+ICsg
ICAgICAgaGVscAo+ICsgICAgICAgICBUaGlzIG9wdGlvbiBlbmFibGVzIGFkZGl0aW9uYWwgY2hl
Y2tzIGZvciBETUEtQlVGIGltcG9ydGVycyBhbmQKPiArICAgICAgICAgZXhwb3J0ZXJzLiBTcGVj
aWZpY2FsbHkgaXQgdmFsaWRhdGVzIHRoYXQgaW1wb3J0ZXJzIGRvIG5vdCBwZWVrIGF0IHRoZQo+
ICsgICAgICAgICB1bmRlcmx5aW5nIHN0cnVjdCBwYWdlIHdoZW4gdGhleSBpbXBvcnQgYSBidWZm
ZXIuCj4gKwo+ICBjb25maWcgRE1BQlVGX1NFTEZURVNUUwo+ICAgICAgICAgdHJpc3RhdGUgIlNl
bGZ0ZXN0cyBmb3IgdGhlIGRtYS1idWYgaW50ZXJmYWNlcyIKPiAgICAgICAgIGRlZmF1bHQgbgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYwo+IGluZGV4IDFjOWJkNTFkYjExMC4uNmU0NzI1ZjdkZmRlIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jCj4gQEAgLTY2Niw2ICs2NjYsMzAgQEAgdm9pZCBkbWFfYnVmX3B1dChzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmKQo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfcHV0KTsKPgo+
ICtzdGF0aWMgc3RydWN0IHNnX3RhYmxlICogX19tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQo+ICt7Cj4gKyAgICAgICBzdHJ1
Y3Qgc2dfdGFibGUgKnNnX3RhYmxlOwo+ICsKPiArICAgICAgIHNnX3RhYmxlID0gYXR0YWNoLT5k
bWFidWYtPm9wcy0+bWFwX2RtYV9idWYoYXR0YWNoLCBkaXJlY3Rpb24pOwo+ICsKPiArI2lmIENP
TkZJR19ETUFCVUZfREVCVUcKCgpIZXkgRGFuaWVsLAogIEkganVzdCBub3RpY2VkIGEgYnVpbGQg
d2FybmluZyBpbiBhIHRyZWUgSSBwdWxsZWQgdGhpcyBwYXRjaCBpbnRvLgpZb3UgcHJvYmFibHkg
d2FudCB0byB1c2UgI2lmZGVmIGhlcmUsIGFzIGlmIGl0cyBub3QgZGVmaW5lZCB3ZSBzZWU6CmRy
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmM6ODEzOjU6IHdhcm5pbmc6ICJDT05GSUdfRE1BQlVGX0RF
QlVHIiBpcyBub3QKZGVmaW5lZCwgZXZhbHVhdGVzIHRvIDAgWy1XdW5kZWZdCgp0aGFua3MKLWpv
aG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
