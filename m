Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B43C24614A1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B44A361C3F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1135B6216F; Mon, 29 Nov 2021 12:08:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21A9D61E5C;
	Mon, 29 Nov 2021 12:07:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B35ED61ECD
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AB75962003; Mon, 29 Nov 2021 12:07:20 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 466FD61EB5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:17 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id i5so36283682wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MHiuy8hFM9J8q0FM4IEtsQAAAvGX3NWM32T+WyyUIsc=;
 b=KJ7diNsGhQm/8Ndo7DLAVfBuhYtC+4Pxq8mfU3h1qgbXKcUPTd8zGoZPYRUg+is0MT
 DWl4HXOFMpYpzQA2nbcRJMEXgFSGmne6TPWQM2Jn5FEkoEJHa7K5JrThAzSKbLqE4QuT
 4tONh0cSokz9MJ/xTaJ4fG5zVaMQt2w90hCIcR7HpGty8ZRjn5CbCgGLdxMp5F5h7Mv4
 iMwyLw2LPjRCVMWT3LJJ5qG3Wd493nQ3ulBUQFcJpQO1EPOK2g7FP32dodX5we+cIkq9
 VdR1HX7qAuvWfpz8waMHBuMN5UKGuag2eeOxbP9PXw3G2lwAHvRrA+b4Ursld7TZaUcw
 geOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MHiuy8hFM9J8q0FM4IEtsQAAAvGX3NWM32T+WyyUIsc=;
 b=tDrwOcxrRCp0jk/MKmiZ/qIonsdIBiZjyuOrIW+mj6IdXh4HxurXo/nIZMikgHDPh2
 C9QllDjdd8t7ZvvbwyT84k+sMW5P9NGmARJrhT2xC4YSwYvHpEjdB88BZ3fI2Ya47HQ3
 WLdB3jpsXr6Z78zThqE1kXuK6PWqAzeHLHMav757eMTVencxAd14w5UEbWdmTZhdqB8O
 cQdnjeQJ1JqMIcxaxrkpt77SABxASypAw270FDrT6XnrGgvkYSj0x0Zu00vCho6B9hpE
 8Y3D4kcY8FFFscNsH7pGi2LOQVKFScKpjj0IXXSm46Gaa9AokImH3TLbGgUQfFgEd2aS
 ML0g==
X-Gm-Message-State: AOAM533/laGZMxQzpd8JE1N7sgeK9UdZi2JahBPf2stN/+k2sZvhUlOt
 6kyCJME7FS+IoodrTK1tuKU=
X-Google-Smtp-Source: ABdhPJwYrRulNH1UIlUAXhJlQmOktxSeuXrTf3FJAf53GCRTDT8EtzYwHmYDRisvTYtIhveJBbbQ1w==
X-Received: by 2002:adf:ef84:: with SMTP id d4mr32384261wro.175.1638187636140; 
 Mon, 29 Nov 2021 04:07:16 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:15 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:44 +0100
Message-Id: <20211129120659.1815-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 13/28] drm/radeon: stop using
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
