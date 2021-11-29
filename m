Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1FA46149E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B425162D44
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B905560B20; Mon, 29 Nov 2021 12:07:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B262861E5C;
	Mon, 29 Nov 2021 12:07:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A13B362081
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 10523622CD; Mon, 29 Nov 2021 12:07:15 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id EFE7D61EF7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:11 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id a18so36285197wrn.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6AcIBFyYiDz9TRlGiyxrwcI9ljYqwbYG6/Pwbh2ETwE=;
 b=TdRsP8iCJo2IHFSFvo7K9yfGR4NULK1xGumbieOyuHPWp69FprJgXUjY8wec3jLrFH
 eJuLHGvb5pF1u7S4EXZAdgT8c1lsKTzc80OaZV3yNsUHg/PeGYHb5Uv23E4epMNxX0bC
 bXWR/iWOLWMg/SpnmOmk+kmu1E+VddY7tVjHk4jrUDwy2Xd9fm1zYyMLjspXti4Y32fj
 8drNBqdR16igm/emGDwMEaZS6YRmc/tKT7qwBUeQmGSkRekpTkGVZI0KunhydOjZzw4M
 tTqSaeir+pIOQfdbDQFNJhpanZQuH84ZECu/HUI0UCtjE/1vrLC3xS704krJYD9ar2TD
 kBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6AcIBFyYiDz9TRlGiyxrwcI9ljYqwbYG6/Pwbh2ETwE=;
 b=YL88HPwELk2hmQBJ2WlN7NtO5Lx/DT9IEoNLmCxmzEmV/POO8WfuqPA3OCNVgbCVDx
 sODw8+jpKUoSkkzFeYC3rJ72VmRECa53QVwF+R3Ohh+sO783FE+1nOGgWTnulee5urMR
 DY3B7L0ZKiGx8kLdPC7+xjMn49for5fgBFUQmBJzK10aSA2GhEwB86GNHL+omq64i0/W
 Em2+4oENBS4oCRGSdtyhzobtRKLUqN+grWOt1OyTQW24qwoSrCmLGBe5ZMcRRBK53AaE
 PskUtC2Wq6tWj9Qv+h5j7AwDLaKhPKnZaaw0VcsdgLhmsWK1iuIYYBeWwTny8pSTziii
 5K5g==
X-Gm-Message-State: AOAM532txZtVv2l8jZxvG9dMefws43JS62MAQrgRqQE84i7+OypCOXdF
 GZrPsxs5Ia8kD8rYNkAQmaE=
X-Google-Smtp-Source: ABdhPJybnk67gP2iTmueOltDIky3wv5MJpDuaPFOAyThlF5UK7AISycgT9cnZepuObF2CKwjX2vHKg==
X-Received: by 2002:a5d:4ed1:: with SMTP id s17mr34901850wrv.310.1638187630147; 
 Mon, 29 Nov 2021 04:07:10 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:09 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:39 +0100
Message-Id: <20211129120659.1815-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/28] dma-buf: add dma_resv_get_singleton v2
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
