Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C543EE8E8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Aug 2021 10:53:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A367608D5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Aug 2021 08:53:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 73DDB60C2C; Tue, 17 Aug 2021 08:53:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2992960473;
	Tue, 17 Aug 2021 08:53:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CDDEC6065A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Aug 2021 08:53:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CBBD06075B; Tue, 17 Aug 2021 08:53:15 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id C55296065A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Aug 2021 08:53:13 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 x2-20020a1c7c02000000b002e6f1f69a1eso1291358wmc.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Aug 2021 01:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Foq1jfoZEIBs4n7G/bZZkaAEZKAMJ2fq58X7W55B5Cs=;
 b=ON05/OnTdpSUTAVLFueKtDr2Q2P3k1V4fLOpdhTNgRcS3Mf1AmODgDnnWxVXZD0xS5
 YnDBWCwf9ndzJhCQXUrKh+KxdR0ljJnroirmJG/jugfbsUUvzy7qhJDQpwA1QtDfsrpT
 cXU1kaWBVCQ3iSp3NTFJ9aLbiNIWvRM3CzZDQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Foq1jfoZEIBs4n7G/bZZkaAEZKAMJ2fq58X7W55B5Cs=;
 b=B5C8wy+GabOe9R8+kbr3xnHOzD9a+7gfb83uUi6iAnUc2R0knQOW8QI3XVG0w9C5hn
 6QYpHO2Udm9QlB0OeLnlQnzelc8s0kKXl0bZEnIvoosxZ/CZdS2ZXbNi2DU/z8HLjAbC
 cuX09cyh6Q0jiMRgurjq6UJu9w9hwZo4Mt1sKlNabVn2RuspzMK6nCDy92sNWlSGHJ4G
 xIzRwr/WHvbWnijmKKTbs8zAEkkijucm6dQKxn9HTTtf1VJxy4w3QCwCwNpJwJFvL5Fd
 rsyQ3kIscVbIqXwc74RI8LYYGK6wTdkNOeLmaEw7Ks7EmaSOZF0XE7rhbq45CwkV2GZ6
 /GZQ==
X-Gm-Message-State: AOAM531EFnyYv4FIdOhnbqxtVxtcAWC7k6HGI9tvAfgSe5frwT1cDMfQ
 iIhFyjakCxRYzjO9vqmJ/vIvkQ==
X-Google-Smtp-Source: ABdhPJwpUUwXnjaRx60+hWeIp7RglqDMAgg9WKN2STzJ0qtxfyLS51dWqmDcYZYLpOCamTSqG8h5Nw==
X-Received: by 2002:a7b:cdfa:: with SMTP id p26mr2219643wmj.45.1629190392928; 
 Tue, 17 Aug 2021 01:53:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g11sm1645525wrd.97.2021.08.17.01.53.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 01:53:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 17 Aug 2021 10:53:08 +0200
Message-Id: <20210817085308.3557257-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-3-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-3-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] drm/msm: Improve drm/sched point of no
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
Cc: Rob Clark <robdclark@chromium.org>, freedreno@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Rob Clark <robdclark@gmail.com>,
 linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Sean Paul <sean@poorly.run>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T3JpZ2luYWxseSBkcm1fc2NoZWRfam9iX2luaXQgd2FzIHRoZSBwb2ludCBvZiBubyByZXR1cm4s
