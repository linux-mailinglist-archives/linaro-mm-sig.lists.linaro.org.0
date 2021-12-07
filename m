Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D62BC46BB44
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:34:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8F1C61234
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:34:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AC34562D22; Tue,  7 Dec 2021 12:34:42 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73E1A62C93;
	Tue,  7 Dec 2021 12:34:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9FDC3608C9
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9A06360E25; Tue,  7 Dec 2021 12:34:21 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 42C8E608C9
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:19 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id c4so29115959wrd.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=6AcIBFyYiDz9TRlGiyxrwcI9ljYqwbYG6/Pwbh2ETwE=;
 b=nLMhJRylYFQ1o+vqghbs9XYIOLuR7516NFBkx3whKf7eyeIlEFShoniqsfvNeCbfkU
 i8aIPhkHAfqX89Pufuwj2rAZn+PVs9WwlZAGfaikf8Hv2RhRgzaa/3Uvu04VIETLrLQc
 t/mSY8xt4aeuPrN5eEKAjigOrv6pZriLTKqHIGUgXq/HganmpRxnhhRA9QRCB093fwoU
 gpO+Wypzy6yfD6T+pDkReq6WJFqVIkn7kkHlIyA+bwtdZlrPQuJuTFfyai4aWkjYGcSp
 bG2e5PYC+3GG7F1sJL0sStLk/cIzOs66zPWF4LVj88sh58QjoWhwHFpKSr0pFU0GWgtL
 KFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6AcIBFyYiDz9TRlGiyxrwcI9ljYqwbYG6/Pwbh2ETwE=;
 b=IfU1SGyd8LFBBT2nxGVY0R4+xuQcOc7BNOaUi4km6GvMBF7pKVPHbVFa8nvgW1k01z
 lzchAZpo3a9RzpR9hvPQuPrN+t5FkrkIUwtqZtuNIYUy3fhfgo3pfY1lMUH7sX61zzBp
 42xs5sr6YkALgnDT9fZ5SnSqJN9rOG4AZ2mftYwdHEmdt16/Wv7ZvqWMqhdPf4Dtho5W
 nPCqi5vWmQua8M0WSs0neoLrLKVM/nUOOyqI98+4tq/BPkYO0e2ZrBShqrO4GIymE6O5
 0o3N3qzWfeBk+RGAjx1TErykGBn0NtgzZ/t63HBbRlX4rLwJG/eL4WZRVtE5Uo1CGdGG
 X78w==
X-Gm-Message-State: AOAM533cD1BXuJcc9hQ3i3Z9ux3EGCqmsJKpLJ1mE0H/kWuULn1MO87P
 /BtNGQ69eUAfcBHWsYpYkYw=
X-Google-Smtp-Source: ABdhPJxvH6SQRpwHRdkvErlx/XUWNc4bPOW0BP1aMMbSKlSQmbcqjwoCe+/IisCzVw/4d/H9C1sxdQ==
X-Received: by 2002:a05:6000:1564:: with SMTP id
 4mr51437456wrz.9.1638880458279; 
 Tue, 07 Dec 2021 04:34:18 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:17 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:33:51 +0100
