Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5303919DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:19:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDD5C61440
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:19:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B8DB96143C; Wed, 26 May 2021 14:19:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A22561436;
	Wed, 26 May 2021 14:19:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0E95161161
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F3A4E61175; Thu, 20 May 2021 12:03:14 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 95780605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:12 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id h4so17351157wrt.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pO5grwrsv4uMOhYf2ygGyZPPYt+9rmeszEZndYds2GE=;
 b=CT/EoTRfYVBMyN8Wzm8oIU6O8z4y0prNiAf2aGwl18sXL6nhs3Qa7lndrhUsKNpDNh
 lCPNbGFn1y4DmrNr28zOZrehZnATaWcMml5I3ocbHsxIkMeGsS2ZekSj2cVrN+8vUzOw
 sSuN90me/VUxRRa8I4hU3JwltTu8JZT90S3shAULwt0mBG7O/wb97drPL8NKXIltu6i1
 xMypzDARp+sAyjtdEKK0npV7sP1RPbELatr9TgObyh9m8es+7Kw3VdkkU6K40xJaPQ+1
 xWb2/INEkfii3jkvbu7kRkEciU+eiCKAPTU1Y2Tw9wyaA2n+N8KCQ/gjqjtc8BKAZsBm
 I3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pO5grwrsv4uMOhYf2ygGyZPPYt+9rmeszEZndYds2GE=;
 b=X60F6sZncCgc/b/2pfA15QwydKeny/xCfyQ2Oxw030Yf5Xr6aFZEO1+Ihkw9FUwlJu
 TScoWCg23R0cwSBB5FmOpmrVBMCqipseLgUgTYOo3hRIgRjpn28TvSIUCNqOE6kHf7MR
 zoCCDvm/5eeuTO00TgOmbLufGTAPeziizKajFn7xdaYLLvLPxJF1mPzMpNJ58e3k50Nm
 AgsPi46vxEIWyI/hifaFz4tIlhjO7swg2OJpH75w8IOPfGxFcp//yQuOMvO4sLiK7FUC
 XQ/ANg/gb7sj95GAe91nQjK38Zkl8zakJCh6GcRYefnQXDDnRx2xsBLZDHG1t2aq54iE
 jHkg==
X-Gm-Message-State: AOAM532iMRstwkRzJSYhS0d2YIHPKidgawPQIO6VVQz+pSiG1ChTom0Q
 x4KOoO0+VMjg4U/lhaxFuJjlS+OW
X-Google-Smtp-Source: ABdhPJyVGLD3pIUwDllaOAyh0KECeEj9Z5MxF/PEDD5PRs/ZcnbIVDDHh9VW+4L3f/5KCoQgYjwlxg==
X-Received: by 2002:adf:e0c6:: with SMTP id m6mr4105302wri.66.1621512191654;
 Thu, 20 May 2021 05:03:11 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:11 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:29 +0100
Message-Id: <20210520120248.3464013-20-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 19/38] drm/radeon/cik: Fix incorrectly named
 function 'cik_irq_suspend()'
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9jaWsuYzo3NDUwOiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBl
IGZvciBjaWtfaXJxX2Rpc2FibGUoKS4gUHJvdG90eXBlIHdhcyBmb3IgY2lrX2lycV9zdXNwZW5k
KCkgaW5zdGVhZAoKQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4K
Q2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogRGF2
aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPgpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6IGFt
ZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMgfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vcmFkZW9uL2Npay5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9jaWsuYwpp
bmRleCA0MmE4YWZhODM5Y2JiLi43M2VhNTE4OWRmYjFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcmFkZW9uL2Npay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMKQEAg
LTc0MzksNyArNzQzOSw3IEBAIHN0YXRpYyB2b2lkIGNpa19pcnFfZGlzYWJsZShzdHJ1Y3QgcmFk
ZW9uX2RldmljZSAqcmRldikKIH0KIAogLyoqCi0gKiBjaWtfaXJxX2Rpc2FibGUgLSBkaXNhYmxl
IGludGVycnVwdHMgZm9yIHN1c3BlbmQKKyAqIGNpa19pcnFfc3VzcGVuZCAtIGRpc2FibGUgaW50
ZXJydXB0cyBmb3Igc3VzcGVuZAogICoKICAqIEByZGV2OiByYWRlb25fZGV2aWNlIHBvaW50ZXIK
ICAqCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
