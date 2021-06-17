Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 101813AB247
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:16:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1301C61A2A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:16:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0A61B63501; Thu, 17 Jun 2021 11:16:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA35B61451;
	Thu, 17 Jun 2021 11:16:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B388F60775
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B18DA61145; Thu, 17 Jun 2021 11:16:05 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id A36B161A28
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:03 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id n20so3452145edv.8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=QwbcxXanDdJ2d4Tkh7MSwWgLm8MXgHEgQcVtF2+fnXw=;
 b=VYiAdSUpabrYQxf/5Q9T9pzoosNfxKvvcYCOU4N8CAnT20jv3liLa6tXKxAWjn+3mf
 R3B6EhnU3ZmJuBekc3jgyDFtLzhTToIALdmCxhSGuElsXa6UMaG+WmnDbW97yHjCAHvy
 vXKWiJAH2r8MMubZsa1j2raBZwiq3NaGcGHgYD3TPYZ+CJI63DkgRziX2d5SnWg1XCUC
 RpolG01ErVrQyhLwONH6/nHD+v4mpjaTfbhq9g1rnN1QZYITrBz/J2SY/IQ/S3n+gJm/
 PPnMVi/UrpOFoV6bMwkSej5QEouZS5Wjc/4FKOiuW6oH9Dr/8IXuNdasW5C3/j3ng9tu
 WHxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QwbcxXanDdJ2d4Tkh7MSwWgLm8MXgHEgQcVtF2+fnXw=;
 b=DDLTm7kscM0NAOpSWQHhpzmKIQh8SA3q1/9gPzyazlDG/k+1OaryPLm3xGUdx+Zh7r
 UO2KinuxJS0VYAxc1sTPoK61KB3gUEhzHzC9uoQVFcG6QqIq4lNzueu1kcSv+SDrn4sj
 jQpXnE4wQAQrY5t2cWz1qxzaqP8t1EcY01wR971YIEGmNMFeBEgwXSudEjfax+bTBOSU
 L1dnvudRkT5I7I1QUZfbcpx8XLttb/YibGTxUKyQY18XQNlDA6htwWbWSO41yLqqycGU
 8x/g21QYfp31MklcZzRSXVwZbDRr9QkaV0I+xSEhQIbfGQ8dlD1LvtSxID/iQ/thsiYG
 jMZg==
X-Gm-Message-State: AOAM531kucR/5MpASHvbfqN5PM8thh2RtcPPLQyZ8eUfERbQzPw+NolT
 k+r8Lh35JUDMqEQFXGfKysxcAPoOYjk=
X-Google-Smtp-Source: ABdhPJxsAeGOMGrsWEzYAP//DCSm6c2fQOCh4HCYpn8G3v0EwED6DXWAj+I/4zQHTmQdWvI14JPyOA==
X-Received: by 2002:a05:6402:11d3:: with SMTP id
 j19mr5782846edw.247.1623928562743; 
 Thu, 17 Jun 2021 04:16:02 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:02 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:44 +0200
Message-Id: <20210617111558.28486-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 02/16] dma-buf: add dma_resv_for_each_fence
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

