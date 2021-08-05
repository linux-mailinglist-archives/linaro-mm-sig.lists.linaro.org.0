Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BFB3E1316
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Aug 2021 12:47:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D0E762166
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Aug 2021 10:47:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 64C4F62F00; Thu,  5 Aug 2021 10:47:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 990976329E;
	Thu,  5 Aug 2021 10:47:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DB74B61ED8
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Aug 2021 10:47:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 847A262164; Thu,  5 Aug 2021 10:47:27 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by lists.linaro.org (Postfix) with ESMTPS id 6E0EE66018
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Aug 2021 10:47:23 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id k9so7694945edr.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Aug 2021 03:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AK+c0pgue1U/7WLRgeX/+Ci0DZnUS//VOEaHWRKAX5U=;
 b=SRV5IhN5DMDyWV09eeN3EjfR17ReBj5n9Lq1qSv/r9V6+eQfDRr6fZdauf0iIDq3CO
 o/UNpku9ih2UaUPZI3EXN1ZjVDTZ8Fz1uML0N6lbl7CLwHx+5OgSqMWP8wt11FpXoxm4
 8zLiMn4IuSFdLoDzyQey39Z5B/GSS49sZK9/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AK+c0pgue1U/7WLRgeX/+Ci0DZnUS//VOEaHWRKAX5U=;
 b=k7Gt7zwBzsqOCugAYURCySt/BR3qeovxGwR1eCpqGESSSDUMBiO0bVuOU5BvjAhHO5
 s98ONRB/lOU+hQHqPoQmT8a5u8ue3GIVup7OGcaKOX3SVt4xRD7tUaBzJ4gxgoDRIRQ7
 v0xTn1SfMCFvdBhquDlgyLV1vu9eMI5MaAvIz4Nr4VkQhQ6kjA2JKowgxN3YSceGzQT6
 G1D5jsBdi+jY1frOLZnUznTXFwK8gwoX0JnbFKTCyhCECFSN7HKym89e/fBLGMgTjmh1
 qeuqCFyRqnDH8Zz/bUYh0IQndKtZCDswtsx0n1CR4p6ktIvpxr6erhEcpTI1F88KNtiF
 JGig==
X-Gm-Message-State: AOAM5324Sebl80zufU89QkLXzu42UMlaSTDbFFAfe4KLUgE/xyJIZ8pl
 5uPga9Dh2CTp21qJtGxUs8eMzQ==
X-Google-Smtp-Source: ABdhPJy6FedSEkt/0tNGpACXa9HfTFyknfD9vV0DxBgpb799mTTOLf1VMsdfuF+iWMF0Jbda3JPupw==
X-Received: by 2002:a05:6402:5145:: with SMTP id
 n5mr5647616edd.178.1628160442399; 
 Thu, 05 Aug 2021 03:47:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:22 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  5 Aug 2021 12:46:57 +0200
Message-Id: <20210805104705.862416-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v5 12/20] drm/msm: Use scheduler dependency
 handling
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
Cc: freedreno@lists.freedesktop.org,
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

