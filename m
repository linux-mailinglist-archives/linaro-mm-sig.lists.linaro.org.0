Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 001B81644CE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Feb 2020 13:59:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2EE95619A8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Feb 2020 12:59:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2354A619D9; Wed, 19 Feb 2020 12:59:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D1B961945;
	Wed, 19 Feb 2020 12:59:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1E042618D2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 12:59:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ED9236197A; Wed, 19 Feb 2020 12:59:14 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id A0591618D2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 12:59:13 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id y11so415132wrt.6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 04:59:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b9sG/TVUs3caIZcWR+Lmy0efYoTEJOYELaU+bfIHgUY=;
 b=LBWEYPhaG6U39aGBqMJxfO66tQHdpi56qMdEIJ8igPhz9mh5WJQIpvcm5A9MDagk1D
 Ki7+s0C8T30v8rxYdlMguimusSdqGMVFwOaz7ZjWpblY2ucMnu/OH0axBX5pCFUr9kSH
 73eKQYf828oEEyvbHauA3KIWQeklLxG8J/S1VEawMPt3wD07aVA6Ib60LRmZUobU8Gm3
 +WhNpO+J8LF8o/aSfxDpnl0Qnl90UDBg9HhgnSTRfj8S5NbbIjmk+gIJNeqIW6EmDtDK
 XSjpk/kNg8hupfehvH6Hu66oK08ZwFRBjDtqaNTynHpB5WYeEdHr7FZ3EDudb3nlDMyZ
 d2bQ==
X-Gm-Message-State: APjAAAW60smBYjx5GRwkIGWmrGpgUgLK/vKRPAhdmX1jVPCMVn/TOSec
 rqjW8SymXhOIFSElC1cCy3w=
X-Google-Smtp-Source: APXvYqwom957kiBmODyKGlAOBy2ygX5dnAzUraiYqWa6AE5CXwi1ie+woKdaH2fubFeTbqA1kvR3+A==
X-Received: by 2002:adf:de0b:: with SMTP id b11mr34937028wrm.89.1582117152687; 
 Wed, 19 Feb 2020 04:59:12 -0800 (PST)
Received: from abel.fritz.box ([2a02:908:1252:fb60:90ea:9d7:18a3:895e])
 by smtp.gmail.com with ESMTPSA id h2sm3079024wrt.45.2020.02.19.04.59.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 04:59:12 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Date: Wed, 19 Feb 2020 13:59:05 +0100
Message-Id: <20200219125910.89147-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219125910.89147-1-christian.koenig@amd.com>
References: <20200219125910.89147-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/7] drm/ttm: remove the backing store if no
	placement is given
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

UGlwZWxpbmUgcmVtb3ZhbCBvZiB0aGUgQk9zIGJhY2tpbmcgc3RvcmUgd2hlbiBubyBwbGFjZW1l
bnQgaXMgZ2l2ZW4KZHVyaW5nIHZhbGlkYXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3R0
bS90dG1fYm8uYyB8IDEyICsrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jIGIvZHJpdmVy
cy9ncHUvZHJtL3R0bS90dG1fYm8uYwppbmRleCAxNTFlZGZkOGRlNzcuLjZkMWU5MWJlOWM3OCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9iby5jCkBAIC0xMTk2LDYgKzExOTYsMTggQEAgaW50IHR0bV9ib192YWxp
ZGF0ZShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogCXVpbnQzMl90IG5ld19mbGFnczsK
IAogCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGJvLT5iYXNlLnJlc3YpOworCisJLyoKKwkgKiBSZW1v
dmUgdGhlIGJhY2tpbmcgc3RvcmUgaWYgbm8gcGxhY2VtZW50IGlzIGdpdmVuLgorCSAqLworCWlm
ICghcGxhY2VtZW50LT5udW1fcGxhY2VtZW50ICYmICFwbGFjZW1lbnQtPm51bV9idXN5X3BsYWNl
bWVudCkgeworCQlyZXQgPSB0dG1fYm9fcGlwZWxpbmVfZ3V0dGluZyhibyk7CisJCWlmIChyZXQp
CisJCQlyZXR1cm4gcmV0OworCisJCXJldHVybiB0dG1fdHRfY3JlYXRlKGJvLCBmYWxzZSk7CisJ
fQorCiAJLyoKIAkgKiBDaGVjayB3aGV0aGVyIHdlIG5lZWQgdG8gbW92ZSBidWZmZXIuCiAJICov
Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
