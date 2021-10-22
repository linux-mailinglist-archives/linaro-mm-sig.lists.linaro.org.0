Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7594377D0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Oct 2021 15:17:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BA2560BEC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Oct 2021 13:17:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4B20060BCA; Fri, 22 Oct 2021 13:17:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1D8C60BCA;
	Fri, 22 Oct 2021 13:17:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 71D9660BC0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Oct 2021 13:17:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 667C460BCA; Fri, 22 Oct 2021 13:17:22 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 5CF1460BC0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Oct 2021 13:17:20 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id m22so4115993wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Oct 2021 06:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=xzYyGlNbpTpvd6sNJdRWzkh7BYc81KJzN7aG/37+xnw=;
 b=Wb0IMU0euio0jP04+Ag5kuxoh1MQufsfd2QRp3sI+Az4W30cmQtw3AWAzQ9kufl2u6
 T86AdjyQRsKxL0Rcub27Y0pvseoX06QIabpUUcugftBPPSM1+G3HKXi3jxAVB3sxQlFt
 W1vsR38o56VZW/+5lP81/Wf3mpI513KMR752iV2YyVphELCzOlCQE9+Aj3M51BR8tLed
 xv4dgzu/VuEVzqrD2vZqfgrnRnCEfuCraK+xC+IQNEFburrJFRj1zZI7w16LzDJXKMxl
 WnLkXpRDcn7OfkNHVwIMTI/9CfkObryOC6dmedqohvuRhKWAuH+ZnLdOVk+A0Gz8jMnc
 FMUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=xzYyGlNbpTpvd6sNJdRWzkh7BYc81KJzN7aG/37+xnw=;
 b=qbYkVrrZHkqfjp5BpPfaueOfvqYPEO7s9Io1PJ5VuJau70h3UggdUOa/cm1C7R7Ka0
 eGv4B1SWIHLEqcfytT61Kt/H4G+wFVOAVdZfB6JLz2XFGkictqNnFuhcO+3rjHdMXnDG
 SlarVKwHK/0n4/hxLK9BCwLCEGYEpMHsMk/GOqoKVC4LisYXhHPFA9NswjpJw4EK2rTg
 q6P0Nco+/BxqFycg+VY6qESsSaQnQbtlur12Wvb5yBAfhHm0UiYLrnu2IwUnI9l2AulE
 fC6UVsOn9+gy5EixL+bESfK3OIetj4Yu2Xbu532CJY2hbE9WQrjpRRdtV4ccCtUnFpL0
 NanQ==
X-Gm-Message-State: AOAM5311CTIV6HbrpmZxpEvhPZpQHOlMGCauWGjFAzifzQjgkgvw9wyh
 Z+SGCmJThi9sLf4HUmyu7bo=
X-Google-Smtp-Source: ABdhPJz1bcP9pVdKxvZWKI3UICXsg+Jou2mv8pwgCLGrQkQRbz9ygCJr3KFv1jOtT9CfdADeNSXIRA==
X-Received: by 2002:adf:ab1c:: with SMTP id q28mr15823427wrc.39.1634908639344; 
 Fri, 22 Oct 2021 06:17:19 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:a39f:d981:e7cb:e6dc?
 ([2a02:908:1252:fb60:a39f:d981:e7cb:e6dc])
 by smtp.gmail.com with ESMTPSA id e2sm3047986wrt.8.2021.10.22.06.17.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 Oct 2021 06:17:18 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-27-christian.koenig@amd.com>
 <YWbtV2ZVHg7n1xpm@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <cca39a70-5820-18e2-8bda-a4a0d7ad2c31@gmail.com>