Message-Id: <20211207123411.167006-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 04/24] dma-buf: add dma_resv_get_singleton v2
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QWRkIGEgZnVuY3Rpb24gdG8gc2ltcGxpZnkgZ2V0dGluZyBhIHNpbmdsZSBmZW5jZSBmb3IgYWxs
IHRoZSBmZW5jZXMgaW4KdGhlIGRtYV9yZXN2IG9iamVjdC4KCnYyOiBmaXggcmVmIGxlYWsgaW4g
ZXJyb3IgaGFuZGxpbmcKClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDUyICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2xpbnV4L2RtYS1y
ZXN2LmggICB8ICAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
cmVzdi5jCmluZGV4IDQ4MGMzMDU1NTRhMS4uNjk0NzE2YTNkNjZkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpA
QCAtMzQsNiArMzQsNyBAQAogICovCiAKICNpbmNsdWRlIDxsaW51eC9kbWEtcmVzdi5oPgorI2lu
Y2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS1hcnJheS5oPgogI2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5o
PgogI2luY2x1ZGUgPGxpbnV4L21tLmg+CiAjaW5jbHVkZSA8bGludXgvc2NoZWQvbW0uaD4KQEAg
LTY1Nyw2ICs2NTgsNTcgQEAgaW50IGRtYV9yZXN2X2dldF9mZW5jZXMoc3RydWN0IGRtYV9yZXN2
ICpvYmosIGJvb2wgd3JpdGUsCiB9CiBFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl9nZXRfZmVu
Y2VzKTsKIAorLyoqCisgKiBkbWFfcmVzdl9nZXRfc2luZ2xldG9uIC0gR2V0IGEgc2luZ2xlIGZl
bmNlIGZvciBhbGwgdGhlIGZlbmNlcworICogQG9iajogdGhlIHJlc2VydmF0aW9uIG9iamVjdAor
ICogQHdyaXRlOiB0cnVlIGlmIHdlIHNob3VsZCByZXR1cm4gYWxsIGZlbmNlcworICogQGZlbmNl
OiB0aGUgcmVzdWx0aW5nIGZlbmNlCisgKgorICogR2V0IGEgc2luZ2xlIGZlbmNlIHJlcHJlc2Vu
dGluZyBhbGwgdGhlIGZlbmNlcyBpbnNpZGUgdGhlIHJlc3Ygb2JqZWN0LgorICogUmV0dXJucyBl
aXRoZXIgMCBmb3Igc3VjY2VzcyBvciAtRU5PTUVNLgorICoKKyAqIFdhcm5pbmc6IFRoaXMgY2Fu
J3QgYmUgdXNlZCBsaWtlIHRoaXMgd2hlbiBhZGRpbmcgdGhlIGZlbmNlIGJhY2sgdG8gdGhlIHJl
c3YKKyAqIG9iamVjdCBzaW5jZSB0aGF0IGNhbiBsZWFkIHRvIHN0YWNrIGNvcnJ1cHRpb24gd2hl
biBmaW5hbGl6aW5nIHRoZQorICogZG1hX2ZlbmNlX2FycmF5LgorICovCitpbnQgZG1hX3Jlc3Zf
Z2V0X3NpbmdsZXRvbihzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3cml0ZSwKKwkJCSAgIHN0
cnVjdCBkbWFfZmVuY2UgKipmZW5jZSkKK3sKKwlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJh
eTsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOworCXVuc2lnbmVkIGNvdW50OworCWludCBy
OworCisJciA9IGRtYV9yZXN2X2dldF9mZW5jZXMob2JqLCB3cml0ZSwgJmNvdW50LCAmZmVuY2Vz
KTsKKyAgICAgICAgaWYgKHIpCisJCXJldHVybiByOworCisJaWYgKGNvdW50ID09IDApIHsKKwkJ
KmZlbmNlID0gTlVMTDsKKwkJcmV0dXJuIDA7CisJfQorCisJaWYgKGNvdW50ID09IDEpIHsKKwkJ
KmZlbmNlID0gZmVuY2VzWzBdOworCQlrZnJlZShmZW5jZXMpOworCQlyZXR1cm4gMDsKKwl9CisK
KwlhcnJheSA9IGRtYV9mZW5jZV9hcnJheV9jcmVhdGUoY291bnQsIGZlbmNlcywKKwkJCQkgICAg
ICAgZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2MoMSksCisJCQkJICAgICAgIDEsIGZhbHNlKTsKKwlp
ZiAoIWFycmF5KSB7CisJCXdoaWxlIChjb3VudC0tKQorCQkJZG1hX2ZlbmNlX3B1dChmZW5jZXNb
Y291bnRdKTsKKwkJa2ZyZWUoZmVuY2VzKTsKKwkJcmV0dXJuIC1FTk9NRU07CisJfQorCisJKmZl
bmNlID0gJmFycmF5LT5iYXNlOworCXJldHVybiAwOworfQorRVhQT1JUX1NZTUJPTF9HUEwoZG1h
X3Jlc3ZfZ2V0X3NpbmdsZXRvbik7CisKIC8qKgogICogZG1hX3Jlc3Zfd2FpdF90aW1lb3V0IC0g
V2FpdCBvbiByZXNlcnZhdGlvbidzIG9iamVjdHMKICAqIHNoYXJlZCBhbmQvb3IgZXhjbHVzaXZl
IGZlbmNlcy4KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUv
bGludXgvZG1hLXJlc3YuaAppbmRleCBmYTIwMDI5MzliMTkuLmNkZmJiZGE2ZjYwMCAxMDA2NDQK
LS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJl
c3YuaApAQCAtNDM4LDYgKzQzOCw4IEBAIHZvaWQgZG1hX3Jlc3ZfcmVwbGFjZV9mZW5jZXMoc3Ry
dWN0IGRtYV9yZXN2ICpvYmosIHVpbnQ2NF90IGNvbnRleHQsCiB2b2lkIGRtYV9yZXN2X2FkZF9l
eGNsX2ZlbmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7
CiBpbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3cml0
ZSwKIAkJCXVuc2lnbmVkIGludCAqbnVtX2ZlbmNlcywgc3RydWN0IGRtYV9mZW5jZSAqKipmZW5j
ZXMpOworaW50IGRtYV9yZXN2X2dldF9zaW5nbGV0b24oc3RydWN0IGRtYV9yZXN2ICpvYmosIGJv
b2wgd3JpdGUsCisJCQkgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2UpOwogaW50IGRtYV9yZXN2
X2NvcHlfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqZHN0LCBzdHJ1Y3QgZG1hX3Jlc3YgKnNyYyk7
CiBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3
YWl0X2FsbCwgYm9vbCBpbnRyLAogCQkJICAgdW5zaWduZWQgbG9uZyB0aW1lb3V0KTsKLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
