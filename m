Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A7129CF71
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Oct 2020 11:19:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F3FF6663B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Oct 2020 10:19:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1037F666C2; Wed, 28 Oct 2020 10:19:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86EEE66614;
	Wed, 28 Oct 2020 10:18:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C864E66604
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Oct 2020 10:17:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B33E566614; Wed, 28 Oct 2020 10:17:50 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 189CB66604
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Oct 2020 10:17:49 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id a9so1233676wrg.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Oct 2020 03:17:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=gi/uzMl9VgWE8vfQyPlznR/izU6XqxRO/ItVHtgT6AU=;
 b=rErL9QKTYGsLm2FwVAnBeLEOQSUEq5bummTIO+s19P7FloqLETGE/f10lc28tg2WLr
 5pavmqVxxqF1FpEGZI4LWlhlg7YEoTmyFtLWxBPrfL8EbhkMcKKac3uWgx7rK+0BJy02
 6EByhAptny/yT0aPHB8ue/4gUykxWAr8F3L5LZzl64SGYq6t81OjIPM81mND74LrlTZ+
 caUtn60CuXa2BWOeIJozzoBG9dr5GRFIxBzb3a2cPQ9f887D86B9bMKFwJLVaHAZgMtN
 yJQLVMhAjebvpBcwEs4R0y4chX/55R/JWAhD9E5+sXw2IztPbE6GuA5eqzg8nN2Zkamu
 wJ/A==
X-Gm-Message-State: AOAM533oqeAZoYilgo6zMUSfr8anHPhUP4SaBiML4ZUdgF8oSmfK5UdJ
 38dQqVNFj0BN/rkAZhO+fXa5DQ==
X-Google-Smtp-Source: ABdhPJyOzC7JNC7emtn0O/VIBDwemcIbpeRQF/UNhWe4y22pcew6DFyQi941pJPlBIMnwsDLyrEplA==
X-Received: by 2002:a5d:54c8:: with SMTP id x8mr7620352wrv.286.1603880268229; 
 Wed, 28 Oct 2020 03:17:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q12sm3287974wrx.13.2020.10.28.03.17.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 03:17:47 -0700 (PDT)
Date: Wed, 28 Oct 2020 11:17:44 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20201028101744.GV401619@phenom.ffwll.local>
References: <20201027214922.3566743-1-daniel.vetter@ffwll.ch>
 <20201028094415.7a7782b8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028094415.7a7782b8@collabora.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Joonyoung Shim <jy0922.shim@samsung.com>,
 piotr.oniszczuk@gmail.com, Daniel Vetter <daniel.vetter@intel.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Inki Dae <inki.dae@samsung.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>, stable@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/shme-helpers: Fix dma_buf_mmap
	forwarding bug
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