Date: Fri, 22 Oct 2021 15:17:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YWbtV2ZVHg7n1xpm@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 26/28] drm/nouveau: use the new
 interator in nv50_wndw_prepare_fb
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
Cc: linaro-mm-sig@lists.linaro.org, tvrtko.ursulin@linux.intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTMuMTAuMjEgdW0gMTY6Mjkgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgT2N0
IDA1LCAyMDIxIGF0IDAxOjM3OjQwUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IE1ha2VzIHRoZSBoYW5kbGluZyBhIGJpdCBtb3JlIGNvbXBsZXgsIGJ1dCBhdm9pZHMgdGhlIHVz
ZSBvZgo+PiBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZCgpLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IC0tLQo+PiAg
IGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYyB8IDEwICsrKysrKysrKy0K
Pj4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC93bmR3LmMgYi9k
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC93bmR3LmMKPj4gaW5kZXggOGQwNDhiYWNk
NmYwLi4zMDcxMmE2ODFlMmEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1
L2Rpc3BudjUwL3duZHcuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1
MC93bmR3LmMKPj4gQEAgLTUzOSw2ICs1MzksOCBAQCBudjUwX3duZHdfcHJlcGFyZV9mYihzdHJ1
Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUpCj4+ICAg
CXN0cnVjdCBub3V2ZWF1X2JvICpudmJvOwo+PiAgIAlzdHJ1Y3QgbnY1MF9oZWFkX2F0b20gKmFz
eWg7Cj4+ICAgCXN0cnVjdCBudjUwX3duZHdfY3R4ZG1hICpjdHhkbWE7Cj4+ICsJc3RydWN0IGRt
YV9yZXN2X2l0ZXIgY3Vyc29yOwo+PiArCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+PiAgIAlp
bnQgcmV0Owo+PiAgIAo+PiAgIAlOVl9BVE9NSUMoZHJtLCAiJXMgcHJlcGFyZTogJXBcbiIsIHBs
YW5lLT5uYW1lLCBmYik7Cj4+IEBAIC01NjEsNyArNTYzLDEzIEBAIG52NTBfd25kd19wcmVwYXJl
X2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpzdGF0
ZSkKPj4gICAJCQlhc3l3LT5pbWFnZS5oYW5kbGVbMF0gPSBjdHhkbWEtPm9iamVjdC5oYW5kbGU7
Cj4+ICAgCX0KPj4gICAKPj4gLQlhc3l3LT5zdGF0ZS5mZW5jZSA9IGRtYV9yZXN2X2dldF9leGNs
X3VubG9ja2VkKG52Ym8tPmJvLmJhc2UucmVzdik7Cj4+ICsJZG1hX3Jlc3ZfaXRlcl9iZWdpbigm
Y3Vyc29yLCBudmJvLT5iby5iYXNlLnJlc3YsIGZhbHNlKTsKPj4gKwlkbWFfcmVzdl9mb3JfZWFj
aF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+PiArCQkvKiBUT0RPOiBXZSBvbmx5
IHVzZSB0aGUgZmlyc3Qgd3JpdGVyIGhlcmUgKi8KPiBTYW1lIHRoaW5nIGFzIHdpdGggdGhlIGF0
b21pYyBjb3JlIGhlbHBlci4gVGhpcyBpcyBhY3R1YWxseSBicm9rZW4sCj4gYmVjYXVzZSBmb3Ig
YXRvbWljIHdlIHJlYWxseSBkbyBfbm90XyB3YW50IHRvIHdhaXQgZm9yIGFueSBzaGFyZWQgZmVu
Y2VzLgo+IFdoaWNoIHRoaXMgd2lsbCBkbywgaWYgdGhlcmUncyBubyBleGNsdXNpdmUgZmVuY2Ug
YXR0YWNoZWQuCj4KPiBTbyB1cGdyYWRpbmcgbXkgZ2VuZXJhbCBjb25jZXJuIG9uIHRoaXMgYW5k
IHRoZSBhdG9taWMgaGVscGVyIHBhdGNoIHRvIGEKPiByZWplY3QsIHNpbmNlIEkgdGhpbmsgaXQn
cyBicm9rZW4uCgpTaW5jZSB3ZSBzaW1wbHkgaGFkIGEgbWlzdW5kZXJzdGFuZGluZyB3aXRoIHRo
YXQgY291bGQgSSBnZXQgYW4gcmIgZm9yIAp0aGF0IG5vdz8KClRoYW5rcywKQ2hyaXN0aWFuLgoK
PiAtRGFuaWVsCj4KPj4gKwkJYXN5dy0+c3RhdGUuZmVuY2UgPSBkbWFfZmVuY2VfZ2V0KGZlbmNl
KTsKPj4gKwkJYnJlYWs7Cj4+ICsJfQo+PiArCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwo+
PiAgIAlhc3l3LT5pbWFnZS5vZmZzZXRbMF0gPSBudmJvLT5vZmZzZXQ7Cj4+ICAgCj4+ICAgCWlm
ICh3bmR3LT5mdW5jLT5wcmVwYXJlKSB7Cj4+IC0tIAo+PiAyLjI1LjEKPj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
