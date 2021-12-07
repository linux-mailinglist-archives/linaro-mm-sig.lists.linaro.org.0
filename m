Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EAB46BB48
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:34:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BCB260E24
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:34:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4BE5D62DC1; Tue,  7 Dec 2021 12:34:49 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE9E362170;
	Tue,  7 Dec 2021 12:34:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7271F61A46
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 42ACF60C02; Tue,  7 Dec 2021 12:34:23 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id C3ADA60C02
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:20 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id d24so29318979wra.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=MPKJq2Wt16wetIpfIT15/6v8GODpjJBfKyDGmSXKrmY=;
 b=mNB5ddQOBbfe1ionpAcL5x0CRzIyez/D6M70EWvEOItGOFAXApPEOKoA2Vqa0DejH/
 b5jD3jh1azgEYzv+caN4+5QO7mnByt/Q7uucl8Oh1GqC3XgpFHZuSq5oA/Eat4O4tm13
 GW0UNtdk+jZk3X7nIufqdXubOjYcJ8f8pYBUeouziaBPkAvurdg6Qh4nFcIvh8E5cLzD
 GXVQcRRi2ACP1nPFVN9B/pVJmBrPWGXyGnkNLpahgrZppWQNVm2UPWNP9zRzqvDOzQUu
 o5gQUL/YE63pZJEwKk+YAONcye9An+pY/aGjr/gd6g9i2oBpjH+VT7uWa4mM4Jy8us2P
 xshA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MPKJq2Wt16wetIpfIT15/6v8GODpjJBfKyDGmSXKrmY=;
 b=bAW+Gb2oDPL3Metx1tvYU158TEhs0MoyNxi7HPjlhwsmur3r+J5CNjflsk8O+9B7iS
 yJvuJo7XafpJ0pnsODNe4kr+vLdhbFUHHDE0K9Jw3soYTIgfsvYzOTlethFLD2uRYlWp
 N2ljuvnZM16h9t27kN27tmjfkEFFubL6F4hR4MEcvShBzF9jXCZaxNf9KFLjFNlDaL8j
 A+cp+1rcoEusL0QSVsa8dL7SXnqPdL3hYIc0+eV5VO87wF52gBS+9LYVHk8A36xYxSvM
 tUXHLLRnrp6Wc+KxBeKkn2guijZdt3Gd2tmldL1FHkbI1Nlor+8GrfttinCkWVcvGZiE
 AJBQ==
X-Gm-Message-State: AOAM533fDJpQAKCelQ60e/FGQGW97G+TLEkoA1T3NpwTRAA9H6hwYJ70
 iVBgXmAsgE28+3tkULBkYUh/0hBOwMAAfg==
X-Google-Smtp-Source: ABdhPJyqNqRr/d+1EtHHi/G4K6YwaP6V+42Itzf2CfVhHni9ZvqzGXNzIwAQ7PRDySS4qKNVM/55VQ==
X-Received: by 2002:a5d:46d0:: with SMTP id g16mr50806916wrs.605.1638880459885; 
 Tue, 07 Dec 2021 04:34:19 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:19 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:33:53 +0100
Message-Id: <20211207123411.167006-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/24] drm/etnaviv: stop using
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
