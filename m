Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C38FD45A56A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:22:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 743CC6216C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0DDD36216B; Tue, 23 Nov 2021 14:22:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E8D962D13;
	Tue, 23 Nov 2021 14:22:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5BE9C6216D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 25C8262168; Tue, 23 Nov 2021 14:21:33 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id 3266362A45
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:30 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id
 p3-20020a05600c1d8300b003334fab53afso2412257wms.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6H/ngFKC9poxGUW/buF3Z6IUXcBgboVM+XR0Uqd9ot8=;
 b=M4/xhPjOBKzleBS57cpHfNRoq3nzkZDtU3rcnNA5M7yoqTW/GkLN3Go0GFKYwFwe8V
 pWfW1D9Qq2Uiy8eVugNtps+xEdeYlycLSKNtEPPtjWNxEUIIYLuQZW0+4YAYfONPLeZE
 UrTkTO9uGFHcyNU3a56i6EETimPyNUoHvmNKAy3dg9gWr6keZw/8gCTNo7QSwB9ddfZJ
 qQnEgmFZxZxOtin+uZxgd1Y8WIWINAxRobeiiFVibIpNN1WoZPPxp3rqS9WEzzveNPae
 ITBBAf+RRaR2xVVkR7S4jbF0fE8VnRJYaOLUnVGrXFjjSIbZNHg/HAXDxZte9CzyNG6r
 H/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6H/ngFKC9poxGUW/buF3Z6IUXcBgboVM+XR0Uqd9ot8=;
 b=ANh62CUVewiOevseSW3y4M8ZYZdi77IeZnXldwIwA1dtPHNj4VJZitQ9BkwcTP2cfs
 73cMdmQvgh11G2l19rD25vd1ulZROTjlhnY5CwhbFK0dMhkerbOd44mptw0mLkgUCGdk
 vkfLDPh6aV9+D21th9/cJbmBFunpYA5NdU9JfSa7/wZb+HvFvpRxcz9HTLAiCR7x9gBc
 6vT9ip2/Ma7tvZ2uDC+Pexp5woVwd71L8hKg22teyczVSouwNqDcv06beUX7euA7cqjf
 f2R7a14OpvKlGb11AdZ7TlztrEl4uiAwUOxQJTlUNfKkp63QAsEK2pVYa1RpBdZQxdff
 i0fg==
X-Gm-Message-State: AOAM531wPXwDAzuj0YhVprAFSg1HgXPLxhoa7pc1REtPJeD+6Qysp+/B
 3LL5KMUiHqGYvuew/cZT5uQ=
X-Google-Smtp-Source: ABdhPJxXb7SYBCRj2Ub2g+4sXnWVWktbYjdK81QMPFY4KhRBrf8naWsp1xWADtOextjGaVzR61Wo8A==
X-Received: by 2002:a1c:2685:: with SMTP id m127mr3661518wmm.42.1637677289034; 
 Tue, 23 Nov 2021 06:21:29 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:28 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:53 +0100
Message-Id: <20211123142111.3885-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/26] dma-buf: add dma_resv_get_singleton
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

