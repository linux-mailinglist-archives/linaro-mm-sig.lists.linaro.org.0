Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB933E12FE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Aug 2021 12:47:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C94F4634DA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Aug 2021 10:47:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B0685634D8; Thu,  5 Aug 2021 10:47:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5538E619D4;
	Thu,  5 Aug 2021 10:47:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E9A93619CF
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Aug 2021 10:47:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E42AF6141B; Thu,  5 Aug 2021 10:47:15 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by lists.linaro.org (Postfix) with ESMTPS id C11C26141B
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Aug 2021 10:47:13 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id qk33so8762382ejc.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Aug 2021 03:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fC/EAmoj6YexJw+zPVjashZb7GDaw/COXBU45GjF9Ac=;
 b=MN7pbspksKz10+81FOE3trN/U5sKbSIBPH7em0ZCBOj/Y1FzkXL1oYP/m8hSgC/132
 stq2YNlrRF41DaZysPl4dRPUjIH16W2Kl3Uyc6cwU3DrqbIjIVP7HlacdsCVVWN1XWLw
 YgbImO5uWh3ZFshuZvS6R/f3wVt87ST5bsQpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fC/EAmoj6YexJw+zPVjashZb7GDaw/COXBU45GjF9Ac=;
 b=Bz03p+6O67KpRHS9v5FCN4LAB5T+7PmpkTonY+HAAOLYDrN11ZKc9dF4cuquC0QDHN
 6vek8UqYEEpiiWD1nP4VnxLk6BmniU0OLcNVGbGFM3SBOLZa1zIQCPGVhSXLGV9Lx4Za
 wfA110Ne/xxzAFUmVTTcOnquuI5Xuv3Q8oyHvf+3kaA34WWJiz0y6ZUQ8zPvJNwGUiXc
 3JPIewmzrqOa79DptWsfSXPYwhyfcHVOv3/8AcDwNHcBftMKPgAN50CR80Nn5MRB6tXF
 n0jiqOWFL30Z5/FjBShj7/5qY7f2OAix3vf26Hw6r9fef8F+NhOPnWX0lwvTuxtCIxF8
 lDDg==
X-Gm-Message-State: AOAM532kZj3R5W5vEIIt42cKQzMCxNsytia/o2YjL6rpDQcVTWIh712J
 6OEkIfOUba6u3Ehpd4KFyKYi2w==
X-Google-Smtp-Source: ABdhPJz9+W0Fd6alFYJWyAtXBHgsmGsOmeCTZqJWknvhpiCuNjZkNlKXpji5qpwaK4jjI6WcoH07RA==
X-Received: by 2002:a17:906:e24d:: with SMTP id
 gq13mr4168565ejb.466.1628160432643; 
 Thu, 05 Aug 2021 03:47:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  5 Aug 2021 12:46:47 +0200
