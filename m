Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 695353919D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:19:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3910961401
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:19:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D624C61394; Wed, 26 May 2021 14:19:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73F486145B;
	Wed, 26 May 2021 14:19:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 62DF2605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5DBDA61161; Thu, 20 May 2021 12:03:05 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 447B1605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:03 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id d11so17358682wrw.8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fcdvP1BzIl3x+PleFuz79GqrL71ya8Oj0cjWTPEe9qs=;
 b=S64+RsMhtnMW++KWmgbEqE74s+1Eun93Cetk185djJxdf9FR/w3NO0qeRSBTZAUFYU
 FB6nzj6Sxtn5klIAr4ywcIjV7hv3BgISoh2zt+tMge1UCEgmN1vWhrZoNVQeEy45T/Ql
 +0K2ZcIGbt24yqiLKYYl/cHvWnxeUjIKKWK5rvgnebNYyxCZ3Yy818gN69SCWXS7YJuO
 f+zvHzX9xgejdrJxFd8Fhs/Ct4LMGjtnM/i0KYu+XTmU+Uc09GxP0K+z5Ls8wHScKk3V
 7Jau3cb2J+9G22D/R9+h2iplsHPh+OlUNFAPPRAcC0rEi+tnIbZdVbSbjIr+xSmlbwTs
 SdHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fcdvP1BzIl3x+PleFuz79GqrL71ya8Oj0cjWTPEe9qs=;
 b=tsBbvfTNal22Qd09o5hw3TU5tTHiLJjiBsuVpxBWlpYrTBA1kE7Bi66i784475fdWN
 VmTTXXE/f0RUjOrFXpscsSpqGlMkgsjWwbv5r+UYTrP2bAZIu0r7LZg9A4z3pK6zmfMK
 JhTdyO1lu45YaZh0zRbaJvuz9/OEuCzIeW+E4nAMbGht4Umulq+4D6mMSu+4yht39aii
 VMwbm1HUBhzD0Iwfeq2pjF5oviucAq7ib2Ps/DNN+UD7F8EDwc7yqfUKcepkz2Y+0HM+
 gFWXJfqLr6E+TAU18w5Wc0qDw4dDTQ7fW0HQNc1jFQlCXK2Sh55xBNFAV4f75KWEu5SG
 Z/kg==
X-Gm-Message-State: AOAM532aV+LjzzonCDJ0lnaBb+BMptL/qIhalMIzQZp5BU8pfQf0lxeh
 GrjfOVruVJ9qSIO8543C1vWqEdJb
X-Google-Smtp-Source: ABdhPJznQ+PN/ydUmSuB50IaUzPB6eOj2r2H+nAw3Wmuu+wHu51V6mwHuNY30Mxg+Z5y6k3sluHD0g==
X-Received: by 2002:a05:6000:1001:: with SMTP id
 a1mr3828637wrx.59.1621512182229; 
 Thu, 20 May 2021 05:03:02 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:01 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:20 +0100