QSBzaW1wbGVyIHZlcnNpb24gb2YgdGhlIGl0ZXJhdG9yIHRvIGJlIHVzZWQgd2hlbiB0aGUgZG1h
X3Jlc3Ygb2JqZWN0IGlzCmxvY2tlZC4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YyB8IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2xp
bnV4L2RtYS1yZXN2LmggICB8IDE4ICsrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2Vk
LCA1NiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwppbmRleCBkOGRhOGE5MTRiMDcuLmEwMzg2
Y2Y1ODI0YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTMxNiw2ICszMTYsNDQgQEAgdm9pZCBkbWFfcmVz
dl9hZGRfZXhjbF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpCiB9CiBFWFBPUlRfU1lNQk9MKGRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKTsKIAorLyoq
CisgKiBkbWFfcmVzdl93YWxrIC0gd2FsayBvdmVyIGZlbmNlcyBpbiBhIGRtYV9yZXN2IG9iagor
ICogQG9iajogdGhlIGRtYV9yZXN2IG9iamVjdAorICogQGN1cnNvcjogY3Vyc29yIHRvIHJlY29y
ZCB0aGUgY3VycmVudCBwb3NpdGlvbgorICogQGFsbF9mZW5jZXM6IHRydWUgcmV0dXJucyBhbHNv
IHRoZSBzaGFyZWQgZmVuY2VzCisgKiBAZmlyc3Q6IGlmIHdlIHNob3VsZCBzdGFydCBvdmVyCisg
KgorICogUmV0dXJuIGFsbCB0aGUgZmVuY2VzIGluIHRoZSBkbWFfcmVzdiBvYmplY3Qgd2hpbGUg
aG9sZGluZyB0aGUKKyAqIGRtYV9yZXN2Ojpsb2NrLgorICovCitzdHJ1Y3QgZG1hX2ZlbmNlICpk
bWFfcmVzdl93YWxrKHN0cnVjdCBkbWFfcmVzdiAqb2JqLAorCQkJCXN0cnVjdCBkbWFfcmVzdl9j
dXJzb3IgKmN1cnNvciwKKwkJCQlib29sIGFsbF9mZW5jZXMsIGJvb2wgZmlyc3QpCit7CisJZG1h
X3Jlc3ZfYXNzZXJ0X2hlbGQob2JqKTsKKworCWN1cnNvci0+aXNfZmlyc3QgPSBmaXJzdDsKKwlp
ZiAoZmlyc3QpIHsKKwkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CisKKwkJY3Vyc29yLT5pbmRl
eCA9IC0xOworCQljdXJzb3ItPmZlbmNlcyA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iaik7CisJ
CWN1cnNvci0+aXNfZXhjbHVzaXZlID0gdHJ1ZTsKKworCQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xf
ZmVuY2Uob2JqKTsKKwkJaWYgKGZlbmNlKQorCQkJcmV0dXJuIGZlbmNlOworCX0KKworCWlmICgh
YWxsX2ZlbmNlcyB8fCAhY3Vyc29yLT5mZW5jZXMgfHwKKwkgICAgKytjdXJzb3ItPmluZGV4ID49
IGN1cnNvci0+ZmVuY2VzLT5zaGFyZWRfY291bnQpCisJCXJldHVybiBOVUxMOworCisJcmV0dXJu
IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoY3Vyc29yLT5mZW5jZXMtPnNoYXJlZFtjdXJzb3It
PmluZGV4XSwKKwkJCQkJIGRtYV9yZXN2X2hlbGQob2JqKSk7Cit9CitFWFBPUlRfU1lNQk9MX0dQ
TChkbWFfcmVzdl93YWxrKTsKKwogLyoqCiAgKiBkbWFfcmVzdl93YWxrX3VubG9ja2VkIC0gd2Fs
ayBvdmVyIGZlbmNlcyBpbiBhIGRtYV9yZXN2IG9iagogICogQG9iajogdGhlIGRtYV9yZXN2IG9i
amVjdApkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oIGIvaW5jbHVkZS9saW51
eC9kbWEtcmVzdi5oCmluZGV4IDc0Nzc1ZjJjYjY3OS4uODRkZTRkZmY0ZWNjIDEwMDY0NAotLS0g
YS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKKysrIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5o
CkBAIC05MSw2ICs5MSwyMSBAQCBzdHJ1Y3QgZG1hX3Jlc3ZfY3Vyc29yIHsKIAlib29sIGlzX2V4
Y2x1c2l2ZTsKIH07CiAKKy8qKgorICogZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UgLSBmZW5jZSBp
dGVyYXRvcgorICogQG9iajogYSBkbWFfcmVzdiBvYmplY3QgcG9pbnRlcgorICogQGN1cnNvcjog
YSBzdHJ1Y3QgZG1hX3Jlc3ZfY3Vyc29yIHBvaW50ZXIKKyAqIEBhbGxfZmVuY2VzOiB0cnVlIGlm
IGFsbCBmZW5jZXMgc2hvdWxkIGJlIHJldHVybmVkCisgKiBAZmVuY2U6IHRoZSBjdXJyZW50IGZl
bmNlCisgKgorICogSXRlcmF0ZSBvdmVyIHRoZSBmZW5jZXMgaW4gYSBzdHJ1Y3QgZG1hX3Jlc3Yg
b2JqZWN0IHdoaWxlIGhvbGRpbmcgdGhlCisgKiBkbWFfcmVzdjo6bG9jay4gQGFsbF9mZW5jZXMg
Y29udHJvbHMgaWYgdGhlIHNoYXJlZCBmZW5jZXMgYXJlIHJldHVybmVkIGFzCisgKiB3ZWxsLgor
ICovCisjZGVmaW5lIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKG9iaiwgY3Vyc29yLCBhbGxfZmVu
Y2VzLCBmZW5jZSkJCSAgXAorCWZvciAoZmVuY2UgPSBkbWFfcmVzdl93YWxrKG9iaiwgY3Vyc29y
LCBhbGxfZmVuY2VzLCB0cnVlKTsgZmVuY2U7IFwKKwkgICAgIGZlbmNlID0gZG1hX3Jlc3Zfd2Fs
ayhvYmosIGN1cnNvciwgYWxsX2ZlbmNlcywgZmFsc2UpKQorCiAvKioKICAqIGRtYV9yZXN2X2Zv
cl9lYWNoX2ZlbmNlX3VubG9ja2VkIC0gZmVuY2UgaXRlcmF0b3IKICAqIEBvYmo6IGEgZG1hX3Jl
c3Ygb2JqZWN0IHBvaW50ZXIKQEAgLTMwNSw2ICszMjAsOSBAQCB2b2lkIGRtYV9yZXN2X2Zpbmko
c3RydWN0IGRtYV9yZXN2ICpvYmopOwogaW50IGRtYV9yZXN2X3Jlc2VydmVfc2hhcmVkKHN0cnVj
dCBkbWFfcmVzdiAqb2JqLCB1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcyk7CiB2b2lkIGRtYV9yZXN2
X2FkZF9zaGFyZWRfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKTsKIHZvaWQgZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpv
YmosIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsKK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2
X3dhbGsoc3RydWN0IGRtYV9yZXN2ICpvYmosCisJCQkJc3RydWN0IGRtYV9yZXN2X2N1cnNvciAq
Y3Vyc29yLAorCQkJCWJvb2wgZmlyc3QsIGJvb2wgYWxsX2ZlbmNlcyk7CiBzdHJ1Y3QgZG1hX2Zl
bmNlICpkbWFfcmVzdl93YWxrX3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdiAqb2JqLAogCQkJCQkg
c3RydWN0IGRtYV9yZXN2X2N1cnNvciAqY3Vyc29yLAogCQkJCQkgYm9vbCBmaXJzdCwgYm9vbCBh
bGxfZmVuY2VzKTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
