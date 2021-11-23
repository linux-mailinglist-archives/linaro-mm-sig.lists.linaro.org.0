Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FD345A58A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:23:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB6D162168
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:23:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9301C6216E; Tue, 23 Nov 2021 14:22:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E079B63144;
	Tue, 23 Nov 2021 14:22:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 41EEE620CA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3D0A462169; Tue, 23 Nov 2021 14:21:53 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by lists.linaro.org (Postfix) with ESMTPS id 2B8B062C93
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:49 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 77-20020a1c0450000000b0033123de3425so2455228wme.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xR1nHIQR+HY5rurJTXhG523nepCCoi6AKz+ZxgPV9e4=;
 b=BTqipD6axEdvFS1qNdyue067ov95lW4E2a6zp708LmkVTtkeerVpwqnJhPFVrfumv5
 xuFk26cb70nj8GVHRLOG39Vvc7V/P2EZdcXBxNZNOD2NsKSknt5c27AARzTevTtm2l+v
 IzcyNOSovh/8bHnvDDoZQM60pa9MIUQBtVINjJqOtiAhluOxMhPtqxK89mdvMu+vOyFX
 JLWKvlTQxKjNKHvhQVl8vfh+LMGXeWTb0Gz95PfKUPbVp58UHNSo96bX6Nn8H6Oh6mKO
 1GyeZKiYXijk1nFVpBzuBdxGOBTnm7lFJbmry3asbr57LXcqvIAS3Wp4y6jmjODSdzFf
 KGCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xR1nHIQR+HY5rurJTXhG523nepCCoi6AKz+ZxgPV9e4=;
 b=gtiQ2NI+QYZ8S+YA8BKgQTO+fTfoPHI7+eNdE90iUsR8YatsaHF1UMhyfV5lILDOp2
 9V2Votdd55dWQUlLHFWqeTA9HEKNABgS/DSsOmp0Su57fHf+0mJ109ha+dIZUlVqlVWx
 EGH4dSq6OhhIyrY3p5mu3XSbTEX0te8YYBsHSqXtpPyb8qNAsNjvEGleoHZUjwcQXfQl
 5bF3sn1smFNy/MMCT4G6RUl2vmxAdzW9NrWgG4WpVTlL70JMgF289sdU06DD2/8r52TJ
 BhBHjhY9EzjaraIoKYpSUQKuDQib8D/OY2+jqQtK/FZA4O5n1XuF058EdMzw0z5K/XXO
 GhAg==
X-Gm-Message-State: AOAM531jr1HwKxXAdQbaiGCyj3t17MXgzS0CZc0n48ku9Bnw1XC6HZdh
 FmAyPKsDdjAJ3hoEO01WO3o=
X-Google-Smtp-Source: ABdhPJwsYTfsgAB3lOAVoiiFf/7GcQC8rbzKcBIGp6cEfhtBHCNSmGTA2nFXLk/Ck8OjVaGW+Vb6rg==
X-Received: by 2002:a7b:c444:: with SMTP id l4mr3443925wmi.115.1637677308688; 
 Tue, 23 Nov 2021 06:21:48 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:48 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:21:04 +0100
Message-Id: <20211123142111.3885-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 19/26] drm: support more than one write
 fence in drm_gem_plane_helper_prepare_fb
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VXNlIGRtYV9yZXN2X2dldF9zaW5nbGV0b24oKSBoZXJlIHRvIGV2ZW50dWFsbHkgZ2V0IG1vcmUg
dGhhbiBvbmUgd3JpdGUKZmVuY2UgYXMgc2luZ2xlIGZlbmNlLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYyB8IDE4ICsrKysrKystLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCmluZGV4IGMzMTg5YWZlMTBjYi4uOTMzOGRkYjdl
ZGZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCkBAIC0xNDMsMjUg
KzE0MywyMSBAQAogICovCiBpbnQgZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9mYihzdHJ1
Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUpCiB7Ci0J
c3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwogCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2Jq
OwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCWludCByZXQ7CiAKIAlpZiAoIXN0YXRlLT5m
YikKIAkJcmV0dXJuIDA7CiAKIAlvYmogPSBkcm1fZ2VtX2ZiX2dldF9vYmooc3RhdGUtPmZiLCAw
KTsKLQlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+cmVzdiwgZmFsc2UpOwotCWRt
YV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7Ci0JCS8qIFRP
RE86IEN1cnJlbnRseSB0aGVyZSBzaG91bGQgYmUgb25seSBvbmUgd3JpdGUgZmVuY2UsIHNvIHRo
aXMKLQkJICogaGVyZSB3b3JrcyBmaW5lLiBCdXQgZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3Bs
YW5lKCkgc2hvdWxkCi0JCSAqIGJlIGNoYW5nZWQgdG8gYmUgYWJsZSB0byBoYW5kbGUgbW9yZSBm
ZW5jZXMgaW4gZ2VuZXJhbCBmb3IKLQkJICogbXVsdGlwbGUgQk9zIHBlciBmYiBhbnl3YXkuICov
Ci0JCWRtYV9mZW5jZV9nZXQoZmVuY2UpOwotCQlicmVhazsKLQl9Ci0JZG1hX3Jlc3ZfaXRlcl9l
bmQoJmN1cnNvcik7CisJcmV0ID0gZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihvYmotPnJlc3YsIGZh
bHNlLCAmZmVuY2UpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CiAKKwkvKiBUT0RPOiBkcm1f
YXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoKSBzaG91bGQgYmUgY2hhbmdlZCB0byBiZSBhYmxl
CisJICogdG8gaGFuZGxlIG1vcmUgZmVuY2VzIGluIGdlbmVyYWwgZm9yIG11bHRpcGxlIEJPcyBw
ZXIgZmIuCisJICovCiAJZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRlLCBmZW5j
ZSk7CiAJcmV0dXJuIDA7CiB9Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
