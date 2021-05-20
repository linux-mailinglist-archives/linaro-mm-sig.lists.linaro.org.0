Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5D63919DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:19:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9E6861394
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:19:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 53A026123A; Wed, 26 May 2021 14:19:49 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8C93613E6;
	Wed, 26 May 2021 14:19:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 617AA605C8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F02176117B; Thu, 20 May 2021 12:03:20 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 6676461178
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:03:18 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id q5so17384172wrs.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 05:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d0nOIc1mzt8v7aTq8P9bTAYTfjAP1Kn9fRgBobUfORA=;
 b=ZCHECdMPQ0Pe1h9k9kzuKcqsiVmGcY0RaFk2/Uo7Jd0Oj/FbXRq9cfiLMqHYu5Q50V
 2BaorOWqD5ShyQ6E1DvzyyLfwG8BNwM8i6uSs9LOugICo7o0YWFtBpTjqeQZa5XQ9TJg
 s2yIsIi8JTdiv2VrJ6ErOC84MKKa0+xNvHdb4TyvnPjXdWnI4FtdJBjjjgHgHUtdDCA0
 gAo8ZoMYgSzZ6maczQ+QyihatSrk4GMM41jL+9tFzauV7/+8UM1bSbL7JY468aL2/sYh
 zOYI6p54xXxQREjKWvvbZpMm5wZR7N7BbkFHzHN+Hp1v1P0Nu1bSb2FRKojIsZ1dmJZe
 Ae3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d0nOIc1mzt8v7aTq8P9bTAYTfjAP1Kn9fRgBobUfORA=;
 b=GMu9d7bwNQ7gqGeGTHwwOqi0FnJQqc4tequhulBxdxJLZ99a6d06scyHqCpsTJReQS
 MzwIOIfluIsbVAqmL8ZCgV7zcOzEY09sNFSLViy8qZYM2NcuG/7jpQJ5oK/o0lTwtc8J
 enxunqT4nBZDHf/itRQyCtpWxxhuCcQ0n17Jn41qsdam7UVWRWCk28pS2fq45r8siZaJ
 0HvyHuTcFVk/sdLtu0C/WTohZREppWlLE34q8NkJ/2WJLNU+Wx7pp3b3ItbgKgvH88XI
 puFBbC+i560FJs2dMwWISkql4/l/HdY2ayZSjJIJF7ZhHuQ9hzOkEAVenfkbkl7onFAg
 9Yhw==
X-Gm-Message-State: AOAM532t7Weq7YjMT5gxJPsTB975TJJUvPWgEQEartQB844YgO6N+BkK
 ThVg8fdtPyi7tIw/9c/txturHYhB
X-Google-Smtp-Source: ABdhPJxogKt9bFNGrmh6EK/JtPm7PPL/+ZIKAX6rKP8QgZWPF6yidqkW2wwqG5YDIrjwdrD88Q4RGA==
X-Received: by 2002:a5d:6381:: with SMTP id p1mr3973571wru.19.1621512197569;
 Thu, 20 May 2021 05:03:17 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id j10sm2886332wrt.32.2021.05.20.05.03.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:03:17 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:02:35 +0100
Message-Id: <20210520120248.3464013-26-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120248.3464013-1-lee.jones@linaro.org>
References: <20210520120248.3464013-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: [Linaro-mm-sig] [PATCH 25/38] drm/msm/msm_gem: Demote kernel-doc
 abuses
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
Cc: freedreno@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6CgogZHJpdmVy
cy9ncHUvZHJtL21zbS9tc21fZ2VtLmM6MzY0OiB3YXJuaW5nOiBUaGlzIGNvbW1lbnQgc3RhcnRz
IHdpdGggJy8qKicsIGJ1dCBpc24ndCBhIGtlcm5lbC1kb2MgY29tbWVudC4gUmVmZXIgRG9jdW1l
bnRhdGlvbi9kb2MtZ3VpZGUva2VybmVsLWRvYy5yc3QKIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X2dlbS5jOjc2Mzogd2FybmluZzogVGhpcyBjb21tZW50IHN0YXJ0cyB3aXRoICcvKionLCBidXQg
aXNuJ3QgYSBrZXJuZWwtZG9jIGNvbW1lbnQuIFJlZmVyIERvY3VtZW50YXRpb24vZG9jLWd1aWRl
L2tlcm5lbC1kb2MucnN0CgpDYzogUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPgpDYzog
U2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGlu
dXguaWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNjOiBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBsaW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwpD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogZnJlZWRyZW5vQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9u
ZXNAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyB8IDQgKyst
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2dlbS5jCmluZGV4IDU2ZGY4NmU1Zjc0MDAuLjE1NDM0ZGViMTkzMzQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2dlbS5jCkBAIC0zNzIsNyArMzcyLDcgQEAgc3RhdGljIHZvaWQgZGVsX3ZtYShzdHJ1
Y3QgbXNtX2dlbV92bWEgKnZtYSkKIAlrZnJlZSh2bWEpOwogfQogCi0vKioKKy8qCiAgKiBJZiBj
bG9zZSBpcyB0cnVlLCB0aGlzIGFsc28gY2xvc2VzIHRoZSBWTUEgKHJlbGVhc2luZyB0aGUgYWxs
b2NhdGVkCiAgKiBpb3ZhIHJhbmdlKSBpbiBhZGRpdGlvbiB0byByZW1vdmluZyB0aGUgaW9tbXUg
bWFwcGluZy4gIEluIHRoZSBldmljdGlvbgogICogY2FzZSAoIWNsb3NlKSwgd2Uga2VlcCB0aGUg
aW92YSBhbGxvY2F0ZWQsIGJ1dCBvbmx5IHJlbW92ZSB0aGUgaW9tbXUKQEAgLTc3Myw3ICs3NzMs
NyBAQCB2b2lkIG1zbV9nZW1fcHVyZ2Uoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJCQkw
LCAobG9mZl90KS0xKTsKIH0KIAotLyoqCisvKgogICogVW5waW4gdGhlIGJhY2tpbmcgcGFnZXMg
YW5kIG1ha2UgdGhlbSBhdmFpbGFibGUgdG8gYmUgc3dhcHBlZCBvdXQuCiAgKi8KIHZvaWQgbXNt
X2dlbV9ldmljdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKLS0gCjIuMzEuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
