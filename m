Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AB34614A6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4FFB61B00
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6C10362D4E; Mon, 29 Nov 2021 12:08:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F1AA62D49;
	Mon, 29 Nov 2021 12:07:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D6FDF60EC3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C869262D31; Mon, 29 Nov 2021 12:07:18 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 8719861E96
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:14 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id v11so36244941wrw.10
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MPKJq2Wt16wetIpfIT15/6v8GODpjJBfKyDGmSXKrmY=;
 b=VArbpu7FuPQbaXNYwlbNTtUvh9E2TEdL+Tznj2CvUsCZpJV0a2/xhr0W8XxnpgzmCG
 AvK6E5gzE7CzKib77oVwJ+WJiRnLQjCwVWBfHee/uV7cubHXxRtSrLMae44+yrtGc2hQ
 zmVi1fvvYxKt3K+avKRejVud0+n5p/F73xMaP8jlw6Ayt5uRBvkNO3F4zOKw0YcPVIM1
 CwSUbK8Y7nnWcsZdbbuKGQjqvhT5EEk6gPP2TeivfjUyq0dZBm+kQ74uQYzDv0gW/14M
 m+F9MigUK0qIwssLixtYUWLJx7+YaXxTb1T51tgazv19rqy4uGs113a7Qvs4eg8fyuX7
 aPOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MPKJq2Wt16wetIpfIT15/6v8GODpjJBfKyDGmSXKrmY=;
 b=x+znDRJ8itxQDZ8G44nqO37RGt6DbeiVcgIy45Kkdb21QAGz+s901BNu9WFKp7punX
 KvInNYm/07VF/b+r201IkHN8IPAjdWKaBKwpn1hukdpAaWtJuJazO2+N19nVXk0GcurC
 EBBSkQ0hgowoAVVRRHlkoJ1OSORFKJCIqfKcesSJn/FTRet15Pld2HnS4Pmh6+jOLYH8
 1S7SvUXleBfx2DPRjKQFLnEM0pIfr4l+5mIoVHxJMBUbzBkaDXVWb0RIv76a7RjFTCiy
 vpf7DLg0+tteuYvxcd75Qybi7O9J+r8I70i+ol+1j3ZYqPzQxQViMUAHTWgjVZUUkOc5
 folw==
X-Gm-Message-State: AOAM533tn1oDuPl4oLnl4esiYG4yrKKUeIAQtHPVOw9vSPgchlft6Tnc
 TjCwweC/UTV7F7NnWAKl3RI=
X-Google-Smtp-Source: ABdhPJxpTknK3FBKpRmHjMi8jw7cT7T58Ury2nOUZcmFt/8dKpJ0afnRF0Ft+z0r8QVLSFLt7r/FCQ==
X-Received: by 2002:a5d:46d0:: with SMTP id g16mr33356965wrs.605.1638187633534; 
 Mon, 29 Nov 2021 04:07:13 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:13 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:41 +0100
Message-Id: <20211129120659.1815-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/28] drm/etnaviv: stop using
 dma_resv_excl_fence
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

V2UgY2FuIGdldCB0aGUgZXhjbCBmZW5jZSB0b2dldGhlciB3aXRoIHRoZSBzaGFyZWQgb25lcyBh
cyB3ZWxsLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmggICAg
ICAgIHwgIDEgLQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fc3VibWl0LmMg
fCAxNCArKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9zY2hl
ZC5jICAgICAgfCAxMCAtLS0tLS0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYv
ZXRuYXZpdl9nZW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmgKaW5k
ZXggOThlNjBkZjg4MmI2Li5mNTk2ZDc0M2JhYTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9ldG5hdml2L2V0bmF2aXZfZ2VtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRu
YXZpdl9nZW0uaApAQCAtODAsNyArODAsNiBAQCBzdHJ1Y3QgZXRuYXZpdl9nZW1fc3VibWl0X2Jv
IHsKIAl1NjQgdmE7CiAJc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqb2JqOwogCXN0cnVjdCBl
dG5hdml2X3ZyYW1fbWFwcGluZyAqbWFwcGluZzsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpleGNsOwog
CXVuc2lnbmVkIGludCBucl9zaGFyZWQ7CiAJc3RydWN0IGRtYV9mZW5jZSAqKnNoYXJlZDsKIH07
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbV9zdWJtaXQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jCmluZGV4IDY0
YzkwZmYzNDhmMi4uNDI4NmRjOTNmZGFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXRu
YXZpdi9ldG5hdml2X2dlbV9zdWJtaXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9l
dG5hdml2X2dlbV9zdWJtaXQuYwpAQCAtMTg4LDE1ICsxODgsMTEgQEAgc3RhdGljIGludCBzdWJt
aXRfZmVuY2Vfc3luYyhzdHJ1Y3QgZXRuYXZpdl9nZW1fc3VibWl0ICpzdWJtaXQpCiAJCWlmIChz
dWJtaXQtPmZsYWdzICYgRVROQV9TVUJNSVRfTk9fSU1QTElDSVQpCiAJCQljb250aW51ZTsKIAot
CQlpZiAoYm8tPmZsYWdzICYgRVROQV9TVUJNSVRfQk9fV1JJVEUpIHsKLQkJCXJldCA9IGRtYV9y
ZXN2X2dldF9mZW5jZXMocm9iaiwgdHJ1ZSwgJmJvLT5ucl9zaGFyZWQsCi0JCQkJCQkgICZiby0+
c2hhcmVkKTsKLQkJCWlmIChyZXQpCi0JCQkJcmV0dXJuIHJldDsKLQkJfSBlbHNlIHsKLQkJCWJv
LT5leGNsID0gZG1hX2ZlbmNlX2dldChkbWFfcmVzdl9leGNsX2ZlbmNlKHJvYmopKTsKLQkJfQot
CisJCXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXMocm9iaiwKKwkJCQkJICAhIShiby0+ZmxhZ3Mg
JiBFVE5BX1NVQk1JVF9CT19XUklURSksCisJCQkJCSAgJmJvLT5ucl9zaGFyZWQsICZiby0+c2hh
cmVkKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CiAJfQogCiAJcmV0dXJuIHJldDsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfc2NoZWQuYyBiL2RyaXZl
cnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfc2NoZWQuYwppbmRleCAxODBiYjYzM2Q1YzUuLjhj
MDM4YTM2M2QxNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9z
Y2hlZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfc2NoZWQuYwpAQCAt
MzksMTYgKzM5LDYgQEAgZXRuYXZpdl9zY2hlZF9kZXBlbmRlbmN5KHN0cnVjdCBkcm1fc2NoZWRf
am9iICpzY2hlZF9qb2IsCiAJCXN0cnVjdCBldG5hdml2X2dlbV9zdWJtaXRfYm8gKmJvID0gJnN1
Ym1pdC0+Ym9zW2ldOwogCQlpbnQgajsKIAotCQlpZiAoYm8tPmV4Y2wpIHsKLQkJCWZlbmNlID0g
Ym8tPmV4Y2w7Ci0JCQliby0+ZXhjbCA9IE5VTEw7Ci0KLQkJCWlmICghZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkKGZlbmNlKSkKLQkJCQlyZXR1cm4gZmVuY2U7Ci0KLQkJCWRtYV9mZW5jZV9wdXQoZmVu
Y2UpOwotCQl9Ci0KIAkJZm9yIChqID0gMDsgaiA8IGJvLT5ucl9zaGFyZWQ7IGorKykgewogCQkJ
aWYgKCFiby0+c2hhcmVkW2pdKQogCQkJCWNvbnRpbnVlOwotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
