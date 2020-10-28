Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DC129CF5D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Oct 2020 10:59:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B6AD6600C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Oct 2020 09:59:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8A91E66608; Wed, 28 Oct 2020 09:59:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4EAE61932;
	Wed, 28 Oct 2020 09:58:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DBEA36151B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Oct 2020 09:57:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BBA4C61932; Wed, 28 Oct 2020 09:57:54 +0000 (UTC)
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by lists.linaro.org (Postfix) with ESMTPS id 225386151B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Oct 2020 09:57:53 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id p9so6336194eji.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Oct 2020 02:57:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=gqxbff3sIwRJKJ2vetLSa1wEknO8WgouSta4QsKyVI4=;
 b=CJngErugDAhtVbadSHAGqRIKqJ+rMo22CiKKpNSNAyU0GuMGOrbuPSBouFKMOfkKbs
 zaTLQMHdodRD+HFVv1Hqgl9eO0BLRnjWIzWSA1/NU3m3l1rDiumXb4BTxuIdjC1l3DYd
 KUPVd/8uRNk7vCfAr5eiGAtSXDZW/yVgIii3IoqiAn0ZqwnUgFzJK3AEEM2IdY5gbDnR
 snAw72Gi+SixLWslgVwoE7KnMZ9k12IcuUd/xeXpAJeaZbl0UrojPo+gHrOcXiFlshhx
 EKkmVJUJN4eZ7wh3l7KneQI3VZnaYsA4I8TNy8JP+25jIOXZKGpsfH77uUDmOIBSUZ/V
 4aiw==
X-Gm-Message-State: AOAM530m4RQFzfUOX7epuJ2Mpj/Ue+MhSRsar5G3K/GTBE6Padom91/x
 WL7TpEiR2LCBpRa/DeQYAmY=
X-Google-Smtp-Source: ABdhPJw+FfZnd8LSJtXqeaZjKv8Rr31kSq6R9Gg4Nw/fxyyAp5tvKQxisnaGWJNOnsxbVlPXxp4Hew==
X-Received: by 2002:a17:906:af71:: with SMTP id
 os17mr6750928ejb.200.1603879072094; 
 Wed, 28 Oct 2020 02:57:52 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id 64sm470042eda.63.2020.10.28.02.57.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Oct 2020 02:57:51 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20201027214922.3566743-1-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <62e05cfd-0030-ad32-0b3f-69dd257b2e3c@gmail.com>
