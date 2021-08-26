Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3E43F8B20
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Aug 2021 17:35:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EECF6116E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Aug 2021 15:34:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4112B62079; Thu, 26 Aug 2021 15:34:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1E826102D;
	Thu, 26 Aug 2021 15:34:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7A784605A9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Aug 2021 15:34:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 68E1B6102D; Thu, 26 Aug 2021 15:34:33 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 612C3605A9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Aug 2021 15:34:31 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id i6so5773056wrv.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Aug 2021 08:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6ledkqU9D7FzcL/5ouJNmCXuXtKins7U1aoW3QxLbVU=;
 b=jiDI7yC/eT7HEe9sQm38w7hIxFvvo4EfE4Scx9xXHFUrWsbewLm3vkOb+B1QtiBPTc
 1pmwSmFQzxPGrrJh4AP8FppBdNDpQ2Aw65Bmro1bbZGcOxe8tesKl0HXb50Mgvz4xCdn
 zfJbhzNxfFIKD4BXgyUJYuYsUBicVPm6ngREnHXMFqiDAszRpcG/5dGTTmStoAmv8062
 QbQQeQPk33VzCUkcG6AfCSOKMbq4nNhib3wDooslcoiyQKIHCIZOCDiGwW6OQ7pAwkBA
 SJscnToOzErB9p3dp2gCvGHJRpL0oFfpEZ6qLihP0aot4co1SCXahgLNAzO1OjBuaRM8
 bGJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6ledkqU9D7FzcL/5ouJNmCXuXtKins7U1aoW3QxLbVU=;
 b=jCgiv4VepoQBExSlKakEt7yPF0XypWo4nFmGCR+sDb2ffZz14/MuoY0f021exbOE5O
 GECWzm6R29QYUBKsXOkM2uca+TAJBeGINLFh/MWnbsMjHjHy6WBRTsMv3Fu69nhfr9BT
 QJlmXkHM1vc3C3niqKU03dElw4Eg4DS9dWYdxJ8eSiCQ/kxe8pUM/idiUqduEZCssj/+
 qaowr9/O7jCZQ9o/ZmnkI0LQaBCPnLbmrOXljaNrFxS8nHrqmF07YYJMfrQiz3+QDtSl
 uxtk4wNGyuPbH1Duw0YggTbgypNul00bepEpaWrrvmKCOzU2b6buqHxKfQrVOxc33dum
 W7EA==
X-Gm-Message-State: AOAM530KfhlvLoG6dbKQ1YF055AV4aPDYsZqLywpPR0RDRa5f5ut40y9
 eHWj9+/d9u2KQF3rEmB3inGGV1+5ZZ27ISjFcfw=
X-Google-Smtp-Source: ABdhPJxNi7BD0F9Nk2M8iBXkon89Q02BBjrW2NrVCNpKlZ5X5qHkwp/W2LBzZ7ppSDqjH2XlmT9Atndgc3cblhH236o=
X-Received: by 2002:adf:9021:: with SMTP id h30mr4549091wrh.327.1629992070122; 
 Thu, 26 Aug 2021 08:34:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210817085308.3557257-1-daniel.vetter@ffwll.ch>
 <20210826093334.1117944-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210826093334.1117944-1-daniel.vetter@ffwll.ch>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 26 Aug 2021 08:38:50 -0700
Message-ID: <CAF6AEGvVjrii3-22ocsuej8Hw-2OLG8Zok-LsUceh4Aqu=45-g@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/msm: Improve drm/sched point of no
 return rules
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

