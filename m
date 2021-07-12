Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 916C43C6494
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jul 2021 22:02:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BD216696E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jul 2021 20:02:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8298D66965; Mon, 12 Jul 2021 20:02:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 10DE260EA2;
	Mon, 12 Jul 2021 20:02:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C648E6696E
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jul 2021 20:02:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6452E66984; Mon, 12 Jul 2021 20:02:12 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 2E7EA62F00
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jul 2021 20:02:10 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id f17so27272190wrt.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jul 2021 13:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PsoZ6J2M5QyGu071hd73Pkusw3eitnPHMAU0WekmIkg=;
 b=McBGnIpiareUmauIcg6OssgF+sZoif+0H1vQknWReZVHSUvyWdp6P/x0+aJCa9U2DI
 gOBmyr4ICSZFPMWoki/iOkYt/OCP2DuvNBdbFfrTxi+89pmSsWRZdVCaLeYvOEigTbnC
 shAUpfcfdkcnRfiwUhlXLp5XLXFd0gzOT8EYM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PsoZ6J2M5QyGu071hd73Pkusw3eitnPHMAU0WekmIkg=;
 b=Pl5Xl/v6HIvUbFjKwAq0JhZB3MNjKuUXvA9EDdyhPxeiUe7YSHgL1UrgJX5bD1WYZO
 Kl+Cjg+4TTEcYhNMAfmaF6sbSXGL6sd5L7ma+EH9P4FLcXe7NkMln0/GwF2lSFGafblG
 aFZvYHn5kuDpqn3FXf/g3+I4Eeb1T9NZ2UQzoGUYYjQFPhZICCy6AG6lisCbrxqL9Gpk
 FeE3NItmX8ZPrTR11o1OVfelGguFfGpSlEjP2umZjFlfZAGQexE1tGjvku8rKUkYO6RW
 e2x5GJ2DHOIierwqrw0+ANw8T9Hb1HHx89JU6OCKfJAgqvT3zHevYpo9WsUdBDYmutMP
 Gs6g==
X-Gm-Message-State: AOAM532BLan84IO27COMvpWdGLbS2HQQIKZJ2+AZ4+hNozC2eTuVZ0JM
 Uhne6jLn6DP/FVkiPbrCIKAAlg==
X-Google-Smtp-Source: ABdhPJxLYv1YhEHSZ0HnsOvF6U6FhKtgxNQvFJ2CNeBsDQNb5UvcyTF3n6qFUFhuToT1pk1Pk2hnAw==
X-Received: by 2002:a5d:6da2:: with SMTP id u2mr860120wrs.134.1626120129066;
 Mon, 12 Jul 2021 13:02:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm9858221wrs.22.2021.07.12.13.02.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:02:08 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 12 Jul 2021 19:53:45 +0200
