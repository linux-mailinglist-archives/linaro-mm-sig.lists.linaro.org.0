Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E5B45A57D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:23:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDD4E62D4A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 08E3562D38; Tue, 23 Nov 2021 14:22:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99F8462C9D;
	Tue, 23 Nov 2021 14:22:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 482D66216D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 41A44620CA; Tue, 23 Nov 2021 14:21:44 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by lists.linaro.org (Postfix) with ESMTPS id 464E462C99
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:39 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 p3-20020a05600c1d8300b003334fab53afso2412674wms.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MHiuy8hFM9J8q0FM4IEtsQAAAvGX3NWM32T+WyyUIsc=;
 b=Aap9qb0CGJMazHPh76Zb+XR1OFS8Jd/j6yOThIDHqJ6I7ART5j3CY5Ipx2vkhBzcze
 QlI7onwvUrpPJY9975hB53OwS3Vy9uPVDO8z2uqK00BFn3NtLS2WWDTH0nYEq17ZRaXd
 NVbIAAtVVhRUkFwmDnCpIVN9MZW6l0/i0L2b14TR7QHs2hPT3sUW0i+Z4VjpSc6KF0KL
 MCWEIlyf8P8lAHUGA0f9oj7TSfxyjtJq4VjJ5OYtQ/R4allQQPRZpEZZFaWkaRYcvN+3
 jigULy1EE+5MzZLa4ZjE5k1kDEKydxv1lyxw1JiIokAki8vmDSBdOTuz0dyMU8YbVFzD
 sBow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MHiuy8hFM9J8q0FM4IEtsQAAAvGX3NWM32T+WyyUIsc=;
 b=KBlM/9S5860a3AFTzT0tiZY9eu/tGfE8rcVmsuzdVCEV92J7BVO88CUq1N2D8fDLTz
 yfSf3BRJWtKP1qL/W7/Tv1Rto2G2b+K3qEzT2fSdTGF2ur3j7KVHjRI7ErAdIPCvfDVD
 gbnifpYXKuWwzJwtqbD7UjXUEodWFp7A0cPA7O0grSF0ik3jcIUKtgWtO6PUb3CWKwhq
 fkf1HujtlRXVst0kNOKuVyjL6zAZGjYsvPQEWukTXKHkfNO1ruetLz9dm/t0TBZ9KJjx
 3rYqZor1OQQK9L4Oul3Lc7GOqQcBfm88c9QtA7oygaJXunrcNX4eRYN/pBJruARbxtlP
 Bv+w==
X-Gm-Message-State: AOAM533MHdD16c8/oITf3DCxZ1xfJ4EztC489HjK5sARkzTuChNNEfJO
 9jvBSotgiwSCi2YOmDAkQ38=
X-Google-Smtp-Source: ABdhPJyZg/cZ9stJjKdPoHG3fhLgr87QipAPe+4ZbOIDj9J1X5VBkse+LtX/RaUO8k5CsW0Rixncew==
X-Received: by 2002:a1c:1c8:: with SMTP id 191mr3498372wmb.90.1637677298054;
 Tue, 23 Nov 2021 06:21:38 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:37 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:58 +0100
Message-Id: <20211123142111.3885-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 13/26] drm/radeon: stop using
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
LS0KIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Rpc3BsYXkuYyB8IDcgKysrKysrLQog
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcmFkZW9uX2Rpc3BsYXkuYwppbmRleCA1NzMxNTQyNjhkNDMuLmE2Zjg3NTEx
OGYwMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZGlzcGxheS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Rpc3BsYXkuYwpAQCAtNTMzLDcg
KzUzMywxMiBAQCBzdGF0aWMgaW50IHJhZGVvbl9jcnRjX3BhZ2VfZmxpcF90YXJnZXQoc3RydWN0
IGRybV9jcnRjICpjcnRjLAogCQlEUk1fRVJST1IoImZhaWxlZCB0byBwaW4gbmV3IHJibyBidWZm
ZXIgYmVmb3JlIGZsaXBcbiIpOwogCQlnb3RvIGNsZWFudXA7CiAJfQotCXdvcmstPmZlbmNlID0g
ZG1hX2ZlbmNlX2dldChkbWFfcmVzdl9leGNsX2ZlbmNlKG5ld19yYm8tPnRiby5iYXNlLnJlc3Yp
KTsKKwlyID0gZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihuZXdfcmJvLT50Ym8uYmFzZS5yZXN2LCBm
YWxzZSwgJndvcmstPmZlbmNlKTsKKwlpZiAocikgeworCQlyYWRlb25fYm9fdW5yZXNlcnZlKG5l
d19yYm8pOworCQlEUk1fRVJST1IoImZhaWxlZCB0byBnZXQgbmV3IHJibyBidWZmZXIgZmVuY2Vz
XG4iKTsKKwkJZ290byBjbGVhbnVwOworCX0KIAlyYWRlb25fYm9fZ2V0X3RpbGluZ19mbGFncyhu
ZXdfcmJvLCAmdGlsaW5nX2ZsYWdzLCBOVUxMKTsKIAlyYWRlb25fYm9fdW5yZXNlcnZlKG5ld19y
Ym8pOwogCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