T24gVGh1LCBBdWcgMjYsIDIwMjEgYXQgMjozMyBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPiB3cm90ZToKPgo+IE9yaWdpbmFsbHkgZHJtX3NjaGVkX2pvYl9pbml0IHdh
cyB0aGUgcG9pbnQgb2Ygbm8gcmV0dXJuLCBhZnRlciB3aGljaAo+IGRyaXZlcnMgcmVhbGx5IHNo
b3VsZCBzdWJtaXQgYSBqb2IuIEkndmUgc3BsaXQgdGhhdCB1cCwgd2hpY2ggYWxsb3dzCj4gdXMg
dG8gZml4IHRoaXMgaXNzdWUgcHJldHR5IGVhc2lseS4KPgo+IE9ubHkgdGhpbmcgd2UgaGF2ZSB0
byB0YWtlIGNhcmUgb2YgaXMgdG8gbm90IHNraXAgdG8gZXJyb3IgcGF0aHMgYWZ0ZXIKPiB0aGF0
LiBPdGhlciBkcml2ZXJzIGRvIHRoaXMgdGhlIHNhbWUgZm9yIG91dC1mZW5jZSBhbmQgc2ltaWxh
ciB0aGluZ3MuCj4KPiB2MjogSXQncyBub3QgcmVhbGx5IGEgYnVnZml4LCBqdXN0IGFuIGltcHJv
dmVtZW50LCBzaW5jZSBhbGwKPiBkcm1fc2NoZWRfam9iX2FybSBkb2VzIGlzIHJlc2VydmUgdGhl
IGZlbmNlIG51bWJlci4gQW5kIGdhcHMgc2hvdWxkIGJlCj4gZmluZSwgYXMgbG9uZyBhcyB0aGUg
ZHJtX3NjaGVkX2pvYiBkb2Vzbid0IGVzY2FwZSBhbnl3aGVyZSBhdCBhbGwuCj4KPiBGb3Igcm9i
dXN0bmVzcyBpdCdzIHN0aWxsIGJldHRlciB0byBhbGlnbiB3aXRoIG90aGVyIGRyaXZlcnMgaGVy
ZSBhbmQKPiBub3QgYmFpbCBvdXQgYWZ0ZXIgam9iX2FybSgpLgo+Cj4gdjM6IEkgbWlzcGxhY2Vk
IGRybV9zY2hlZF9qb2JfYXJtIGJ5IF9vbmVfIGxpbmUhIFRoYW5rcyB0byBSb2IgZm9yCj4gdGVz
dGluZyBhbmQgZGVidWcgaGVscC4KPgo+IENjOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1
bS5vcmc+Cj4gQ2M6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4KPiBDYzogU2VhbiBQ
YXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgo+IENjOiBsaW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwo+IENjOiBkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGZyZWVkcmVub0BsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAaW50ZWwuY29tPgoKdC1iICYmIHItYgoKQlIsCi1SCgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMgfCAxMyArKysrKystLS0tLS0tCj4gIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jIGIvZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZ2VtX3N1Ym1pdC5jCj4gaW5kZXggNGQxYzRkNWY2YTJhLi43MWI4YzhmNzUyYTMgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jCj4gQEAgLTUyLDggKzUyLDYgQEAg
c3RhdGljIHN0cnVjdCBtc21fZ2VtX3N1Ym1pdCAqc3VibWl0X2NyZWF0ZShzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAo+ICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUihyZXQpOwo+ICAgICAg
ICAgfQo+Cj4gLSAgICAgICBkcm1fc2NoZWRfam9iX2FybSgmam9iLT5iYXNlKTsKPiAtCj4gICAg
ICAgICB4YV9pbml0X2ZsYWdzKCZzdWJtaXQtPmRlcHMsIFhBX0ZMQUdTX0FMTE9DKTsKPgo+ICAg
ICAgICAga3JlZl9pbml0KCZzdWJtaXQtPnJlZik7Cj4gQEAgLTg4MCw2ICs4NzgsOCBAQCBpbnQg
bXNtX2lvY3RsX2dlbV9zdWJtaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwK
Pgo+ICAgICAgICAgc3VibWl0LT5ucl9jbWRzID0gaTsKPgo+ICsgICAgICAgZHJtX3NjaGVkX2pv
Yl9hcm0oJnN1Ym1pdC0+YmFzZSk7Cj4gKwo+ICAgICAgICAgc3VibWl0LT51c2VyX2ZlbmNlID0g
ZG1hX2ZlbmNlX2dldCgmc3VibWl0LT5iYXNlLnNfZmVuY2UtPmZpbmlzaGVkKTsKPgo+ICAgICAg
ICAgLyoKPiBAQCAtODkxLDE3ICs4OTEsMTYgQEAgaW50IG1zbV9pb2N0bF9nZW1fc3VibWl0KHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAgICAgICBpZiAoc3VibWl0LT5m
ZW5jZV9pZCA8IDApIHsKPiAgICAgICAgICAgICAgICAgcmV0ID0gc3VibWl0LT5mZW5jZV9pZCA9
IDA7Cj4gICAgICAgICAgICAgICAgIHN1Ym1pdC0+ZmVuY2VfaWQgPSAwOwo+IC0gICAgICAgICAg
ICAgICBnb3RvIG91dDsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgaWYgKGFyZ3MtPmZsYWdzICYg
TVNNX1NVQk1JVF9GRU5DRV9GRF9PVVQpIHsKPiArICAgICAgIGlmIChyZXQgPT0gMCAmJiBhcmdz
LT5mbGFncyAmIE1TTV9TVUJNSVRfRkVOQ0VfRkRfT1VUKSB7Cj4gICAgICAgICAgICAgICAgIHN0
cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZSA9IHN5bmNfZmlsZV9jcmVhdGUoc3VibWl0LT51c2Vy
X2ZlbmNlKTsKPiAgICAgICAgICAgICAgICAgaWYgKCFzeW5jX2ZpbGUpIHsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICByZXQgPSAtRU5PTUVNOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIGdv
dG8gb3V0Owo+ICsgICAgICAgICAgICAgICB9IGVsc2Ugewo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGZkX2luc3RhbGwob3V0X2ZlbmNlX2ZkLCBzeW5jX2ZpbGUtPmZpbGUpOwo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGFyZ3MtPmZlbmNlX2ZkID0gb3V0X2ZlbmNlX2ZkOwo+ICAgICAgICAg
ICAgICAgICB9Cj4gLSAgICAgICAgICAgICAgIGZkX2luc3RhbGwob3V0X2ZlbmNlX2ZkLCBzeW5j
X2ZpbGUtPmZpbGUpOwo+IC0gICAgICAgICAgICAgICBhcmdzLT5mZW5jZV9mZCA9IG91dF9mZW5j
ZV9mZDsKPiAgICAgICAgIH0KPgo+ICAgICAgICAgc3VibWl0X2F0dGFjaF9vYmplY3RfZmVuY2Vz
KHN1Ym1pdCk7Cj4gLS0KPiAyLjMyLjAKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
