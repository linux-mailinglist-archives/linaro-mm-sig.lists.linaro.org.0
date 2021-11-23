Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F4945A573
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:22:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C48A9620CA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D21BD62FEE; Tue, 23 Nov 2021 14:22:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7060862F9E;
	Tue, 23 Nov 2021 14:22:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0007C62C9D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EA9BA622CD; Tue, 23 Nov 2021 14:21:36 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by lists.linaro.org (Postfix) with ESMTPS id 0E9226216B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:34 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 p27-20020a05600c1d9b00b0033bf8532855so2140565wms.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MPKJq2Wt16wetIpfIT15/6v8GODpjJBfKyDGmSXKrmY=;
 b=IZZJm5wBcrUw5S+SV0DKy9QiVgxymjOR1JQhuUoWkg1bCpNsQkqMwSrSv6D8LTRV57
 MIkZKFn/6/OMUOeJvWvBfjJ5Too5L/A4vMWbkzToERXVSHue1i1df6RpFjH2h8a0dXSG
 TbOznsKwabznnnt4s5NshynHZxaTV9qPXvjna9Yl+5S73tXfoJiwkz2BX54zHuQ4dauo
 7eX7IguwjBJDZ/BB2v5InrL7EYbPYLRcLrJhXkHhn/v5NVEmEzY277OHesnTzdixPAgo
 +c3VaSap3DGW9WTjVmwzRRzqwF4SW6a1kFgM6jcy4cw1uYzJ5l8P0o8KtCsr+5ZptJaJ
 ggxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MPKJq2Wt16wetIpfIT15/6v8GODpjJBfKyDGmSXKrmY=;
 b=BpX9uHTfo24ZYZdgBTL4PKW8qz2LnSt98e/yLTw4AYLq2QbxooL82wOCyMGBMrbKjN
 a8uTwqBalA+TthELA4VnHiiv0Wf+M4PI+M2OvCLh0C/etssMNuw31YixVLtxhILcEKOJ
 HKKYAUAREe3zCK8IEpwTBR/0AG4Y/Lha7fXDTNc1NdGQGgkZ04Q9eYvLSjviDVe0WJWv
 GjsMzhCercRvdsOis3vBXobRzgDd+PRcJX0qDLz8+HQmQZ9YFeKsn+0TOR115J0w0LiU
 DWE0Ghh2f7dVBaK+DkhVxHtAyfptHpgMO46BZlWVKf6NaT4eZ96wGRMTVjfCeLP5eTh8
 TjSQ==
X-Gm-Message-State: AOAM532WmUYIUugkhrEuGit3cv6haxNTesSmSjV54rbjVgZjT4K/CAJ0
 JDuwHPuI9seVYoL2SS5sMTo=
X-Google-Smtp-Source: ABdhPJzExkfEmvQQbn+dzA8SjGvNJAesPqLUleluPP95rkU+PB6EWtrF6hZ828idEP7AoWJqT9uNkQ==
X-Received: by 2002:a05:600c:4e8d:: with SMTP id
 f13mr3660138wmq.7.1637677293126; 
 Tue, 23 Nov 2021 06:21:33 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:32 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:55 +0100
Message-Id: <20211123142111.3885-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/26] drm/etnaviv: stop using
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
