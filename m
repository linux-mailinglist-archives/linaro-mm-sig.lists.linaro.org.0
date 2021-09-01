Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4910B3FD92E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Sep 2021 14:03:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB95063629
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Sep 2021 12:03:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AB10F63538; Wed,  1 Sep 2021 12:02:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B11EA61081;
	Wed,  1 Sep 2021 12:02:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EADDB60A59
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Sep 2021 12:02:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D869560F1F; Wed,  1 Sep 2021 12:02:50 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id BD4B860F1F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Sep 2021 12:02:48 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id b6so4085535wrh.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Sep 2021 05:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t19VNYD7z90zjqfUtw8wZympFk0WCxWbJcimp6O0h0E=;
 b=G6ETOEwW1DPJao3SNyHPhkWySxellpwcrOanOx+H/U7C60K1lguHGdZmCJRhXBf3wf
 DBTcqxD2TEZNZSpFgA2EDgdJQU2E86xO5+toACv95jPAd5le/2TG6Vy1WGZJs+gH8kGh
 ek7/eCwhfvaygdmXw+kUt35t/X6Dr8xxXyg2RzH7xXSvxXi0kVpusUS2v3NW6rkMmgU/
 bxMvFO6cbDpiMe6jPWR5ZjG2TRrT2r+PxeAK2jBwsBILg+CM2IZ2sBusluOmYs83rD6f
 s4WH4X2oNm2nxupCldljLiylGJhtgBKgqjCKSXoVB2x7OIsXE+gh0TYAGmA3VVA42Ft1
 o4Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t19VNYD7z90zjqfUtw8wZympFk0WCxWbJcimp6O0h0E=;
 b=msKS3VA95AAUclCaKBY/axztrAszqoA86HhZjHD2l7Bk4vOrpcecUPJ7Xlc4f+iWjv
 UldR10VjmgH7vn+bcSQz1KFOtH0yxuWzul9g8KA2TBQ6TOwC6mPNeDTSi039ByRZH86S
 UhsjhtQhB3kdc/X1oKgrGRKU+7hDU/lsF+8OQTqKwU8vr4+vGZoZjA8YibpAxdPNlOng
 mkIdIBgOpOnDMomrbjvBS0qtLdqJRxOFnIJ09163XJUE6DhS3bdGevFmY3LYTbFMOMD3
 dRUHxaOsbFwR5t3IjokB5vkhdRMsYj178wV5eslokfQlg++Wxv877bm9hk+VOy5+C4Jq
 9E0A==
X-Gm-Message-State: AOAM530aAUbu/NP7KahnHwkDx9m1fQCaUe+sUSjPYtudba2j57eKv+Xa
 /iNkpXDc1nTlpbquka1GGJQ=
X-Google-Smtp-Source: ABdhPJwwDwe3tgn7MblJIyLmFJyjf2zJInaWT7+HVsxQIqE9k+Ba7sN30IGAwqd20tWoBoVKXpyneA==
X-Received: by 2002:adf:90d0:: with SMTP id i74mr36369414wri.185.1630497767938; 
 Wed, 01 Sep 2021 05:02:47 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l7sm5641336wmj.9.2021.09.01.05.02.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Sep 2021 05:02:47 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  1 Sep 2021 14:02:40 +0200
