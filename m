Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2675A46BB5F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3CF461ED8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8297C62DC7; Tue,  7 Dec 2021 12:35:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 825C662D46;
	Tue,  7 Dec 2021 12:35:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0729062072
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D380B62164; Tue,  7 Dec 2021 12:34:38 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 8773461EB5
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:34 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id u17so21838928wrt.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=VGR7sEyP5xUI57aswHQi5HhbTWAZp7wO5W8n1Qo9nVA=;
 b=cO8itEDO0Y4+CDmudoe9BP9YVtjl4oXUFSIFHAE2oRZtmKBaE7Dv/HhUYUQFZ2rNpg
 dm8oPUeaAjB8wJlr2LExU95+QydcPiXXuVPnooI7Xui42eTaWROr3Fe2jsCHGC7CAk4P
 g2eMHPGEJgaynGDKnTDc+2yPrLLzXyS/dBpmwFPslxFkQwkVuLC7LOUPikAgP+TBF4tG
 vDDMoKS5BZtKc8Wve+Spdnjrfk4efyfb2EBGlFh1FkvAf4vXmOJDmJbBeE9qd8QzHqq0
 sFFRLaI53Je8qxymR4Hd+eeEnQQa/YKo7BTlCYHagFzlwumihgS7yFI+yrLxOomzrydW
 cpdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VGR7sEyP5xUI57aswHQi5HhbTWAZp7wO5W8n1Qo9nVA=;
 b=u1ht+3XCD9OLR6QzJzKIfLOmvapKSIXxwY6wPAftMGvWwqNIUV32j4D8Ub2QS7f0U7
 5QB7HFkKpL0MVkHV7r+valSZt8agX42srza6fpvaaCI5dMfKS8KXW/XtvED8nsYcmN9l
 mBHaMzgPx+aVwi/tMjxAZAqgKQClJ/pGlsmprdhJO6NMHBGV+597Jtzzdl2mAMGsi4im
 DxK5aDii+X2am/9QBEs+Rib258lVvOBIz5KbaJa2GdsQp5YFiEyfRhXDlTk5nyrT6qKR
 g6GBNVzUJmIL2cMraxd25AauZVc0ZbHg+BSyg6NUw/pjnIAD/AU6NKxBRdTzWMlh577Z
 a6uQ==
X-Gm-Message-State: AOAM531rUUW5nXcTe96ikDei2lQx+wSl7GQ7uZNwov1A7FJVV5dBnRH2
 9ZnDC15EUUp2R4NTc7rlANs=
X-Google-Smtp-Source: ABdhPJwDjvg0eXOQ+wfJ/r0O7+OWZzD8u3llg0zC7WG3fgEyNqUmzQHoEt6NtHSQM5Q/O13PiZLgbQ==
X-Received: by 2002:a05:6000:1681:: with SMTP id
 y1mr50889475wrd.52.1638880473632; 
 Tue, 07 Dec 2021 04:34:33 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:33 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:34:03 +0100
Message-Id: <20211207123411.167006-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 16/24] drm/nouveau: support more than one
 write fence in fenv50_wndw_prepare_fb
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

VXNlIGRtYV9yZXN2X2dldF9zaW5nbGV0b24oKSBoZXJlIHRvIGV2ZW50dWFsbHkgZ2V0IG1vcmUg
dGhhbiBvbmUgd3JpdGUKZmVuY2UgYXMgc2luZ2xlIGZlbmNlLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYyB8IDE0ICsrKysrLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYyBiL2RyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L2Rpc3BudjUwL3duZHcuYwppbmRleCAxMzNjODczNjQyNmEuLmI1NWE4YTcyMzU4MSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvd25kdy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYwpAQCAtNTM2LDggKzUzNiw2
IEBAIG52NTBfd25kd19wcmVwYXJlX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3Qg
ZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSkKIAlzdHJ1Y3Qgbm91dmVhdV9ibyAqbnZibzsKIAlzdHJ1
Y3QgbnY1MF9oZWFkX2F0b20gKmFzeWg7CiAJc3RydWN0IG52NTBfd25kd19jdHhkbWEgKmN0eGRt
YTsKLQlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2U7CiAJaW50IHJldDsKIAogCU5WX0FUT01JQyhkcm0sICIlcyBwcmVwYXJlOiAlcFxuIiwgcGxh
bmUtPm5hbWUsIGZiKTsKQEAgLTU2MCwxMyArNTU4LDExIEBAIG52NTBfd25kd19wcmVwYXJlX2Zi
KHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSkK
IAkJCWFzeXctPmltYWdlLmhhbmRsZVswXSA9IGN0eGRtYS0+b2JqZWN0LmhhbmRsZTsKIAl9CiAK
LQlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG52Ym8tPmJvLmJhc2UucmVzdiwgZmFsc2Up
OwotCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7Ci0J
CS8qIFRPRE86IFdlIG9ubHkgdXNlIHRoZSBmaXJzdCB3cml0ZXIgaGVyZSAqLwotCQlhc3l3LT5z
dGF0ZS5mZW5jZSA9IGRtYV9mZW5jZV9nZXQoZmVuY2UpOwotCQlicmVhazsKLQl9Ci0JZG1hX3Jl
c3ZfaXRlcl9lbmQoJmN1cnNvcik7CisJcmV0ID0gZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihudmJv
LT5iby5iYXNlLnJlc3YsIGZhbHNlLAorCQkJCSAgICAgJmFzeXctPnN0YXRlLmZlbmNlKTsKKwlp
ZiAocmV0KQorCQlyZXR1cm4gcmV0OworCiAJYXN5dy0+aW1hZ2Uub2Zmc2V0WzBdID0gbnZiby0+
b2Zmc2V0OwogCiAJaWYgKHduZHctPmZ1bmMtPnByZXBhcmUpIHsKLS0gCjIuMjUuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