IGFmdGVyIHdoaWNoCmRyaXZlcnMgcmVhbGx5IHNob3VsZCBzdWJtaXQgYSBqb2IuIEkndmUgc3Bs
aXQgdGhhdCB1cCwgd2hpY2ggYWxsb3dzCnVzIHRvIGZpeCB0aGlzIGlzc3VlIHByZXR0eSBlYXNp
bHkuCgpPbmx5IHRoaW5nIHdlIGhhdmUgdG8gdGFrZSBjYXJlIG9mIGlzIHRvIG5vdCBza2lwIHRv
IGVycm9yIHBhdGhzIGFmdGVyCnRoYXQuIE90aGVyIGRyaXZlcnMgZG8gdGhpcyB0aGUgc2FtZSBm
b3Igb3V0LWZlbmNlIGFuZCBzaW1pbGFyIHRoaW5ncy4KCnYyOiBJdCdzIG5vdCByZWFsbHkgYSBi
dWdmaXgsIGp1c3QgYW4gaW1wcm92ZW1lbnQsIHNpbmNlIGFsbApkcm1fc2NoZWRfam9iX2FybSBk
b2VzIGlzIHJlc2VydmUgdGhlIGZlbmNlIG51bWJlci4gQW5kIGdhcHMgc2hvdWxkIGJlCmZpbmUs
IGFzIGxvbmcgYXMgdGhlIGRybV9zY2hlZF9qb2IgZG9lc24ndCBlc2NhcGUgYW55d2hlcmUgYXQg
YWxsLgoKRm9yIHJvYnVzdG5lc3MgaXQncyBzdGlsbCBiZXR0ZXIgdG8gYWxpZ24gd2l0aCBvdGhl
ciBkcml2ZXJzIGhlcmUgYW5kCm5vdCBiYWlsIG91dCBhZnRlciBqb2JfYXJtKCkuCgpDYzogUm9i
IENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgpDYzogUm9iIENsYXJrIDxyb2JkY2xhcmtA
Z21haWwuY29tPgpDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+CkNjOiBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBsaW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwpD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogZnJlZWRyZW5vQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1
Ym1pdC5jIHwgMTMgKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9n
ZW1fc3VibWl0LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMKaW5kZXgg
NGQxYzRkNWY2YTJhLi4zNzFlZDkxNTRlNTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2dlbV9zdWJtaXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3Vi
bWl0LmMKQEAgLTUyLDggKzUyLDYgQEAgc3RhdGljIHN0cnVjdCBtc21fZ2VtX3N1Ym1pdCAqc3Vi
bWl0X2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQlyZXR1cm4gRVJSX1BUUihyZXQp
OwogCX0KIAotCWRybV9zY2hlZF9qb2JfYXJtKCZqb2ItPmJhc2UpOwotCiAJeGFfaW5pdF9mbGFn
cygmc3VibWl0LT5kZXBzLCBYQV9GTEFHU19BTExPQyk7CiAKIAlrcmVmX2luaXQoJnN1Ym1pdC0+
cmVmKTsKQEAgLTg4Miw2ICs4ODAsOCBAQCBpbnQgbXNtX2lvY3RsX2dlbV9zdWJtaXQoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAogCXN1Ym1pdC0+dXNlcl9mZW5jZSA9IGRt
YV9mZW5jZV9nZXQoJnN1Ym1pdC0+YmFzZS5zX2ZlbmNlLT5maW5pc2hlZCk7CiAKKwlkcm1fc2No
ZWRfam9iX2FybSgmc3VibWl0LT5iYXNlKTsKKwogCS8qCiAJICogQWxsb2NhdGUgYW4gaWQgd2hp
Y2ggY2FuIGJlIHVzZWQgYnkgV0FJVF9GRU5DRSBpb2N0bCB0byBtYXAgYmFjawogCSAqIHRvIHRo
ZSB1bmRlcmx5aW5nIGZlbmNlLgpAQCAtODkxLDE3ICs4OTEsMTYgQEAgaW50IG1zbV9pb2N0bF9n
ZW1fc3VibWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJaWYgKHN1Ym1p
dC0+ZmVuY2VfaWQgPCAwKSB7CiAJCXJldCA9IHN1Ym1pdC0+ZmVuY2VfaWQgPSAwOwogCQlzdWJt
aXQtPmZlbmNlX2lkID0gMDsKLQkJZ290byBvdXQ7CiAJfQogCi0JaWYgKGFyZ3MtPmZsYWdzICYg
TVNNX1NVQk1JVF9GRU5DRV9GRF9PVVQpIHsKKwlpZiAocmV0ID09IDAgJiYgYXJncy0+ZmxhZ3Mg
JiBNU01fU1VCTUlUX0ZFTkNFX0ZEX09VVCkgewogCQlzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2Zp
bGUgPSBzeW5jX2ZpbGVfY3JlYXRlKHN1Ym1pdC0+dXNlcl9mZW5jZSk7CiAJCWlmICghc3luY19m
aWxlKSB7CiAJCQlyZXQgPSAtRU5PTUVNOwotCQkJZ290byBvdXQ7CisJCX0gZWxzZSB7CisJCQlm
ZF9pbnN0YWxsKG91dF9mZW5jZV9mZCwgc3luY19maWxlLT5maWxlKTsKKwkJCWFyZ3MtPmZlbmNl
X2ZkID0gb3V0X2ZlbmNlX2ZkOwogCQl9Ci0JCWZkX2luc3RhbGwob3V0X2ZlbmNlX2ZkLCBzeW5j
X2ZpbGUtPmZpbGUpOwotCQlhcmdzLT5mZW5jZV9mZCA9IG91dF9mZW5jZV9mZDsKIAl9CiAKIAlz
dWJtaXRfYXR0YWNoX29iamVjdF9mZW5jZXMoc3VibWl0KTsKLS0gCjIuMzIuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