Message-Id: <20210520120248.3464013-11-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 10/38] drm/amd/amdgpu/amdgpu_ids: Correct
 some function name disparity
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
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2lkcy5jOjIwMDogd2FybmluZzogZXhwZWN0aW5n
IHByb3RvdHlwZSBmb3IgYW1kZ3B1X3ZtX2dyYWJfaWRsZSgpLiBQcm90b3R5cGUgd2FzIGZvciBh
bWRncHVfdm1pZF9ncmFiX2lkbGUoKSBpbnN0ZWFkCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfaWRzLmM6MjcyOiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvciBhbWRn
cHVfdm1fZ3JhYl9yZXNlcnZlZCgpLiBQcm90b3R5cGUgd2FzIGZvciBhbWRncHVfdm1pZF9ncmFi
X3Jlc2VydmVkKCkgaW5zdGVhZAogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2lk
cy5jOjMzNzogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBmb3IgYW1kZ3B1X3ZtX2dyYWJf
dXNlZCgpLiBQcm90b3R5cGUgd2FzIGZvciBhbWRncHVfdm1pZF9ncmFiX3VzZWQoKSBpbnN0ZWFk
CiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmM6NDEwOiB3YXJuaW5nOiBl
eHBlY3RpbmcgcHJvdG90eXBlIGZvciBhbWRncHVfdm1fZ3JhYl9pZCgpLiBQcm90b3R5cGUgd2Fz
IGZvciBhbWRncHVfdm1pZF9ncmFiKCkgaW5zdGVhZAoKQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFu
ZGVyLmRldWNoZXJAYW1kLmNvbT4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFu
aWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13
YWxAbGluYXJvLm9yZz4KQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpTaWduZWQtb2ZmLWJ5OiBMZWUg
Sm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9pZHMuYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2lkcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2lk
cy5jCmluZGV4IGI0OTcxZTkwYjk4Y2YuLmM3ZjNhYWUyM2M2MjUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfaWRzLmMKQEAgLTE4Myw3ICsxODMsNyBAQCBib29sIGFtZGdwdV92
bWlkX2hhZF9ncHVfcmVzZXQoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiB9CiAKIC8qKgot
ICogYW1kZ3B1X3ZtX2dyYWJfaWRsZSAtIGdyYWIgaWRsZSBWTUlECisgKiBhbWRncHVfdm1pZF9n
cmFiX2lkbGUgLSBncmFiIGlkbGUgVk1JRAogICoKICAqIEB2bTogdm0gdG8gYWxsb2NhdGUgaWQg
Zm9yCiAgKiBAcmluZzogcmluZyB3ZSB3YW50IHRvIHN1Ym1pdCBqb2IgdG8KQEAgLTI1Niw3ICsy
NTYsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV92bWlkX2dyYWJfaWRsZShzdHJ1Y3QgYW1kZ3B1X3Zt
ICp2bSwKIH0KIAogLyoqCi0gKiBhbWRncHVfdm1fZ3JhYl9yZXNlcnZlZCAtIHRyeSB0byBhc3Np
Z24gcmVzZXJ2ZWQgVk1JRAorICogYW1kZ3B1X3ZtaWRfZ3JhYl9yZXNlcnZlZCAtIHRyeSB0byBh
c3NpZ24gcmVzZXJ2ZWQgVk1JRAogICoKICAqIEB2bTogdm0gdG8gYWxsb2NhdGUgaWQgZm9yCiAg
KiBAcmluZzogcmluZyB3ZSB3YW50IHRvIHN1Ym1pdCBqb2IgdG8KQEAgLTMyNSw3ICszMjUsNyBA
QCBzdGF0aWMgaW50IGFtZGdwdV92bWlkX2dyYWJfcmVzZXJ2ZWQoc3RydWN0IGFtZGdwdV92bSAq
dm0sCiB9CiAKIC8qKgotICogYW1kZ3B1X3ZtX2dyYWJfdXNlZCAtIHRyeSB0byByZXVzZSBhIFZN
SUQKKyAqIGFtZGdwdV92bWlkX2dyYWJfdXNlZCAtIHRyeSB0byByZXVzZSBhIFZNSUQKICAqCiAg
KiBAdm06IHZtIHRvIGFsbG9jYXRlIGlkIGZvcgogICogQHJpbmc6IHJpbmcgd2Ugd2FudCB0byBz
dWJtaXQgam9iIHRvCkBAIC0zOTcsNyArMzk3LDcgQEAgc3RhdGljIGludCBhbWRncHVfdm1pZF9n
cmFiX3VzZWQoc3RydWN0IGFtZGdwdV92bSAqdm0sCiB9CiAKIC8qKgotICogYW1kZ3B1X3ZtX2dy
YWJfaWQgLSBhbGxvY2F0ZSB0aGUgbmV4dCBmcmVlIFZNSUQKKyAqIGFtZGdwdV92bWlkX2dyYWIg
LSBhbGxvY2F0ZSB0aGUgbmV4dCBmcmVlIFZNSUQKICAqCiAgKiBAdm06IHZtIHRvIGFsbG9jYXRl
IGlkIGZvcgogICogQHJpbmc6IHJpbmcgd2Ugd2FudCB0byBzdWJtaXQgam9iIHRvCi0tIAoyLjMx
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
