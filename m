Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8A7E85F0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Oct 2019 11:43:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 465FB6195D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Oct 2019 10:43:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 37C9D61963; Tue, 29 Oct 2019 10:43:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50B416196C;
	Tue, 29 Oct 2019 10:41:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ABDF261957
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 10:40:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A05C261963; Tue, 29 Oct 2019 10:40:57 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 93DB761957
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 10:40:54 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id q130so1828247wme.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 03:40:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jIrSwkySu99IZFShnoHMSIHDhs88OfSpxWdYrboWutY=;
 b=D2ZctyYXDO6avDm8FVfYtmkOCplBuJ+wOw637fbTx9SVQLqqco36RoptXpqbYWjp+k
 MEUJTppdzM3f8cPxaxlB6OKvBc79ZqKmlksA7yFNM0klVpmtQHsFWiFjF8HfLCB6MzTf
 rkmNocmcvyFwc//L7stLuVtW6IhlTUQFTTCQpQ8qvR5g+iViDlwz7WiKlX003/wgdeUV
 6TeI7z9ceN1NoclNSbbxNWIGvGmuC6TfaMkd0ZalQ0KcPjwf+Rmvn25gwE2jCz2No66O
 jPBYRVvpCK+yUOKe26u5KQUQzHfXpmPah10jrb2IWCC9XJV4dB3DmNQHewZQc5tD5Fo+
 eSCg==
X-Gm-Message-State: APjAAAW3DRlFyTb33zbdHr+FX6EMwtcMV+Ax7W5sZvlWgaua+HkKS4xG
 +hZ0+2L83tiqCzT5uf5VTag=
X-Google-Smtp-Source: APXvYqyqMO+qdPSkT30UFlfsb1zNCp0MH2Q3Lb3eFI/S2EA4a60/VXHXUuIFLdM1mRmiOcbSfvB7pA==
X-Received: by 2002:a7b:c444:: with SMTP id l4mr3330229wmi.21.1572345653806;
 Tue, 29 Oct 2019 03:40:53 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:c5d9:7998:9ca6:452])
 by smtp.gmail.com with ESMTPSA id v10sm2910210wmg.48.2019.10.29.03.40.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 03:40:53 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 11:40:46 +0100
Message-Id: <20191029104049.9011-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029104049.9011-1-christian.koenig@amd.com>
References: <20191029104049.9011-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/5] drm/ttm: remove the backing store if no
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
cy9ncHUvZHJtL3R0bS90dG1fYm8uYwppbmRleCBkNTJmYzE2MjY2Y2UuLjJkMTQ4ODI3MWQ2MyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9iby5jCkBAIC0xMjE5LDYgKzEyMTksMTggQEAgaW50IHR0bV9ib192YWxp
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