T24gV2VkLCBPY3QgMjgsIDIwMjAgYXQgMDk6NDQ6MTVBTSArMDEwMCwgQm9yaXMgQnJlemlsbG9u
IHdyb3RlOgo+IE9uIFR1ZSwgMjcgT2N0IDIwMjAgMjI6NDk6MjIgKzAxMDAKPiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToKPiAKPiA+IFdoZW4gd2UgZm9yd2Fy
ZCBhbiBtbWFwIHRvIHRoZSBkbWFfYnVmIGV4cG9ydGVyLCB0aGV5IGdldCB0byBvd24KPiA+IGV2
ZXJ5dGhpbmcuIFVuZm9ydHVuYXRlbHkgZHJtX2dlbV9tbWFwX29iaigpIG92ZXJ3cm90ZQo+ID4g
dm1hLT52bV9wcml2YXRlX2RhdGEgYWZ0ZXIgdGhlIGRyaXZlciBjYWxsYmFjaywgd3JlYWtpbmcg
dGhlCj4gPiBleHBvcnRlciBjb21wbGV0ZS4gVGhpcyB3YXMgbm90aWNlZCBiZWNhdXNlIHZiMl9j
b21tb25fdm1fY2xvc2UgYmxldwo+ID4gdXAgb24gbWFsaSBncHUgd2l0aCBwYW5mcm9zdCBhZnRl
ciBjb21taXQgMjZkM2FjM2NiMDRkCj4gPiAoImRybS9zaG1lbS1oZWxwZXJzOiBSZWRpcmVjdCBt
bWFwIGZvciBpbXBvcnRlZCBkbWEtYnVmIikuCj4gPiAKPiA+IFVuZm9ydHVuYXRlbHkgZHJtX2dl
bV9tbWFwX29iaiBhbHNvIGFjcXVpcmVzIGEgc3VycGx1cyByZWZlcmVuY2UgdGhhdAo+ID4gd2Ug
bmVlZCB0byBkcm9wIGluIHNobWVtIGhlbHBlcnMsIHdoaWNoIGlzIGEgYml0IG9mIGEgbWlzbGF5
ZXIKPiA+IHNpdHVhdGlvbi4gTWF5YmUgdGhlIGVudGlyZSBkbWFfYnVmX21tYXAgZm9yd2FyZGlu
ZyBzaG91bGQgYmUgcHVsbGVkCj4gPiBpbnRvIGNvcmUgZ2VtIGNvZGUuCj4gPiAKPiA+IE5vdGUg
dGhhdCB0aGUgb25seSB0d28gb3RoZXIgZHJpdmVycyB3aGljaCBmb3J3YXJkIG1tYXAgaW4gdGhl
aXIgb3duCj4gPiBjb2RlIChldG5hdml2IGFuZCBleHlub3MpIGdldCB0aGlzIHNvbWV3aGF0IHJp
Z2h0IGJ5IG92ZXJ3cml0aW5nIHRoZQo+ID4gZ2VtIG1tYXAgY29kZS4gQnV0IHRoZXkgc2VlbSB0
byBzdGlsbCBoYXZlIHRoZSBsZWFrLiBUaGlzIG1pZ2h0IGJlIGEKPiA+IGdvb2QgZXhjdXNlIHRv
IG1vdmUgdGhlc2UgZHJpdmVycyBvdmVyIHRvIHNobWVtIGhlbHBlcnMgY29tcGxldGVseS4KPiA+
IAo+ID4gTm90ZSB0byBzdGFibGUgdGVhbTogVGhlcmUncyBhIHRyaXZpYWwgY29udGV4dCBjb25m
bGljdCB3aXRoCj4gPiBkNjkzZGVmNGZkMWMgKCJkcm06IFJlbW92ZSBvYnNvbGV0ZSBHRU0gYW5k
IFBSSU1FIGNhbGxiYWNrcyBmcm9tCj4gPiBzdHJ1Y3QgZHJtX2RyaXZlciIpLiBJJ20gYXNzdW1p
bmcgaXQncyBjbGVhciB3aGVyZSB0byBwdXQgdGhlIGZpcnN0Cj4gPiBodW5rLCBvdGhlcndpc2Ug
SSBjYW4gc2VuZCBhIDUuOSB2ZXJzaW9uIG9mIHRoaXMuCj4gPiAKPiA+IENjOiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiBDYzogU3VtaXQgU2Vtd2FsIDxz
dW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiA+IENjOiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5n
dXRyb25peC5kZT4KPiA+IENjOiBSdXNzZWxsIEtpbmcgPGxpbnV4K2V0bmF2aXZAYXJtbGludXgu
b3JnLnVrPgo+ID4gQ2M6IENocmlzdGlhbiBHbWVpbmVyIDxjaHJpc3RpYW4uZ21laW5lckBnbWFp
bC5jb20+Cj4gPiBDYzogSW5raSBEYWUgPGlua2kuZGFlQHNhbXN1bmcuY29tPgo+ID4gQ2M6IEpv
b255b3VuZyBTaGltIDxqeTA5MjIuc2hpbUBzYW1zdW5nLmNvbT4KPiA+IENjOiBTZXVuZy1Xb28g
S2ltIDxzdzAzMTIua2ltQHNhbXN1bmcuY29tPgo+ID4gQ2M6IEt5dW5nbWluIFBhcmsgPGt5dW5n
bWluLnBhcmtAc2Ftc3VuZy5jb20+Cj4gPiBGaXhlczogMjZkM2FjM2NiMDRkICgiZHJtL3NobWVt
LWhlbHBlcnM6IFJlZGlyZWN0IG1tYXAgZm9yIGltcG9ydGVkIGRtYS1idWYiKQo+ID4gQ2M6IEJv
cmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gCj4gUmV2aWV3
ZWQtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+CgpQ
YXRjaCBwdXNoZWQgdG8gZHJtLW1pc2MtZml4ZXMsIHRoYW5rcyBmb3IgdGFraW5nIGEgbG9vay4K
LURhbmllbAoKPiAKPiA+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5k
ZT4KPiA+IENjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KPiA+IENjOiBSb2Ig
SGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiA+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiA+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9y
Zz4gIyB2NS45Kwo+ID4gUmVwb3J0ZWQtYW5kLXRlc3RlZC1ieTogcGlvdHIub25pc3pjenVrQGdt
YWlsLmNvbQo+ID4gQ2M6IHBpb3RyLm9uaXN6Y3p1a0BnbWFpbC5jb20KPiA+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyAgICAgICAgICAgICAgfCA0ICsrLS0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyB8IDcgKysrKysrLQo+ID4gIDIgZmls
ZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
Z2VtLmMKPiA+IGluZGV4IDFkYTY3ZDM0ZTU1ZC4uZDU4NjA2OGY1NTA5IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW0uYwo+ID4gQEAgLTEwNzYsNiArMTA3Niw4IEBAIGludCBkcm1fZ2VtX21tYXBfb2JqKHN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCB1bnNpZ25lZCBsb25nIG9ial9zaXplLAo+ID4gIAkg
Ki8KPiA+ICAJZHJtX2dlbV9vYmplY3RfZ2V0KG9iaik7Cj4gPiAgCj4gPiArCXZtYS0+dm1fcHJp
dmF0ZV9kYXRhID0gb2JqOwo+ID4gKwo+ID4gIAlpZiAob2JqLT5mdW5jcy0+bW1hcCkgewo+ID4g
IAkJcmV0ID0gb2JqLT5mdW5jcy0+bW1hcChvYmosIHZtYSk7Cj4gPiAgCQlpZiAocmV0KSB7Cj4g
PiBAQCAtMTA5Niw4ICsxMDk4LDYgQEAgaW50IGRybV9nZW1fbW1hcF9vYmooc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmosIHVuc2lnbmVkIGxvbmcgb2JqX3NpemUsCj4gPiAgCQl2bWEtPnZtX3Bh
Z2VfcHJvdCA9IHBncHJvdF9kZWNyeXB0ZWQodm1hLT52bV9wYWdlX3Byb3QpOwo+ID4gIAl9Cj4g
PiAgCj4gPiAtCXZtYS0+dm1fcHJpdmF0ZV9kYXRhID0gb2JqOwo+ID4gLQo+ID4gIAlyZXR1cm4g
MDsKPiA+ICB9Cj4gPiAgRVhQT1JUX1NZTUJPTChkcm1fZ2VtX21tYXBfb2JqKTsKPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jCj4gPiBpbmRleCBmYjExZGY3YWNlZDUuLjgy
MzNiZGE0NjkyZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVt
X2hlbHBlci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIu
Ywo+ID4gQEAgLTU5OCw4ICs1OTgsMTMgQEAgaW50IGRybV9nZW1fc2htZW1fbW1hcChzdHJ1Y3Qg
ZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCj4gPiAgCS8q
IFJlbW92ZSB0aGUgZmFrZSBvZmZzZXQgKi8KPiA+ICAJdm1hLT52bV9wZ29mZiAtPSBkcm1fdm1h
X25vZGVfc3RhcnQoJm9iai0+dm1hX25vZGUpOwo+ID4gIAo+ID4gLQlpZiAob2JqLT5pbXBvcnRf
YXR0YWNoKQo+ID4gKwlpZiAob2JqLT5pbXBvcnRfYXR0YWNoKSB7Cj4gPiArCQkvKiBEcm9wIHRo
ZSByZWZlcmVuY2UgZHJtX2dlbV9tbWFwX29iaigpIGFjcXVpcmVkLiovCj4gPiArCQlkcm1fZ2Vt
X29iamVjdF9wdXQob2JqKTsKPiA+ICsJCXZtYS0+dm1fcHJpdmF0ZV9kYXRhID0gTlVMTDsKPiA+
ICsKPiA+ICAJCXJldHVybiBkbWFfYnVmX21tYXAob2JqLT5kbWFfYnVmLCB2bWEsIDApOwo+ID4g
Kwl9Cj4gPiAgCj4gPiAgCXNobWVtID0gdG9fZHJtX2dlbV9zaG1lbV9vYmoob2JqKTsKPiA+ICAK
PiAKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlv
bgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