Date: Wed, 28 Oct 2020 10:57:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201027214922.3566743-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Joonyoung Shim <jy0922.shim@samsung.com>,
 piotr.oniszczuk@gmail.com, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>, stable@vger.kernel.org,
 Inki Dae <inki.dae@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Daniel Vetter <daniel.vetter@intel.com>, linaro-mm-sig@lists.linaro.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] drm/shme-helpers: Fix dma_buf_mmap
 forwarding bug
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjcuMTAuMjAgdW0gMjI6NDkgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IFdoZW4gd2UgZm9y
d2FyZCBhbiBtbWFwIHRvIHRoZSBkbWFfYnVmIGV4cG9ydGVyLCB0aGV5IGdldCB0byBvd24KPiBl
dmVyeXRoaW5nLiBVbmZvcnR1bmF0ZWx5IGRybV9nZW1fbW1hcF9vYmooKSBvdmVyd3JvdGUKPiB2
bWEtPnZtX3ByaXZhdGVfZGF0YSBhZnRlciB0aGUgZHJpdmVyIGNhbGxiYWNrLCB3cmVha2luZyB0
aGUKPiBleHBvcnRlciBjb21wbGV0ZS4gVGhpcyB3YXMgbm90aWNlZCBiZWNhdXNlIHZiMl9jb21t
b25fdm1fY2xvc2UgYmxldwo+IHVwIG9uIG1hbGkgZ3B1IHdpdGggcGFuZnJvc3QgYWZ0ZXIgY29t
bWl0IDI2ZDNhYzNjYjA0ZAo+ICgiZHJtL3NobWVtLWhlbHBlcnM6IFJlZGlyZWN0IG1tYXAgZm9y
IGltcG9ydGVkIGRtYS1idWYiKS4KPgo+IFVuZm9ydHVuYXRlbHkgZHJtX2dlbV9tbWFwX29iaiBh
bHNvIGFjcXVpcmVzIGEgc3VycGx1cyByZWZlcmVuY2UgdGhhdAo+IHdlIG5lZWQgdG8gZHJvcCBp
biBzaG1lbSBoZWxwZXJzLCB3aGljaCBpcyBhIGJpdCBvZiBhIG1pc2xheWVyCj4gc2l0dWF0aW9u
LiBNYXliZSB0aGUgZW50aXJlIGRtYV9idWZfbW1hcCBmb3J3YXJkaW5nIHNob3VsZCBiZSBwdWxs
ZWQKPiBpbnRvIGNvcmUgZ2VtIGNvZGUuCj4KPiBOb3RlIHRoYXQgdGhlIG9ubHkgdHdvIG90aGVy
IGRyaXZlcnMgd2hpY2ggZm9yd2FyZCBtbWFwIGluIHRoZWlyIG93bgo+IGNvZGUgKGV0bmF2aXYg
YW5kIGV4eW5vcykgZ2V0IHRoaXMgc29tZXdoYXQgcmlnaHQgYnkgb3ZlcndyaXRpbmcgdGhlCj4g
Z2VtIG1tYXAgY29kZS4gQnV0IHRoZXkgc2VlbSB0byBzdGlsbCBoYXZlIHRoZSBsZWFrLiBUaGlz
IG1pZ2h0IGJlIGEKPiBnb29kIGV4Y3VzZSB0byBtb3ZlIHRoZXNlIGRyaXZlcnMgb3ZlciB0byBz
aG1lbSBoZWxwZXJzIGNvbXBsZXRlbHkuCj4KPiBOb3RlIHRvIHN0YWJsZSB0ZWFtOiBUaGVyZSdz
IGEgdHJpdmlhbCBjb250ZXh0IGNvbmZsaWN0IHdpdGgKPiBkNjkzZGVmNGZkMWMgKCJkcm06IFJl
bW92ZSBvYnNvbGV0ZSBHRU0gYW5kIFBSSU1FIGNhbGxiYWNrcyBmcm9tCj4gc3RydWN0IGRybV9k
cml2ZXIiKS4gSSdtIGFzc3VtaW5nIGl0J3MgY2xlYXIgd2hlcmUgdG8gcHV0IHRoZSBmaXJzdAo+
IGh1bmssIG90aGVyd2lzZSBJIGNhbiBzZW5kIGEgNS45IHZlcnNpb24gb2YgdGhpcy4KPgo+IENj
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IFN1bWl0
IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IEx1Y2FzIFN0YWNoIDxsLnN0
YWNoQHBlbmd1dHJvbml4LmRlPgo+IENjOiBSdXNzZWxsIEtpbmcgPGxpbnV4K2V0bmF2aXZAYXJt
bGludXgub3JnLnVrPgo+IENjOiBDaHJpc3RpYW4gR21laW5lciA8Y2hyaXN0aWFuLmdtZWluZXJA
Z21haWwuY29tPgo+IENjOiBJbmtpIERhZSA8aW5raS5kYWVAc2Ftc3VuZy5jb20+Cj4gQ2M6IEpv
b255b3VuZyBTaGltIDxqeTA5MjIuc2hpbUBzYW1zdW5nLmNvbT4KPiBDYzogU2V1bmctV29vIEtp
bSA8c3cwMzEyLmtpbUBzYW1zdW5nLmNvbT4KPiBDYzogS3l1bmdtaW4gUGFyayA8a3l1bmdtaW4u
cGFya0BzYW1zdW5nLmNvbT4KPiBGaXhlczogMjZkM2FjM2NiMDRkICgiZHJtL3NobWVtLWhlbHBl
cnM6IFJlZGlyZWN0IG1tYXAgZm9yIGltcG9ydGVkIGRtYS1idWYiKQo+IENjOiBCb3JpcyBCcmV6
aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+IENjOiBUaG9tYXMgWmltbWVy
bWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KPiBDYzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJl
ZGhhdC5jb20+Cj4gQ2M6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gQ2M6IGRyaS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwu
b3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IENjOiA8c3RhYmxlQHZn
ZXIua2VybmVsLm9yZz4gIyB2NS45Kwo+IFJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IHBpb3RyLm9u
aXN6Y3p1a0BnbWFpbC5jb20KPiBDYzogcGlvdHIub25pc3pjenVrQGdtYWlsLmNvbQo+IFNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgoKQWNrZWQt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KCj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jICAgICAgICAgICAgICB8IDQgKystLQo+ICAgZHJp
dmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMgfCA3ICsrKysrKy0KPiAgIDIgZmls
ZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5j
Cj4gaW5kZXggMWRhNjdkMzRlNTVkLi5kNTg2MDY4ZjU1MDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKPiBA
QCAtMTA3Niw2ICsxMDc2LDggQEAgaW50IGRybV9nZW1fbW1hcF9vYmooc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmosIHVuc2lnbmVkIGxvbmcgb2JqX3NpemUsCj4gICAJICovCj4gICAJZHJtX2dl
bV9vYmplY3RfZ2V0KG9iaik7Cj4gICAKPiArCXZtYS0+dm1fcHJpdmF0ZV9kYXRhID0gb2JqOwo+
ICsKPiAgIAlpZiAob2JqLT5mdW5jcy0+bW1hcCkgewo+ICAgCQlyZXQgPSBvYmotPmZ1bmNzLT5t
bWFwKG9iaiwgdm1hKTsKPiAgIAkJaWYgKHJldCkgewo+IEBAIC0xMDk2LDggKzEwOTgsNiBAQCBp
bnQgZHJtX2dlbV9tbWFwX29iaihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgdW5zaWduZWQg
bG9uZyBvYmpfc2l6ZSwKPiAgIAkJdm1hLT52bV9wYWdlX3Byb3QgPSBwZ3Byb3RfZGVjcnlwdGVk
KHZtYS0+dm1fcGFnZV9wcm90KTsKPiAgIAl9Cj4gICAKPiAtCXZtYS0+dm1fcHJpdmF0ZV9kYXRh
ID0gb2JqOwo+IC0KPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIEVYUE9SVF9TWU1CT0woZHJtX2dl
bV9tbWFwX29iaik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVt
X2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKPiBpbmRl
eCBmYjExZGY3YWNlZDUuLjgyMzNiZGE0NjkyZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2Vt
X3NobWVtX2hlbHBlci5jCj4gQEAgLTU5OCw4ICs1OTgsMTMgQEAgaW50IGRybV9nZW1fc2htZW1f
bW1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2
bWEpCj4gICAJLyogUmVtb3ZlIHRoZSBmYWtlIG9mZnNldCAqLwo+ICAgCXZtYS0+dm1fcGdvZmYg
LT0gZHJtX3ZtYV9ub2RlX3N0YXJ0KCZvYmotPnZtYV9ub2RlKTsKPiAgIAo+IC0JaWYgKG9iai0+
aW1wb3J0X2F0dGFjaCkKPiArCWlmIChvYmotPmltcG9ydF9hdHRhY2gpIHsKPiArCQkvKiBEcm9w
IHRoZSByZWZlcmVuY2UgZHJtX2dlbV9tbWFwX29iaigpIGFjcXVpcmVkLiovCj4gKwkJZHJtX2dl
bV9vYmplY3RfcHV0KG9iaik7Cj4gKwkJdm1hLT52bV9wcml2YXRlX2RhdGEgPSBOVUxMOwo+ICsK
PiAgIAkJcmV0dXJuIGRtYV9idWZfbW1hcChvYmotPmRtYV9idWYsIHZtYSwgMCk7Cj4gKwl9Cj4g
ICAKPiAgIAlzaG1lbSA9IHRvX2RybV9nZW1fc2htZW1fb2JqKG9iaik7Cj4gICAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