Message-Id: <20210712175352.802687-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v4 11/18] drm/gem: Delete gem array fencing
 helpers
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SW50ZWdyYXRlZCBpbnRvIHRoZSBzY2hlZHVsZXIgbm93IGFuZCBhbGwgdXNlcnMgY29udmVydGVk
IG92ZXIuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+CkNjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+CkNjOiBUaG9tYXMg
WmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGll
ZEBsaW51eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IFN1bWl0
IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9y
ZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCi0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9nZW0uYyB8IDk2IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQog
aW5jbHVkZS9kcm0vZHJtX2dlbS5oICAgICB8ICA1IC0tCiAyIGZpbGVzIGNoYW5nZWQsIDEwMSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9nZW0uYwppbmRleCA2OGRlYjFkZTgyMzUuLjI0ZDQ5YTI2MzZlMCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbS5jCkBAIC0xMjk0LDk5ICsxMjk0LDMgQEAgZHJtX2dlbV91bmxvY2tfcmVzZXJ2
YXRpb25zKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqKm9ianMsIGludCBjb3VudCwKIAl3d19hY3F1
aXJlX2ZpbmkoYWNxdWlyZV9jdHgpOwogfQogRVhQT1JUX1NZTUJPTChkcm1fZ2VtX3VubG9ja19y
ZXNlcnZhdGlvbnMpOwotCi0vKioKLSAqIGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkIC0gQWRkcyB0
aGUgZmVuY2UgdG8gYW4gYXJyYXkgb2YgZmVuY2VzIHRvIGJlCi0gKiB3YWl0ZWQgb24sIGRlZHVw
bGljYXRpbmcgZmVuY2VzIGZyb20gdGhlIHNhbWUgY29udGV4dC4KLSAqCi0gKiBAZmVuY2VfYXJy
YXk6IGFycmF5IG9mIGRtYV9mZW5jZSAqIGZvciB0aGUgam9iIHRvIGJsb2NrIG9uLgotICogQGZl
bmNlOiB0aGUgZG1hX2ZlbmNlIHRvIGFkZCB0byB0aGUgbGlzdCBvZiBkZXBlbmRlbmNpZXMuCi0g
KgotICogVGhpcyBmdW5jdGlvbnMgY29uc3VtZXMgdGhlIHJlZmVyZW5jZSBmb3IgQGZlbmNlIGJv
dGggb24gc3VjY2VzcyBhbmQgZXJyb3IKLSAqIGNhc2VzLgotICoKLSAqIFJldHVybnM6Ci0gKiAw
IG9uIHN1Y2Nlc3MsIG9yIGFuIGVycm9yIG9uIGZhaWxpbmcgdG8gZXhwYW5kIHRoZSBhcnJheS4K
LSAqLwotaW50IGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkKHN0cnVjdCB4YXJyYXkgKmZlbmNlX2Fy
cmF5LAotCQkJICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQotewotCXN0cnVjdCBkbWFfZmVu
Y2UgKmVudHJ5OwotCXVuc2lnbmVkIGxvbmcgaW5kZXg7Ci0JdTMyIGlkID0gMDsKLQlpbnQgcmV0
OwotCi0JaWYgKCFmZW5jZSkKLQkJcmV0dXJuIDA7Ci0KLQkvKiBEZWR1cGxpY2F0ZSBpZiB3ZSBh
bHJlYWR5IGRlcGVuZCBvbiBhIGZlbmNlIGZyb20gdGhlIHNhbWUgY29udGV4dC4KLQkgKiBUaGlz
IGxldHMgdGhlIHNpemUgb2YgdGhlIGFycmF5IG9mIGRlcHMgc2NhbGUgd2l0aCB0aGUgbnVtYmVy
IG9mCi0JICogZW5naW5lcyBpbnZvbHZlZCwgcmF0aGVyIHRoYW4gdGhlIG51bWJlciBvZiBCT3Mu
Ci0JICovCi0JeGFfZm9yX2VhY2goZmVuY2VfYXJyYXksIGluZGV4LCBlbnRyeSkgewotCQlpZiAo
ZW50cnktPmNvbnRleHQgIT0gZmVuY2UtPmNvbnRleHQpCi0JCQljb250aW51ZTsKLQotCQlpZiAo
ZG1hX2ZlbmNlX2lzX2xhdGVyKGZlbmNlLCBlbnRyeSkpIHsKLQkJCWRtYV9mZW5jZV9wdXQoZW50
cnkpOwotCQkJeGFfc3RvcmUoZmVuY2VfYXJyYXksIGluZGV4LCBmZW5jZSwgR0ZQX0tFUk5FTCk7
Ci0JCX0gZWxzZSB7Ci0JCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQkJfQotCQlyZXR1cm4gMDsK
LQl9Ci0KLQlyZXQgPSB4YV9hbGxvYyhmZW5jZV9hcnJheSwgJmlkLCBmZW5jZSwgeGFfbGltaXRf
MzJiLCBHRlBfS0VSTkVMKTsKLQlpZiAocmV0ICE9IDApCi0JCWRtYV9mZW5jZV9wdXQoZmVuY2Up
OwotCi0JcmV0dXJuIHJldDsKLX0KLUVYUE9SVF9TWU1CT0woZHJtX2dlbV9mZW5jZV9hcnJheV9h
ZGQpOwotCi0vKioKLSAqIGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0IC0gQWRkcyB0
aGUgaW1wbGljaXQgZGVwZW5kZW5jaWVzIHRyYWNrZWQKLSAqIGluIHRoZSBHRU0gb2JqZWN0J3Mg
cmVzZXJ2YXRpb24gb2JqZWN0IHRvIGFuIGFycmF5IG9mIGRtYV9mZW5jZXMgZm9yIHVzZSBpbgot
ICogc2NoZWR1bGluZyBhIHJlbmRlcmluZyBqb2IuCi0gKgotICogVGhpcyBzaG91bGQgYmUgY2Fs
bGVkIGFmdGVyIGRybV9nZW1fbG9ja19yZXNlcnZhdGlvbnMoKSBvbiB5b3VyIGFycmF5IG9mCi0g
KiBHRU0gb2JqZWN0cyB1c2VkIGluIHRoZSBqb2IgYnV0IGJlZm9yZSB1cGRhdGluZyB0aGUgcmVz
ZXJ2YXRpb25zIHdpdGggeW91cgotICogb3duIGZlbmNlcy4KLSAqCi0gKiBAZmVuY2VfYXJyYXk6
IGFycmF5IG9mIGRtYV9mZW5jZSAqIGZvciB0aGUgam9iIHRvIGJsb2NrIG9uLgotICogQG9iajog
dGhlIGdlbSBvYmplY3QgdG8gYWRkIG5ldyBkZXBlbmRlbmNpZXMgZnJvbS4KLSAqIEB3cml0ZTog
d2hldGhlciB0aGUgam9iIG1pZ2h0IHdyaXRlIHRoZSBvYmplY3QgKHNvIHdlIG5lZWQgdG8gZGVw
ZW5kIG9uCi0gKiBzaGFyZWQgZmVuY2VzIGluIHRoZSByZXNlcnZhdGlvbiBvYmplY3QpLgotICov
Ci1pbnQgZHJtX2dlbV9mZW5jZV9hcnJheV9hZGRfaW1wbGljaXQoc3RydWN0IHhhcnJheSAqZmVu
Y2VfYXJyYXksCi0JCQkJICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKLQkJCQkgICAg
IGJvb2wgd3JpdGUpCi17Ci0JaW50IHJldDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOwot
CXVuc2lnbmVkIGludCBpLCBmZW5jZV9jb3VudDsKLQotCWlmICghd3JpdGUpIHsKLQkJc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UgPQotCQkJZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5y
ZXN2KTsKLQotCQlyZXR1cm4gZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQoZmVuY2VfYXJyYXksIGZl
bmNlKTsKLQl9Ci0KLQlyZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKG9iai0+cmVzdiwgTlVMTCwK
LQkJCQkJCSZmZW5jZV9jb3VudCwgJmZlbmNlcyk7Ci0JaWYgKHJldCB8fCAhZmVuY2VfY291bnQp
Ci0JCXJldHVybiByZXQ7Ci0KLQlmb3IgKGkgPSAwOyBpIDwgZmVuY2VfY291bnQ7IGkrKykgewot
CQlyZXQgPSBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZChmZW5jZV9hcnJheSwgZmVuY2VzW2ldKTsK
LQkJaWYgKHJldCkKLQkJCWJyZWFrOwotCX0KLQotCWZvciAoOyBpIDwgZmVuY2VfY291bnQ7IGkr
KykKLQkJZG1hX2ZlbmNlX3B1dChmZW5jZXNbaV0pOwotCWtmcmVlKGZlbmNlcyk7Ci0JcmV0dXJu
IHJldDsKLX0KLUVYUE9SVF9TWU1CT0woZHJtX2dlbV9mZW5jZV9hcnJheV9hZGRfaW1wbGljaXQp
OwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oIGIvaW5jbHVkZS9kcm0vZHJtX2dl
bS5oCmluZGV4IDI0MDA0OTU2NjU5Mi4uNmQ1ZTMzYjg5MDc0IDEwMDY0NAotLS0gYS9pbmNsdWRl
L2RybS9kcm1fZ2VtLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5oCkBAIC00MDksMTEgKzQw
OSw2IEBAIGludCBkcm1fZ2VtX2xvY2tfcmVzZXJ2YXRpb25zKHN0cnVjdCBkcm1fZ2VtX29iamVj
dCAqKm9ianMsIGludCBjb3VudCwKIAkJCSAgICAgIHN0cnVjdCB3d19hY3F1aXJlX2N0eCAqYWNx
dWlyZV9jdHgpOwogdm9pZCBkcm1fZ2VtX3VubG9ja19yZXNlcnZhdGlvbnMoc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICoqb2JqcywgaW50IGNvdW50LAogCQkJCSBzdHJ1Y3Qgd3dfYWNxdWlyZV9jdHgg
KmFjcXVpcmVfY3R4KTsKLWludCBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZChzdHJ1Y3QgeGFycmF5
ICpmZW5jZV9hcnJheSwKLQkJCSAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7Ci1pbnQgZHJt
X2dlbV9mZW5jZV9hcnJheV9hZGRfaW1wbGljaXQoc3RydWN0IHhhcnJheSAqZmVuY2VfYXJyYXks
Ci0JCQkJICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKLQkJCQkgICAgIGJvb2wgd3Jp
dGUpOwogaW50IGRybV9nZW1fZHVtYl9tYXBfb2Zmc2V0KHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwg
c3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCSAgICB1MzIgaGFuZGxlLCB1NjQgKm9mZnNldCk7
CiAKLS0gCjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