QWRkIGEgZnVuY3Rpb24gdG8gc2ltcGxpZnkgZ2V0dGluZyBhIHNpbmdsZSBmZW5jZSBmb3IgYWxs
IHRoZSBmZW5jZXMgaW4KdGhlIGRtYV9yZXN2IG9iamVjdC4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYyB8IDUwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
CiBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggICB8ICAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDUy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4IDBhNjlmNGI3ZTZiNS4uZjkxY2EwMjNi
NTUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLXJlc3YuYwpAQCAtMzQsNiArMzQsNyBAQAogICovCiAKICNpbmNsdWRlIDxs
aW51eC9kbWEtcmVzdi5oPgorI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS1hcnJheS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2V4cG9ydC5oPgogI2luY2x1ZGUgPGxpbnV4L21tLmg+CiAjaW5jbHVkZSA8
bGludXgvc2NoZWQvbW0uaD4KQEAgLTcyMSw2ICs3MjIsNTUgQEAgaW50IGRtYV9yZXN2X2dldF9m
ZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgd3JpdGUsCiB9CiBFWFBPUlRfU1lNQk9M
X0dQTChkbWFfcmVzdl9nZXRfZmVuY2VzKTsKIAorLyoqCisgKiBkbWFfcmVzdl9nZXRfc2luZ2xl
dG9uIC0gR2V0IGEgc2luZ2xlIGZlbmNlIGZvciBhbGwgdGhlIGZlbmNlcworICogQG9iajogdGhl
IHJlc2VydmF0aW9uIG9iamVjdAorICogQHdyaXRlOiB0cnVlIGlmIHdlIHNob3VsZCByZXR1cm4g
YWxsIGZlbmNlcworICogQGZlbmNlOiB0aGUgcmVzdWx0aW5nIGZlbmNlCisgKgorICogR2V0IGEg
c2luZ2xlIGZlbmNlIHJlcHJlc2VudGluZyBhbGwgdGhlIGZlbmNlcyBpbnNpZGUgdGhlIHJlc3Yg
b2JqZWN0LgorICogUmV0dXJucyBlaXRoZXIgMCBmb3Igc3VjY2VzcyBvciAtRU5PTUVNLgorICoK
KyAqIFdhcm5pbmc6IFRoaXMgY2FuJ3QgYmUgdXNlZCBsaWtlIHRoaXMgd2hlbiBhZGRpbmcgdGhl
IGZlbmNlIGJhY2sgdG8gdGhlIHJlc3YKKyAqIG9iamVjdCBzaW5jZSB0aGF0IGNhbiBsZWFkIHRv
IHN0YWNrIGNvcnJ1cHRpb24gd2hlbiBmaW5hbGl6aW5nIHRoZQorICogZG1hX2ZlbmNlX2FycmF5
LgorICovCitpbnQgZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwg
Ym9vbCB3cml0ZSwKKwkJCSAgIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZSkKK3sKKwlzdHJ1Y3Qg
ZG1hX2ZlbmNlX2FycmF5ICphcnJheTsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOworCXVu
c2lnbmVkIGNvdW50OworCWludCByOworCisJciA9IGRtYV9yZXN2X2dldF9mZW5jZXMob2JqLCB3
cml0ZSwgJmNvdW50LCAmZmVuY2VzKTsKKyAgICAgICAgaWYgKHIpCisJCXJldHVybiByOworCisJ
aWYgKGNvdW50ID09IDApIHsKKwkJKmZlbmNlID0gTlVMTDsKKwkJcmV0dXJuIDA7CisJfQorCisJ
aWYgKGNvdW50ID09IDEpIHsKKwkJKmZlbmNlID0gZmVuY2VzWzBdOworCQlrZnJlZShmZW5jZXMp
OworCQlyZXR1cm4gMDsKKwl9CisKKwlhcnJheSA9IGRtYV9mZW5jZV9hcnJheV9jcmVhdGUoY291
bnQsIGZlbmNlcywKKwkJCQkgICAgICAgZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2MoMSksCisJCQkJ
ICAgICAgIDEsIGZhbHNlKTsKKwlpZiAoIWFycmF5KSB7CisJCWtmcmVlKGZlbmNlcyk7CisJCXJl
dHVybiAtRU5PTUVNOworCX0KKworCSpmZW5jZSA9ICZhcnJheS0+YmFzZTsKKwlyZXR1cm4gMDsK
K30KK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9yZXN2X2dldF9zaW5nbGV0b24pOworCiAvKioKICAq
IGRtYV9yZXN2X3dhaXRfdGltZW91dCAtIFdhaXQgb24gcmVzZXJ2YXRpb24ncyBvYmplY3RzCiAg
KiBzaGFyZWQgYW5kL29yIGV4Y2x1c2l2ZSBmZW5jZXMuCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L2RtYS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKaW5kZXggMDliNjc2Yjg3
YzM1Li4wODJmNzdiN2JjNjMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAor
KysgYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKQEAgLTQ0MCw2ICs0NDAsOCBAQCB2b2lkIGRt
YV9yZXN2X3BydW5lKHN0cnVjdCBkbWFfcmVzdiAqb2JqKTsKIHZvaWQgZG1hX3Jlc3ZfcHJ1bmVf
dW5sb2NrZWQoc3RydWN0IGRtYV9yZXN2ICpvYmopOwogaW50IGRtYV9yZXN2X2dldF9mZW5jZXMo
c3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgd3JpdGUsCiAJCQl1bnNpZ25lZCBpbnQgKm51bV9m
ZW5jZXMsIHN0cnVjdCBkbWFfZmVuY2UgKioqZmVuY2VzKTsKK2ludCBkbWFfcmVzdl9nZXRfc2lu
Z2xldG9uKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBib29sIHdyaXRlLAorCQkJICAgc3RydWN0IGRt
YV9mZW5jZSAqKmZlbmNlKTsKIGludCBkbWFfcmVzdl9jb3B5X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jl
c3YgKmRzdCwgc3RydWN0IGRtYV9yZXN2ICpzcmMpOwogbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVv
dXQoc3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgd2FpdF9hbGwsIGJvb2wgaW50ciwKIAkJCSAg
IHVuc2lnbmVkIGxvbmcgdGltZW91dCk7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