Message-Id: <20210805104705.862416-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v5 02/20] drm/msm: Fix drm/sched point of no
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
IGFmdGVyIHdoaWNoCmRyaXZlcnMgbXVzdCBzdWJtaXQgYSBqb2IuIEkndmUgc3BsaXQgdGhhdCB1
cCwgd2hpY2ggYWxsb3dzIHVzIHRvIGZpeAp0aGlzIGlzc3VlIHByZXR0eSBlYXNpbHkuCgpPbmx5
IHRoaW5nIHdlIGhhdmUgdG8gdGFrZSBjYXJlIG9mIGlzIHRvIG5vdCBza2lwIHRvIGVycm9yIHBh
dGhzIGFmdGVyCnRoYXQuIE90aGVyIGRyaXZlcnMgZG8gdGhpcyB0aGUgc2FtZSBmb3Igb3V0LWZl
bmNlIGFuZCBzaW1pbGFyIHRoaW5ncy4KCkZpeGVzOiAxZDhhNWNhNDM2ZWUgKCJkcm0vbXNtOiBD
b252ZXJzaW9uIHRvIGRybSBzY2hlZHVsZXIiKQpDYzogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hy
b21pdW0ub3JnPgpDYzogUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPgpDYzogU2VhbiBQ
YXVsIDxzZWFuQHBvb3JseS5ydW4+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5h
cm8ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
CkNjOiBsaW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwpDYzogZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpDYzogZnJlZWRyZW5vQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGlu
dXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jIHwgMTUgKysrKysrKy0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYyBiL2RyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYwppbmRleCA2ZDZjNDRmMGUxZjMuLmQwZWQ0
ZGRjNTA5ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYwpAQCAtNTIsOSArNTIs
NiBAQCBzdGF0aWMgc3RydWN0IG1zbV9nZW1fc3VibWl0ICpzdWJtaXRfY3JlYXRlKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsCiAJCXJldHVybiBFUlJfUFRSKHJldCk7CiAJfQogCi0JLyogRklYTUU6
IHRoaXMgaXMgd2F5IHRvbyBlYXJseSAqLwotCWRybV9zY2hlZF9qb2JfYXJtKCZqb2ItPmJhc2Up
OwotCiAJeGFfaW5pdF9mbGFncygmc3VibWl0LT5kZXBzLCBYQV9GTEFHU19BTExPQyk7CiAKIAlr
cmVmX2luaXQoJnN1Ym1pdC0+cmVmKTsKQEAgLTg4Myw2ICs4ODAsOSBAQCBpbnQgbXNtX2lvY3Rs
X2dlbV9zdWJtaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAogCXN1Ym1p
dC0+dXNlcl9mZW5jZSA9IGRtYV9mZW5jZV9nZXQoJnN1Ym1pdC0+YmFzZS5zX2ZlbmNlLT5maW5p
c2hlZCk7CiAKKwkvKiBwb2ludCBvZiBubyByZXR1cm4sIHdlIF9oYXZlXyB0byBzdWJtaXQgbm8g
bWF0dGVyIHdoYXQgKi8KKwlkcm1fc2NoZWRfam9iX2FybSgmc3VibWl0LT5iYXNlKTsKKwogCS8q
CiAJICogQWxsb2NhdGUgYW4gaWQgd2hpY2ggY2FuIGJlIHVzZWQgYnkgV0FJVF9GRU5DRSBpb2N0
bCB0byBtYXAgYmFjawogCSAqIHRvIHRoZSB1bmRlcmx5aW5nIGZlbmNlLgpAQCAtODkyLDE3ICs4
OTIsMTYgQEAgaW50IG1zbV9pb2N0bF9nZW1fc3VibWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsCiAJaWYgKHN1Ym1pdC0+ZmVuY2VfaWQgPCAwKSB7CiAJCXJldCA9IHN1Ym1p
dC0+ZmVuY2VfaWQgPSAwOwogCQlzdWJtaXQtPmZlbmNlX2lkID0gMDsKLQkJZ290byBvdXQ7CiAJ
fQogCi0JaWYgKGFyZ3MtPmZsYWdzICYgTVNNX1NVQk1JVF9GRU5DRV9GRF9PVVQpIHsKKwlpZiAo
cmV0ID09IDAgJiYgYXJncy0+ZmxhZ3MgJiBNU01fU1VCTUlUX0ZFTkNFX0ZEX09VVCkgewogCQlz
dHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGUgPSBzeW5jX2ZpbGVfY3JlYXRlKHN1Ym1pdC0+dXNl
cl9mZW5jZSk7CiAJCWlmICghc3luY19maWxlKSB7CiAJCQlyZXQgPSAtRU5PTUVNOwotCQkJZ290
byBvdXQ7CisJCX0gZWxzZSB7CisJCQlmZF9pbnN0YWxsKG91dF9mZW5jZV9mZCwgc3luY19maWxl
LT5maWxlKTsKKwkJCWFyZ3MtPmZlbmNlX2ZkID0gb3V0X2ZlbmNlX2ZkOwogCQl9Ci0JCWZkX2lu
c3RhbGwob3V0X2ZlbmNlX2ZkLCBzeW5jX2ZpbGUtPmZpbGUpOwotCQlhcmdzLT5mZW5jZV9mZCA9
IG91dF9mZW5jZV9mZDsKIAl9CiAKIAlzdWJtaXRfYXR0YWNoX29iamVjdF9mZW5jZXMoc3VibWl0
KTsKLS0gCjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
