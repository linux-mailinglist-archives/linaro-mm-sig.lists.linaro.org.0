Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB9945A548
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:21:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB45E62C93
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:21:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BA34562D0A; Tue, 23 Nov 2021 14:21:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB99660AB6;
	Tue, 23 Nov 2021 14:21:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ED4F762168
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B829C62072; Tue, 23 Nov 2021 14:21:21 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 9EF8C62072
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:19 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id u18so39283951wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7hlTa22QWarOC/D/GwKDXYcY+ynnKGNkNozyiGKICA8=;
 b=FCdGllJcVHqCf8Mmrtx2o7c65xOYOBgWAvUxQotbylOv8rRvg/Bq+IgN1z+q3ft3PG
 6M53Gq3PXfQiwwptvIh7434kf2II0sG1H/89bI2FFMyTEBuHwBtoMnhc3MzehUMsPJyt
 iez5pmeOKWR8S95xi4ThBz9xsuoLgfOSjHJmbbaTlV84X0YDkTjIz08b6sZlOhBymIAS
 kB24R7Ap1E+ADonJbwkmN7X7hUAAXUUNqGw9yEQ4cUr4XqamE5tBXVAlfPfZ9kjtdKkp
 pCf9WvPHz3qOgaa66apwZF2VTyjjoVrO1h25QN8PKOUrXgjWo76nWwIi1JzqYPhiWR7s
 5QqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7hlTa22QWarOC/D/GwKDXYcY+ynnKGNkNozyiGKICA8=;
 b=wMHFoSenl/MDccI2bMbe9LeK3M4iI2NjyU0/dFmc/3T7bBfIPzPZ23yF+fbVd3IK53
 XL8kvNCtkrHnWllOzZ3aEkUhfCsSIqJlyEAxLcC48wg1hOkO9qJAxafJBbYf0oMfWUsS
 c8bCcWBvXngllF0ksaUFGer4nI2tVacWjnp23/g76xHyfPMNUjhWxQoGogB/lgfGyykF
 SNDK9palz7S1nC5HJDMLnXyzuOK2z0FoYk8Bu9ZxxLg4FcYuNArDP0X+pf1VAlU6yKsr
 fpYhJl0HExxkgureh3G64n8+Bz47qPAKoppn7DTJBn+IDCyToYvu+qVuhhGnvqlhxT3/
 0NDQ==
X-Gm-Message-State: AOAM531mBFzARnOlquMH9955f13JnlrXl+ZVOI5w8kDoNIxQWiN7LwY4
 rs5g9FcWucggSQD10CcxDvk=
X-Google-Smtp-Source: ABdhPJwCq/sc20/U9XtjBTriweP61eqo5pPpAjSWR3OVyPxWa7Xtu5CDeOGg3nJ6y0Zp+4UlErbNFg==
X-Received: by 2002:a5d:47a1:: with SMTP id 1mr7407992wrb.436.1637677278619;
 Tue, 23 Nov 2021 06:21:18 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:18 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:46 +0100
Message-Id: <20211123142111.3885-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 01/26] drm/amdgpu: partially revert "svm bo
 enable_signal call condition"
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

UGFydGlhbGx5IHJldmVydCBjb21taXQgNWYzMTljNWMyMWI1OTA5YWJiNDNkOGFhZGM5MmE4YWE1
NDllZTQ0My4KCkZpcnN0IG9mIGFsbCB0aGlzIGlzIGlsbGVnYWwgdXNlIG9mIFJDVSB0byBjYWxs
IGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKCkKc2luY2Ugd2UgZG9uJ3QgaG9sZCBhIHJl
ZmVyZW5jZSB0byB0aGUgZmVuY2UgaW4gcXVlc3Rpb24gYW5kIGNhbiBjcmFzaCBiYWRseS4KClRo
ZW4gdGhlIGNvZGUgZG9lc24ndCBzZWVtIHRvIGhhdmUgdGhlIGludGVuZGVkIGVmZmVjdCBzaW5j
ZSBvbmx5IHRoZQpleGNsdXNpdmUgZmVuY2UgaXMgaGFuZGxlZCwgYnV0IHRoZSBLRkQgZmVuY2Vz
IGFyZSBhbHdheXMgYWRkZWQgYXMgc2hhcmVkIGZlbmNlLgoKT25seSBrZWVwIHRoZSBoYW5kbGlu
ZyB0byB0aHJvdyBhd2F5IHRoZSBjb250ZW50IG9mIFNWTSBCT3MuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIHwgOSAtLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0u
YwppbmRleCBlYWI0MzgwZjI4ZTUuLmMxNTY4N2NlNjdjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uYwpAQCAtMTE2LDE3ICsxMTYsOCBAQCBzdGF0aWMgdm9pZCBhbWRn
cHVfZXZpY3RfZmxhZ3Moc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKIAogCWFibyA9IHR0
bV90b19hbWRncHVfYm8oYm8pOwogCWlmIChhYm8tPmZsYWdzICYgQU1ER1BVX0FNREtGRF9DUkVB
VEVfU1ZNX0JPKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCQlzdHJ1Y3QgZG1hX3Jl
c3YgKnJlc3YgPSAmYm8tPmJhc2UuX3Jlc3Y7Ci0KLQkJcmN1X3JlYWRfbG9jaygpOwotCQlmZW5j
ZSA9IHJjdV9kZXJlZmVyZW5jZShyZXN2LT5mZW5jZV9leGNsKTsKLQkJaWYgKGZlbmNlICYmICFm
ZW5jZS0+b3BzLT5zaWduYWxlZCkKLQkJCWRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKGZl
bmNlKTsKLQogCQlwbGFjZW1lbnQtPm51bV9wbGFjZW1lbnQgPSAwOwogCQlwbGFjZW1lbnQtPm51
bV9idXN5X3BsYWNlbWVudCA9IDA7Ci0JCXJjdV9yZWFkX3VubG9jaygpOwogCQlyZXR1cm47CiAJ
fQogCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
