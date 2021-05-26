Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E0E391A03
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:21:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6349A61473
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:21:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5D55E61462; Wed, 26 May 2021 14:21:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E20BC616B8;
	Wed, 26 May 2021 14:21:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E85EF6137E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 08:48:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E00C761391; Wed, 26 May 2021 08:48:04 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id D165B6137E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 08:48:02 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id d11so190273wrw.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 01:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JvuBm7KpIXmVjvwi2OsKGMdogxy/zdINv8FqDSEvNYM=;
 b=Lqd5jcfBOyTJPW2tFudt8CJv9J24bMfUhxeVIJZ8LmLI4SntnbTDRQQKyC6gpxAHXz
 9bN24AK6T739jCAH8GscQi8AgLUwd+1GsQcwK5rlRKI9kY7T5vOPO8+dZWVsWF1LSCZ3
 vG+j9kMH6Avl7hje6v2lDCjezgRtIi2s8bjtXVftIff6+ZLU1WMKEWszoAmYPFPG+d0M
 l9HPG8kGlyHpAOjOVi8ub43lhmZysDxIVeNgKCjW/MPBpSpJ6EgC0SlVBD4MLyN3Lhk6
 xoqjjLeGwk8V6oZ2P+P27keDN+hsF4syPgMq8Kv2GGg9MDJI2j+cjGbUixn0xhZfGkxW
 N0RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JvuBm7KpIXmVjvwi2OsKGMdogxy/zdINv8FqDSEvNYM=;
 b=ebSuOyj52GVo6drbcHt+TJiJ1q5nea7KtHgXOa5E6QFTo41iazBxygaMCmiNQL/6u4
 awuIgHil6q6NZkWSB/9ljiw1nKUrAPZg5FAoSTt4P0jXohXMJpSj6Djtvi0GArnOKxXD
 BKXQy9urZTxXYlyJ3vbzZOwif3rCCWfeEBgBD4IkEhKGSPvO9/4TdkGwhGuxaryKRHl/
 EHihoaV6+7rzEDy1RqtaQLbZCnhMHWFiWSfELiw+AaMEvw5qP/vRW5IzJPgYgyXAZb62
 FKOH8fdiKzqV0B+FsdS+dGiFJpJGXxJqjDIDWx9AxTwU8sdKOUb/pbiIOAkkoL7Wge0L
 KHSA==
X-Gm-Message-State: AOAM530isfYoGPe4F+upwKM/Xy+bFafWKOFHp/j1hx6Ijd+JihE09ZrL
 LeSX0NxRP0KcpohqprynwC5L1Sji
X-Google-Smtp-Source: ABdhPJwxA+jqhLj0tvDnM1PGh5FH/QBEyrCkQJOeG+4sHZp0/bgWOd+eUHWE5+4mhkN/TVbBG84CAQ==
X-Received: by 2002:a5d:4346:: with SMTP id u6mr31620387wrr.304.1622018882087; 
 Wed, 26 May 2021 01:48:02 -0700 (PDT)
Received: from dell.default ([91.110.221.223])
 by smtp.gmail.com with ESMTPSA id l18sm18911918wrt.97.2021.05.26.01.48.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 01:48:01 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Wed, 26 May 2021 09:47:22 +0100
Message-Id: <20210526084726.552052-31-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526084726.552052-1-lee.jones@linaro.org>
References: <20210526084726.552052-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 30/34] drm/vgem/vgem_drv: Standard comment
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