Message-Id: <20210901120240.7339-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210901120240.7339-1-christian.koenig@amd.com>
References: <20210901120240.7339-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/2] dma-buf: clarify dma_fence_add_callback
 documentation
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
Cc: linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhhdCB0aGUgY2FsbGVyIGRvZXNuJ3QgbmVlZCB0byBrZWVwIGEgcmVmZXJlbmNlIGlzIHJhdGhl
cgpyaXNreSBhbmQgbm90IGRlZmVuc2l2ZSBhdCBhbGwuCgpFc3BlY2lhbGx5IGRtYV9idWZfcG9s
bCBnb3QgdGhhdCBob3JyaWJsZSB3cm9uZywgc28gYmV0dGVyCnJlbW92ZSB0aGF0IHNlbnRlbmNl
IGFuZCBhbHNvIGNsYXJpZnkgdGhhdCB0aGUgY2FsbGJhY2sKbWlnaHQgYmUgY2FsbGVkIGluIGF0
b21pYyBvciBpbnRlcnJ1cHQgY29udGV4dC4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMgfCAxMyArKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
YyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwppbmRleCBjZTBmNWVmZjU3NWQuLjFlODJl
Y2Q0NDNmYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCisrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwpAQCAtNjE2LDIwICs2MTYsMTcgQEAgRVhQT1JUX1NZ
TUJPTChkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZyk7CiAgKiBAY2I6IHRoZSBjYWxsYmFj
ayB0byByZWdpc3RlcgogICogQGZ1bmM6IHRoZSBmdW5jdGlvbiB0byBjYWxsCiAgKgorICogQWRk
IGEgc29mdHdhcmUgY2FsbGJhY2sgdG8gdGhlIGZlbmNlLiBUaGUgY2FsbGVyIHNob3VsZCBrZWVw
IGEgcmVmZXJlbmNlIHRvCisgKiB0aGUgZmVuY2UuCisgKgogICogQGNiIHdpbGwgYmUgaW5pdGlh
bGl6ZWQgYnkgZG1hX2ZlbmNlX2FkZF9jYWxsYmFjaygpLCBubyBpbml0aWFsaXphdGlvbgogICog
YnkgdGhlIGNhbGxlciBpcyByZXF1aXJlZC4gQW55IG51bWJlciBvZiBjYWxsYmFja3MgY2FuIGJl
IHJlZ2lzdGVyZWQKICAqIHRvIGEgZmVuY2UsIGJ1dCBhIGNhbGxiYWNrIGNhbiBvbmx5IGJlIHJl
Z2lzdGVyZWQgdG8gb25lIGZlbmNlIGF0IGEgdGltZS4KICAqCi0gKiBOb3RlIHRoYXQgdGhlIGNh
bGxiYWNrIGNhbiBiZSBjYWxsZWQgZnJvbSBhbiBhdG9taWMgY29udGV4dC4gIElmCi0gKiBmZW5j
ZSBpcyBhbHJlYWR5IHNpZ25hbGVkLCB0aGlzIGZ1bmN0aW9uIHdpbGwgcmV0dXJuIC1FTk9FTlQg
KGFuZAorICogSWYgZmVuY2UgaXMgYWxyZWFkeSBzaWduYWxlZCwgdGhpcyBmdW5jdGlvbiB3aWxs
IHJldHVybiAtRU5PRU5UIChhbmQKICAqICpub3QqIGNhbGwgdGhlIGNhbGxiYWNrKS4KICAqCi0g
KiBBZGQgYSBzb2Z0d2FyZSBjYWxsYmFjayB0byB0aGUgZmVuY2UuIFNhbWUgcmVzdHJpY3Rpb25z
IGFwcGx5IHRvCi0gKiByZWZjb3VudCBhcyBpdCBkb2VzIHRvIGRtYV9mZW5jZV93YWl0KCksIGhv
d2V2ZXIgdGhlIGNhbGxlciBkb2Vzbid0IG5lZWQgdG8KLSAqIGtlZXAgYSByZWZjb3VudCB0byBm
ZW5jZSBhZnRlcndhcmQgZG1hX2ZlbmNlX2FkZF9jYWxsYmFjaygpIGhhcyByZXR1cm5lZDoKLSAq
IHdoZW4gc29mdHdhcmUgYWNjZXNzIGlzIGVuYWJsZWQsIHRoZSBjcmVhdG9yIG9mIHRoZSBmZW5j
ZSBpcyByZXF1aXJlZCB0byBrZWVwCi0gKiB0aGUgZmVuY2UgYWxpdmUgdW50aWwgYWZ0ZXIgaXQg
c2lnbmFscyB3aXRoIGRtYV9mZW5jZV9zaWduYWwoKS4gVGhlIGNhbGxiYWNrCi0gKiBpdHNlbGYg
Y2FuIGJlIGNhbGxlZCBmcm9tIGlycSBjb250ZXh0LgorICogTm90ZSB0aGF0IHRoZSBjYWxsYmFj
ayBjYW4gYmUgY2FsbGVkIGZyb20gYW4gYXRvbWljIGNvbnRleHQgb3IgaXJxIGNvbnRleHQuCiAg
KgogICogUmV0dXJucyAwIGluIGNhc2Ugb2Ygc3VjY2VzcywgLUVOT0VOVCBpZiB0aGUgZmVuY2Ug
aXMgYWxyZWFkeSBzaWduYWxlZAogICogYW5kIC1FSU5WQUwgaW4gY2FzZSBvZiBlcnJvci4KLS0g
CjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
