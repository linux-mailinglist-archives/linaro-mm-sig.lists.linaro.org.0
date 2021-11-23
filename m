Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E80745A578
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:22:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4351062FA2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BDF5962D4A; Tue, 23 Nov 2021 14:22:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3E4E62D40;
	Tue, 23 Nov 2021 14:22:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C966462D15
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C4EFE622BB; Tue, 23 Nov 2021 14:21:41 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 51B36620CA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:37 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 n33-20020a05600c502100b0032fb900951eso2407387wmr.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IRN4qp5Iqo3k44JzsPUytvzY07JybWV7N7oXbJsRX+E=;
 b=eLwYR4ZKYqhkoKNUcBKIl/SAfy9xF87d9II49MKgVRWKZESAQ+iJI5bsmv/O0K5s1e
 Y2efcqQ5qKcudBl35z+gXv3uY1Y45G/tmeoZ4VhYgTm9X3+G7ohLsmgSFtqM4IguOr9b
 pKcIBxkYs34qGvCySVkuPFfnf3KNeoMX7k8L80PPcgdZU5A1gj+HZtmEds4lh+2+dHGK
 dYaeTBQinuxL21oFo6vRVJSshjdqgm8z0SzkvdARpXJ7+lAj3ZD3AdeIU9TJ6IEhHQNk
 MRVy30mak+KWX/i7iWZjSMvOIRk21rfcF+2HG85EtBDMKeoZnhgYqpOjmtPF9nBMu8l+
 CHsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IRN4qp5Iqo3k44JzsPUytvzY07JybWV7N7oXbJsRX+E=;
 b=ZW8j3hrU0ySQGpn/rvruADghO6pZQv+OhCLEhrpPNft1boojPDCAWq63GN2wtBtdFh
 SXNwN5VP883pp+tkSju7/iRgnAz01vcVT+tr2ZRPIuOC+2Im/9J9hkVwiP60D2dPiiT2
 pmVqMBylvJNLGPrXL+K6JU1F24GLb5oxs27VrVuYTTBTJBFqbOhVAXqU1PBEVtD4zbiT
 ttFC5onwEOy/zOKdGRoQb0oxvLkyYd0jFq4VTRJh/gaf7mRumlDlas8vKrZVXpfdEZty
 ZKI2413GP/IMsUJpFF3xTrRr72J+xsW4Eia6wKtpUArQZVZw38ljO89aPRxVjejByh8S
 649w==
X-Gm-Message-State: AOAM533SHEtkvoMQPO4jP/XtKqy9ZzDrq5CLJbhCHvSZEwEdhm+QMh8P
 WWhtNd4WJjLYW4qF5VtmNf0=
X-Google-Smtp-Source: ABdhPJwdudJRBQUyuM6N/s07Qo3lmLid8mFUOvJ3ndWpjmCPTwrY9JZYMgsS6jk9TZToXh3BkzwbPA==
X-Received: by 2002:a1c:f418:: with SMTP id z24mr3642026wma.95.1637677296400; 
 Tue, 23 Nov 2021 06:21:36 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:36 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:57 +0100
Message-Id: <20211123142111.3885-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/26] drm/vmwgfx: stop using
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
