Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D22398CEA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Jun 2021 16:33:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4784A61014
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Jun 2021 14:33:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0392C60B5A; Wed,  2 Jun 2021 14:33:40 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61A0160752;
	Wed,  2 Jun 2021 14:33:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9D55A60694
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Jun 2021 14:33:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 996E160752; Wed,  2 Jun 2021 14:33:35 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by lists.linaro.org (Postfix) with ESMTPS id 9271160694
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Jun 2021 14:33:33 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 p13-20020a05600c358db029019f44afc845so1805730wmq.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Jun 2021 07:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JvuBm7KpIXmVjvwi2OsKGMdogxy/zdINv8FqDSEvNYM=;
 b=nH1tswbv/dRTxAbMVL2oQ+YkAIasGdidijupRDL7c3sCfVwK+oNtIhOPL0xok9gzVW
 t5+ceR05rXZ7uMo2uFij6BvFfqXaDmi0JMWGswWKDBNIILG5hLPYn20T6fCzdxolvyPX
 +XTqGQ5X5YYinYoN2/mYvDaKDcYXM0/IDw799rIPSAk/3ROkjHPygpnIc7Z8qekh7XqF
 ANhYI2NCG0tckEoHP506uUWeO9SDw2dESxg+EJ8Be80RUywMFpYsHwunvITnn9pQm8V5
 0tiSbn6+yxv5bdePKcmjb5leSF3Dh/kD4YgCPLWnT+gapDJbriqm67BYzq1bujgpWvBm
 NwKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JvuBm7KpIXmVjvwi2OsKGMdogxy/zdINv8FqDSEvNYM=;
 b=gcx6H7FefDZoSGfJEjQ8J2L3ZEAi9gnC7JZjbfxSX5OI572aSfGccWgAQdyywr41Ef
 B1NvYnz29TChIp6ZKJEm3cXN3SKfib6LmLhVJYfQAZXWU4pX57MDCuv7wSw/Kgzlkswv
 dOKDO7XBiZyej8AwVl44bxyp8ypdbzVDGkfqW3hhJX+9LBnuqAd2KHOxXtWkCulRVJrg
 oc0dP6lNGdEcT6tBBuP8mi8vL+ER2Q72PPuI9gpTbW8XD+NC10DCy7twPWdW/MCpYP4l
 UhxEWJ0oFDQM7zlqcyEo0gJ/13GZNMD/hemo4drZCuePgEOSy+mNSasDBxuj1l86tNUa
 Wt4A==
X-Gm-Message-State: AOAM531dqz0/9UoNwzHPUQpqjEo1tskeDHvUDM3kIfDC4JsslNd5wu3v
 2SEHorjfd+X8dSMtmSzP1CT4ZuJ6
X-Google-Smtp-Source: ABdhPJyUgla3FFfynuCl+ad/SpJvdCBqRlxX5f3USSzH6/SPYgduUsfipkbdGBvQZ5pWNouc43kgzw==
X-Received: by 2002:a1c:41c5:: with SMTP id o188mr5498913wma.60.1622644412785; 
 Wed, 02 Jun 2021 07:33:32 -0700 (PDT)
Received: from dell.default ([91.110.221.214])
 by smtp.gmail.com with ESMTPSA id o11sm132315wrq.93.2021.06.02.07.33.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 07:33:32 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Wed,  2 Jun 2021 15:32:56 +0100
Message-Id: <20210602143300.2330146-23-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210602143300.2330146-1-lee.jones@linaro.org>
References: <20210602143300.2330146-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [RESEND 22/26] drm/vgem/vgem_drv: Standard comment
 blocks should not use kernel-doc format
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
Cc: Ben Widawsky <ben@bwidawsk.net>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Adam Jackson <ajax@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYzo0Nzogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlw
ZSBmb3IgVGhpcyBpcyB2Z2VtLCBhIChub24taGFyZHdhcmUoKS4gUHJvdG90eXBlIHdhcyBmb3Ig
RFJJVkVSX05BTUUoKSBpbnN0ZWFkCgpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4Lmll
PgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpDYzogU3VtaXQgU2Vtd2FsIDxz
dW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPgpDYzogQWRhbSBKYWNrc29uIDxhamF4QHJlZGhhdC5jb20+CkNjOiBC
ZW4gV2lkYXdza3kgPGJlbkBid2lkYXdzay5uZXQ+CkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0Bs
aW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZHJ2LmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3ZnZW0v
dmdlbV9kcnYuYwppbmRleCBhMGU3NWYxZDVkMDE2Li5iZjM4YTdlMzE5ZDE0IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92
Z2VtL3ZnZW1fZHJ2LmMKQEAgLTI1LDcgKzI1LDcgQEAKICAqCUJlbiBXaWRhd3NreSA8YmVuQGJ3
aWRhd3NrLm5ldD4KICAqLwogCi0vKioKKy8qCiAgKiBUaGlzIGlzIHZnZW0sIGEgKG5vbi1oYXJk
d2FyZS1iYWNrZWQpIEdFTSBzZXJ2aWNlLiAgVGhpcyBpcyB1c2VkIGJ5IE1lc2EncwogICogc29m
dHdhcmUgcmVuZGVyZXIgYW5kIHRoZSBYIHNlcnZlciBmb3IgZWZmaWNpZW50IGJ1ZmZlciBzaGFy
aW5nLgogICovCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
