Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 424A646BB4A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 95E2762421
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3204461ECD; Tue,  7 Dec 2021 12:34:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62BE362DB4;
	Tue,  7 Dec 2021 12:34:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7E26E6216F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2556861EF7; Tue,  7 Dec 2021 12:34:25 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 7463361C3F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:22 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id d9so29171115wrw.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=IRN4qp5Iqo3k44JzsPUytvzY07JybWV7N7oXbJsRX+E=;
 b=gDe8fJ83oMPovLlyB8HFqqdujfmf5BPCwaHMpVcaiqkl/LQQHASJUErCDODbhDVu13
 463dGJB1StIe+RozstSEm51gDJQ54VUcefZusTDUK3gcnXJjjbJfX5Qo4UtnZpIYIdJO
 xYPfijXb4W3uQCaaFf+IaHUvTMx0ZPVntXKRtLfr1WLl4hj6A92WJOBw1gabBspr/0Qk
 xSDySBgU0G2u5KPAJm2PsNRQ4vH7Cz+IT18G4X8xdfuXfz5pvgqGIMdCovRT4+30pamA
 PoSd8MIML1vJCBJSYOUvI6Si2GH+nZ29lCpQz9aHU51ZK+e2zijet61eZNnOwJLXmVDv
 TfdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IRN4qp5Iqo3k44JzsPUytvzY07JybWV7N7oXbJsRX+E=;
 b=OwvoHpp+ICUuXZ+12jv9w31PEkPkx9yrkUZ2+YvIrOzXp5BI315Q6OwYyv4b9OLjQu
 cUCYbQawR6msgVWYEbVFN8+fM/kQVeIRHp4Odv0nSYMOdmgfC558xiYq0wt8uQqlgGip
 EFep0+AfCFr8wo77ioGZHSUerfwTyTTB8Tvw3qqsJUYiNBB+Zlh8+1RkSYqnybl0204y
 7VhCBFyny9TCD9xxoFcj0BQPHccKn0Z1FvXG2MIpHO6aXHOZawNzdZTNH+clPPbQGF1C
 PKdxh41/lr+KfMbDg5fugiVFwwEPHGUf5oX6jxzATB7JRgsvTfMj+1zAcAmR2Hxgl8k+
 tbaA==
X-Gm-Message-State: AOAM530kzXjDd4g6VfMh2rzyGOywPQKgiSMG2Z75GoLW7oc8gPWLd84A
 Fo/kkpuBLJJ9Qdtsujk7kQA=
X-Google-Smtp-Source: ABdhPJypSKpYTAj0bMWRRYynzVsdxJu8BhXzkE3TVsWyAD+OO288aVK1qVjH/jTm9r62ZXOk9fwTVg==
X-Received: by 2002:a5d:668d:: with SMTP id l13mr50335591wru.526.1638880461580; 
 Tue, 07 Dec 2021 04:34:21 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:21 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:33:55 +0100
Message-Id: <20211207123411.167006-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/24] drm/vmwgfx: stop using
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
LS0KIGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3Jlc291cmNlLmMgfCA2ICsrKystLQog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9yZXNvdXJjZS5jIGIvZHJpdmVycy9n
cHUvZHJtL3Ztd2dmeC92bXdnZnhfcmVzb3VyY2UuYwppbmRleCA4ZDFlODY5Y2MxOTYuLjIzYzNm
YzJjYmYxMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfcmVzb3Vy
Y2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9yZXNvdXJjZS5jCkBAIC0x
MTY4LDggKzExNjgsMTAgQEAgaW50IHZtd19yZXNvdXJjZXNfY2xlYW4oc3RydWN0IHZtd19idWZm
ZXJfb2JqZWN0ICp2Ym8sIHBnb2ZmX3Qgc3RhcnQsCiAJCXZtd19ib19mZW5jZV9zaW5nbGUoYm8s
IE5VTEwpOwogCQlpZiAoYm8tPm1vdmluZykKIAkJCWRtYV9mZW5jZV9wdXQoYm8tPm1vdmluZyk7
Ci0JCWJvLT5tb3ZpbmcgPSBkbWFfZmVuY2VfZ2V0Ci0JCQkoZG1hX3Jlc3ZfZXhjbF9mZW5jZShi
by0+YmFzZS5yZXN2KSk7CisKKwkJLyogVE9ETzogVGhpcyBpcyBhY3R1YWxseSBhIG1lbW9yeSBt
YW5hZ2VtZW50IGRlcGVuZGVuY3kgKi8KKwkJcmV0dXJuIGRtYV9yZXN2X2dldF9zaW5nbGV0b24o
Ym8tPmJhc2UucmVzdiwgZmFsc2UsCisJCQkJCSAgICAgICZiby0+bW92aW5nKTsKIAl9CiAKIAly
ZXR1cm4gMDsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
