Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCF646BB51
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B176562DBC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B04B762D26; Tue,  7 Dec 2021 12:34:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 114176057C;
	Tue,  7 Dec 2021 12:34:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A005060E25
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 46BEC61E5C; Tue,  7 Dec 2021 12:34:24 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id C3B2D61234
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:21 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id o13so29093550wrs.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=cLhcJ6c+gStaRG1gv+P6ttqcHjmkscgCl8MWmUQCq2k=;
 b=gc1YGrRR02J26KgtbWl2UnhYk9fouM1WZeAvCID85guiFbtLjzxu9WouIDKxsL1zOf
 bByKukPovwnGh4vdbGTMWd1TpDgTE1w3fTU1IG6Btf6F4UwhcEzcCHLZQiZBhAHb/0RZ
 zhMcimw4HKDOQjFJJMSleGbaN/nVFGRV5YlvXbpl0icay0lGVvvqG3gima8ilWAdO0l/
 eGukstecJaPMUAjX40d0cIBoDqrgsqKnku543GHczx7IimV0GMlQ6bfyvTIjcq4B++jI
 bglpetl5Oh1j23+OttiAHKhl1TxGKmFbDmrwsKzlpvBJ3RvZ0vjjDg4aeq0iF+6ThUX1
 SPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cLhcJ6c+gStaRG1gv+P6ttqcHjmkscgCl8MWmUQCq2k=;
 b=ztiDLFHLHGq/23FJYaKNsbkrOXiePsrbQaKw6w+Dcs2QU2zvDObECmI2wvOdMN8DMs
 0gSD45aYWDSassL9d0pQjZoHCr3hHO7l2w9VBCI54dQgeJeswmeWsAzuKXICeAqOD2GV
 6Fb1ejAl/tLv4W7cY685kjngSFzhUQm0ugwW/brQPSI7f/G3np7ITE8Ghx5dgmhH1OsB
 CQNfq/61fgPCI5cq1RVnjQ7Hjk/+Sj0muV5dHJ5ajdHdvB3398elwI1HlYlTjfP6Amzm
 lz8kqBj01JPT3U4C5MuEmWN2+pGdQemgIQU9QMkXfuxlhQz69SAnP8HktG87HfmxZAJ/
 HlhQ==
X-Gm-Message-State: AOAM53298t7ehz+jXCxUtKO9wqeJI0WpKpa+n0Yx3/m2N9zbWh6ym6q7
 yPsaQffL6j7lAtkctvyCzp8=
X-Google-Smtp-Source: ABdhPJzCUAc21cxAn4aaSO5xC2Dcgwa6/a2y1qsI81TK+cu41x6GFrCxVoreFyWugo+uqrN9VMmM6Q==
X-Received: by 2002:adf:b18e:: with SMTP id q14mr53774033wra.477.1638880460696; 
 Tue, 07 Dec 2021 04:34:20 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:20 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:33:54 +0100
Message-Id: <20211207123411.167006-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 07/24] drm/nouveau: stop using
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

SW5zdGVhZCB1c2UgdGhlIG5ldyBkbWFfcmVzdl9nZXRfc2luZ2xldG9uIGZ1bmN0aW9uLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfYm8uYyB8IDkgKysrKysrKystCiAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9iby5jIGIvZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvbm91dmVhdV9iby5jCmluZGV4IGZhNzNmZTU3Zjk3Yi4uNzRmODY1MmQyYmQzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2JvLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9iby5jCkBAIC05NTksNyArOTU5LDE0IEBAIG5v
dXZlYXVfYm9fdm1fY2xlYW51cChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogewogCXN0
cnVjdCBub3V2ZWF1X2RybSAqZHJtID0gbm91dmVhdV9iZGV2KGJvLT5iZGV2KTsKIAlzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2ID0gZHJtLT5kZXY7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBk
bWFfcmVzdl9leGNsX2ZlbmNlKGJvLT5iYXNlLnJlc3YpOworCXN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlOworCWludCByZXQ7CisKKwkvKiBUT0RPOiBUaGlzIGlzIGFjdHVhbGx5IGEgbWVtb3J5IG1h
bmFnZW1lbnQgZGVwZW5kZW5jeSAqLworCXJldCA9IGRtYV9yZXN2X2dldF9zaW5nbGV0b24oYm8t
PmJhc2UucmVzdiwgZmFsc2UsICZmZW5jZSk7CisJaWYgKHJldCkKKwkJZG1hX3Jlc3Zfd2FpdF90
aW1lb3V0KGJvLT5iYXNlLnJlc3YsIGZhbHNlLCBmYWxzZSwKKwkJCQkgICAgICBNQVhfU0NIRURV
TEVfVElNRU9VVCk7CiAKIAludjEwX2JvX3B1dF90aWxlX3JlZ2lvbihkZXYsICpvbGRfdGlsZSwg
ZmVuY2UpOwogCSpvbGRfdGlsZSA9IG5ld190aWxlOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