ZHJtX3NjaGVkX2pvYl9pbml0IGlzIGFscmVhZHkgYXQgdGhlIHJpZ2h0IHBsYWNlLCBzbyB0aGlz
IGJvaWxzIGRvd24KdG8gZGVsZXRpbmcgY29kZS4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21h
aWwuY29tPgpDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+CkNjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+CkNjOiBsaW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwpDYzog
ZnJlZWRyZW5vQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKLS0tCiBkcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9nZW0uaCAgICAgICAgfCAgNSAtLS0tLQogZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZ2VtX3N1Ym1pdC5jIHwgMTkgKysrKystLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUv
ZHJtL21zbS9tc21fcmluZ2J1ZmZlci5jIHwgMTIgLS0tLS0tLS0tLS0tCiAzIGZpbGVzIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL21zbS9tc21fZ2VtLmggYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uaApp
bmRleCBmOWUzZmZiMjMwOWEuLjhiZjBhYzcwN2ZkNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL21zbS9tc21fZ2VtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmgKQEAg
LTMxMiwxMSArMzEyLDYgQEAgc3RydWN0IG1zbV9nZW1fc3VibWl0IHsKIAlzdHJ1Y3Qgd3dfYWNx
dWlyZV9jdHggdGlja2V0OwogCXVpbnQzMl90IHNlcW5vOwkJLyogU2VxdWVuY2UgbnVtYmVyIG9m
IHRoZSBzdWJtaXQgb24gdGhlIHJpbmcgKi8KIAotCS8qIEFycmF5IG9mIHN0cnVjdCBkbWFfZmVu
Y2UgKiB0byBibG9jayBvbiBiZWZvcmUgc3VibWl0dGluZyB0aGlzIGpvYi4KLQkgKi8KLQlzdHJ1
Y3QgeGFycmF5IGRlcHM7Ci0JdW5zaWduZWQgbG9uZyBsYXN0X2RlcDsKLQogCS8qIEh3IGZlbmNl
LCB3aGljaCBpcyBjcmVhdGVkIHdoZW4gdGhlIHNjaGVkdWxlciBleGVjdXRlcyB0aGUgam9iLCBh
bmQKIAkgKiBpcyBzaWduYWxlZCB3aGVuIHRoZSBodyBmaW5pc2hlcyAodmlhIHNlcW5vIHdyaXRl
IGZyb20gY21kc3RyZWFtKQogCSAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZ2VtX3N1Ym1pdC5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jCmlu
ZGV4IDk2Y2VhMGJhNGNmZC4uZmI1YTJlYWIyN2EyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9nZW1fc3VibWl0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2Vt
X3N1Ym1pdC5jCkBAIC01Miw4ICs1Miw2IEBAIHN0YXRpYyBzdHJ1Y3QgbXNtX2dlbV9zdWJtaXQg
KnN1Ym1pdF9jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJcmV0dXJuIEVSUl9QVFIo
cmV0KTsKIAl9CiAKLQl4YV9pbml0X2ZsYWdzKCZzdWJtaXQtPmRlcHMsIFhBX0ZMQUdTX0FMTE9D
KTsKLQogCWtyZWZfaW5pdCgmc3VibWl0LT5yZWYpOwogCXN1Ym1pdC0+ZGV2ID0gZGV2OwogCXN1
Ym1pdC0+YXNwYWNlID0gcXVldWUtPmN0eC0+YXNwYWNlOwpAQCAtNzIsOCArNzAsNiBAQCB2b2lk
IF9fbXNtX2dlbV9zdWJtaXRfZGVzdHJveShzdHJ1Y3Qga3JlZiAqa3JlZikKIHsKIAlzdHJ1Y3Qg
bXNtX2dlbV9zdWJtaXQgKnN1Ym1pdCA9CiAJCQljb250YWluZXJfb2Yoa3JlZiwgc3RydWN0IG1z
bV9nZW1fc3VibWl0LCByZWYpOwotCXVuc2lnbmVkIGxvbmcgaW5kZXg7Ci0Jc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2U7CiAJdW5zaWduZWQgaTsKIAogCWlmIChzdWJtaXQtPmZlbmNlX2lkKSB7CkBA
IC04MiwxMiArNzgsNiBAQCB2b2lkIF9fbXNtX2dlbV9zdWJtaXRfZGVzdHJveShzdHJ1Y3Qga3Jl
ZiAqa3JlZikKIAkJbXV0ZXhfdW5sb2NrKCZzdWJtaXQtPnF1ZXVlLT5sb2NrKTsKIAl9CiAKLQl4
YV9mb3JfZWFjaCAoJnN1Ym1pdC0+ZGVwcywgaW5kZXgsIGZlbmNlKSB7Ci0JCWRtYV9mZW5jZV9w
dXQoZmVuY2UpOwotCX0KLQotCXhhX2Rlc3Ryb3koJnN1Ym1pdC0+ZGVwcyk7Ci0KIAlkbWFfZmVu
Y2VfcHV0KHN1Ym1pdC0+dXNlcl9mZW5jZSk7CiAJZG1hX2ZlbmNlX3B1dChzdWJtaXQtPmh3X2Zl
bmNlKTsKIApAQCAtMzQzLDggKzMzMyw5IEBAIHN0YXRpYyBpbnQgc3VibWl0X2ZlbmNlX3N5bmMo
c3RydWN0IG1zbV9nZW1fc3VibWl0ICpzdWJtaXQsIGJvb2wgbm9faW1wbGljaXQpCiAJCWlmIChu
b19pbXBsaWNpdCkKIAkJCWNvbnRpbnVlOwogCi0JCXJldCA9IGRybV9nZW1fZmVuY2VfYXJyYXlf
YWRkX2ltcGxpY2l0KCZzdWJtaXQtPmRlcHMsIG9iaiwKLQkJCXdyaXRlKTsKKwkJcmV0ID0gZHJt
X3NjaGVkX2pvYl9hZGRfaW1wbGljaXRfZGVwZW5kZW5jaWVzKCZzdWJtaXQtPmJhc2UsCisJCQkJ
CQkJICAgICAgb2JqLAorCQkJCQkJCSAgICAgIHdyaXRlKTsKIAkJaWYgKHJldCkKIAkJCWJyZWFr
OwogCX0KQEAgLTU4OCw3ICs1NzksNyBAQCBzdGF0aWMgc3RydWN0IGRybV9zeW5jb2JqICoqbXNt
X3BhcnNlX2RlcHMoc3RydWN0IG1zbV9nZW1fc3VibWl0ICpzdWJtaXQsCiAJCWlmIChyZXQpCiAJ
CQlicmVhazsKIAotCQlyZXQgPSBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZCgmc3VibWl0LT5kZXBz
LCBmZW5jZSk7CisJCXJldCA9IGRybV9zY2hlZF9qb2JfYWRkX2RlcGVuZGVuY3koJnN1Ym1pdC0+
YmFzZSwgZmVuY2UpOwogCQlpZiAocmV0KQogCQkJYnJlYWs7CiAKQEAgLTc5OCw3ICs3ODksNyBA
QCBpbnQgbXNtX2lvY3RsX2dlbV9zdWJtaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAq
ZGF0YSwKIAkJCWdvdG8gb3V0X3VubG9jazsKIAkJfQogCi0JCXJldCA9IGRybV9nZW1fZmVuY2Vf
YXJyYXlfYWRkKCZzdWJtaXQtPmRlcHMsIGluX2ZlbmNlKTsKKwkJcmV0ID0gZHJtX3NjaGVkX2pv
Yl9hZGRfZGVwZW5kZW5jeSgmc3VibWl0LT5iYXNlLCBpbl9mZW5jZSk7CiAJCWlmIChyZXQpCiAJ
CQlnb3RvIG91dF91bmxvY2s7CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmluZ2J1ZmZlci5jCmlu
ZGV4IGJkNTRjMTQxMjY0OS4uNjUyYjFkZWRkN2MxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9yaW5nYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmlu
Z2J1ZmZlci5jCkBAIC0xMSwxNyArMTEsNiBAQCBzdGF0aWMgdWludCBudW1faHdfc3VibWlzc2lv
bnMgPSA4OwogTU9EVUxFX1BBUk1fREVTQyhudW1faHdfc3VibWlzc2lvbnMsICJUaGUgbWF4ICMg
b2Ygam9icyB0byB3cml0ZSBpbnRvIHJpbmdidWZmZXIgKGRlZmF1bHQgOCkiKTsKIG1vZHVsZV9w
YXJhbShudW1faHdfc3VibWlzc2lvbnMsIHVpbnQsIDA2MDApOwogCi1zdGF0aWMgc3RydWN0IGRt
YV9mZW5jZSAqbXNtX2pvYl9kZXBlbmRlbmN5KHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IsCi0J
CXN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICpzX2VudGl0eSkKLXsKLQlzdHJ1Y3QgbXNtX2dlbV9z
dWJtaXQgKnN1Ym1pdCA9IHRvX21zbV9zdWJtaXQoam9iKTsKLQotCWlmICgheGFfZW1wdHkoJnN1
Ym1pdC0+ZGVwcykpCi0JCXJldHVybiB4YV9lcmFzZSgmc3VibWl0LT5kZXBzLCBzdWJtaXQtPmxh
c3RfZGVwKyspOwotCi0JcmV0dXJuIE5VTEw7Ci19Ci0KIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNl
ICptc21fam9iX3J1bihzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iKQogewogCXN0cnVjdCBtc21f
Z2VtX3N1Ym1pdCAqc3VibWl0ID0gdG9fbXNtX3N1Ym1pdChqb2IpOwpAQCAtNTIsNyArNDEsNiBA
QCBzdGF0aWMgdm9pZCBtc21fam9iX2ZyZWUoc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYikKIH0K
IAogY29uc3Qgc3RydWN0IGRybV9zY2hlZF9iYWNrZW5kX29wcyBtc21fc2NoZWRfb3BzID0gewot
CS5kZXBlbmRlbmN5ID0gbXNtX2pvYl9kZXBlbmRlbmN5LAogCS5ydW5fam9iID0gbXNtX2pvYl9y
dW4sCiAJLmZyZWVfam9iID0gbXNtX2pvYl9mcmVlCiB9OwotLSAKMi4zMi4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
