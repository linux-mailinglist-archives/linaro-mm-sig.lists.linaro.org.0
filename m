Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8973646BB54
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51EC161A46
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B524D62170; Tue,  7 Dec 2021 12:35:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C5E362D26;
	Tue,  7 Dec 2021 12:34:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AAD2962D16
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0A05262D2D; Tue,  7 Dec 2021 12:34:28 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id A1B4E62003
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:23 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id t18so5248218wrg.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=MHiuy8hFM9J8q0FM4IEtsQAAAvGX3NWM32T+WyyUIsc=;
 b=Y+hr4KgXcRYlg2AL5TUx/Lvbyq/Xvn6LXODTNFfEvNUT6g8YsKLk+Alfj9N0hV2tKQ
 ki75IGuOZjQejcLYDNFc9H1I1cYdcFUBAzX+ArSb8Y4hNpOe2psbq1NIvuyOL8N2tYg9
 2dy5S/Mqk5YsSvuMZaBiAPvSk05GQDlpEpIrpQGqzmRr0ahPUzn0ob+VFGZVg5xFGduO
 WMOrJxZiYmLQE4pom3D46irwgpj6BlHi5y/6NKbi7CJtMLErVVxxxOlMd4aHnXQB+DIq
 7uczyZIAwsse0HXaJbFh1Oqa8PD5BpSr9/kVmJaZEbMS9QIJeFvcPDx3IW9bKC95Ad0k
 9+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MHiuy8hFM9J8q0FM4IEtsQAAAvGX3NWM32T+WyyUIsc=;
 b=yMzDN2Pwba+Z0KT5I3aYy9/f3yJtPpotdifh/iLDZHwnHua5PX/haH95D2vkAvQJv8
 mVBwU1tEz7CKydfgjYDUGRF8NZ5hvrIh0J6F6l/c+vceZ8FrsoXjukqREl1+N8Uxohn6
 xQD5VvZ1HtNLX02UUeO/Zoh85IbuErUxkJMHnMt8iGzO9uRJFduaz9l+rgpBYB7hd5Nc
 300JN/OhDCOXoBD1KBQxU9cKbnauLIkvaFHz3BdYLRGFoQMqiR3RfY8bjQLwXMIME+3h
 RKOghgvNazyYZush30AJaXCbNteEd7pte+lU1xWVwrqgeNztcVyrNtpI+EP/z7bjFIk4
 HJUw==
X-Gm-Message-State: AOAM530b0QVt8Ivufn8n/+q3MY1ipNYvJebvFZ1fyYt7Ezwl9ItxPFhB
 uwPZlyKyC20swJgRImWVzDw=
X-Google-Smtp-Source: ABdhPJxTYxD0RI3PjI0sUFLGAXoyxrSp+JUq8J9ytxbHZy3ajralYS/NFY+EP9Eg+mIgbsLFAcKFNg==
X-Received: by 2002:adf:f749:: with SMTP id z9mr52001158wrp.379.1638880462755; 
 Tue, 07 Dec 2021 04:34:22 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:22 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:33:56 +0100
Message-Id: <20211207123411.167006-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/24] drm/radeon: stop using
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
