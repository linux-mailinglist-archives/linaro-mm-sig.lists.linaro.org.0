Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5126E406865
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:27:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 824FB63231
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:27:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7B9E266702; Fri, 10 Sep 2021 08:27:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD128629CD;
	Fri, 10 Sep 2021 08:27:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7625862631
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 690AC629CD; Fri, 10 Sep 2021 08:27:01 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id 534E7623DB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:26:59 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id m2so635779wmm.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YErPkwK3P1MRDtjuzNu0YD+XcPHeEcSK9BW/6kjgcgQ=;
 b=qA/lui572R0JwDCPqnhU7qt9TvJbbM5H91fOEu8BCQu0Q7yQOy1wwMumBD0JiGRoUg
 O/zGB8kL3WqFpJa3249cNJ5/W63M3kkvF7lV7Nvcnemx3Q+2fH1fZdBrMjijr0c3+oyR
 jQ4sKocFtEmwuWdPseoEuhMZXfhyyaXwgYB593uZflsMqclnRfBJSw36Hup5VznB0ayz
 63gpI7+twv2v7fQC1ZXYeioDxoWVGXXxjypmbjqtT7BNWH17MwOXxtQDO1IYmNhXpV6C
 iwY4EUMPtBWXPgc08en4w8K7nx+z7fn8e3SxJL6F+Kz48JcEi2uu6bX0Fh21na0s3PV2
 BB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YErPkwK3P1MRDtjuzNu0YD+XcPHeEcSK9BW/6kjgcgQ=;
 b=7Wr/ESFcr3MTiXc6G81AveLbQyZfV2cquAQX8GGJuD4MnadfZkhMXxeaGYwnlXSVDI
 kIrCNrENL4bY6jX/FOCyI4rYftX4WKTFJZTeTXPYsdAybXEpdXmjzxts0gm1XfWB6gcC
 0gpy5jd6GvcNC2pBUaGUTqqyOTwHriUXxPiLRAMc0oBMzjmzzSTPAo98VEpiJirYU7D8
 4yd8XJ1u9DfQ4W5AQeTktK61otgdngXdd/roJ/Qk/NZvxYGoHUOjaFt3fGC+7CXvtzHt
 pYfqvENmuznFqUODAtVkzZbAl3YONlwbfuE1f/R/s56rh72DLSKa+MzXOXlQDjRnPT4p
 KXiw==
X-Gm-Message-State: AOAM530W3Q4DsvDVoL2IXH20xJWBNcGjjbcrXDos9O+gAPw96SruFOnL
 GEdIB7O/RZW9thgS38hl5Jwn7BU4jKDvUJc/
X-Google-Smtp-Source: ABdhPJyFWwMk0FJo1jkyoNh9TWkolVVZj0em99m4EzBxrCK7B1f0XNxpgbLiEvGjXPviAm64aqOIHQ==
X-Received: by 2002:a7b:cf21:: with SMTP id m1mr766929wmg.95.1631262418476;
 Fri, 10 Sep 2021 01:26:58 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:26:58 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:43 +0200
Message-Id: <20210910082655.82168-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 02/14] dma-buf: add dma_resv_for_each_fence
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
Cc: daniel@ffwll.ch
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
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwppbmRleCAyMTNhOWI3MjUxY2EuLjhjYmNj
YWFlMTY5ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTMyMyw2ICszMjMsNDQgQEAgdm9pZCBkbWFfcmVz
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
eC9kbWEtcmVzdi5oCmluZGV4IGY1YjkxYzI5MmVlMC4uNmY5YmI3ZTRjNTM4IDEwMDY0NAotLS0g
YS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKKysrIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5o
CkBAIC0xNjUsNiArMTY1LDIxIEBAIHN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgewogCWJvb2wgaXNf
ZXhjbHVzaXZlOwogfTsKIAorLyoqCisgKiBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSAtIGZlbmNl
IGl0ZXJhdG9yCisgKiBAb2JqOiBhIGRtYV9yZXN2IG9iamVjdCBwb2ludGVyCisgKiBAY3Vyc29y
OiBhIHN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgcG9pbnRlcgorICogQGFsbF9mZW5jZXM6IHRydWUg
aWYgYWxsIGZlbmNlcyBzaG91bGQgYmUgcmV0dXJuZWQKKyAqIEBmZW5jZTogdGhlIGN1cnJlbnQg
ZmVuY2UKKyAqCisgKiBJdGVyYXRlIG92ZXIgdGhlIGZlbmNlcyBpbiBhIHN0cnVjdCBkbWFfcmVz
diBvYmplY3Qgd2hpbGUgaG9sZGluZyB0aGUKKyAqIGRtYV9yZXN2Ojpsb2NrLiBAYWxsX2ZlbmNl
cyBjb250cm9scyBpZiB0aGUgc2hhcmVkIGZlbmNlcyBhcmUgcmV0dXJuZWQgYXMKKyAqIHdlbGwu
CisgKi8KKyNkZWZpbmUgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2Uob2JqLCBjdXJzb3IsIGFsbF9m
ZW5jZXMsIGZlbmNlKQkJICBcCisJZm9yIChmZW5jZSA9IGRtYV9yZXN2X3dhbGsob2JqLCBjdXJz
b3IsIGFsbF9mZW5jZXMsIHRydWUpOyBmZW5jZTsgXAorCSAgICAgZmVuY2UgPSBkbWFfcmVzdl93
YWxrKG9iaiwgY3Vyc29yLCBhbGxfZmVuY2VzLCBmYWxzZSkpCisKIC8qKgogICogZG1hX3Jlc3Zf
Zm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQgLSBmZW5jZSBpdGVyYXRvcgogICogQG9iajogYSBkbWFf
cmVzdiBvYmplY3QgcG9pbnRlcgpAQCAtMzk5LDYgKzQxNCw5IEBAIHZvaWQgZG1hX3Jlc3ZfZmlu
aShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaik7CiBpbnQgZG1hX3Jlc3ZfcmVzZXJ2ZV9zaGFyZWQoc3Ry
dWN0IGRtYV9yZXN2ICpvYmosIHVuc2lnbmVkIGludCBudW1fZmVuY2VzKTsKIHZvaWQgZG1hX3Jl
c3ZfYWRkX3NoYXJlZF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UpOwogdm9pZCBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3Yg
Km9iaiwgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpOworc3RydWN0IGRtYV9mZW5jZSAqZG1hX3Jl
c3Zfd2FsayhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwKKwkJCQlzdHJ1Y3QgZG1hX3Jlc3ZfY3Vyc29y
ICpjdXJzb3IsCisJCQkJYm9vbCBmaXJzdCwgYm9vbCBhbGxfZmVuY2VzKTsKIHN0cnVjdCBkbWFf
ZmVuY2UgKmRtYV9yZXN2X3dhbGtfdW5sb2NrZWQoc3RydWN0IGRtYV9yZXN2ICpvYmosCiAJCQkJ
CSBzdHJ1Y3QgZG1hX3Jlc3ZfY3Vyc29yICpjdXJzb3IsCiAJCQkJCSBib29sIGZpcnN0LCBib29s
IGFsbF9mZW5jZXMpOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
