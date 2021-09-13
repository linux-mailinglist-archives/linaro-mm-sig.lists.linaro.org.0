Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CBA408C91
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:19:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D0BD663258
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:19:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 22F6B6338E; Mon, 13 Sep 2021 13:18:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C42969D71;
	Mon, 13 Sep 2021 13:18:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 10BB06362E
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:18:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E522C62164; Mon, 13 Sep 2021 13:17:43 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id 50F4B6325F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:39 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id q26so14650312wrc.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cqrPgfWJBnrlrJStbHT4p1XHhorqFS0NFap8w3SO71w=;
 b=dVp9YQTGSPQdK6XKvV0Dou4jqoLAYTi0I3Dt7ZW6manhGGTT0tHQyzVs19XZA6acv/
 W6T1Jkz2TC1YngzprtNG+UWiiozq8pALeSGRfsqvgk1rWOf4cQXdaJmu5omeDBtS2WOH
 vjBSbKel/plaBmCnJn+MGaC+9wHGEw39H2EEFlZYbk/QYJtB2iMzbP+xgDsACUyYMm+S
 klRFfyLN9G4QIN8AJnNpuB4rTJJ6I8lWXS1G8giLTUPc3N1axuOZDlHLB2WuHl7P3ov5
 VjLCxI5MGwU+AeC+tnYFKpGVxCtkgyOvfDTPWBP60ZsueKCoAlKjQUlxz3LCk62d675a
 Uwiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cqrPgfWJBnrlrJStbHT4p1XHhorqFS0NFap8w3SO71w=;
 b=f87Dn/cKyUqwz25qZYXjNWRxzWESnElYPf4D57Wjz0jjgBKnA9xAroVpdZ0eKzPeYf
 fgmgaGkx1UUpDSWA5Z4EscDoOt11bboSEgTuhUxLtgDS93VEjd/nlgbpPATKtVsRnc8q
 70uU0ZT7BqEezC1cxtQgdTYkNZ78MijsohSXVjYn4SCe0ChYMrt3M03Oh4QEPuB5O7na
 xUXsDndVnMiGj7NzkW7BY928lXnKTrf7fj36u/fedDqW1IJDTStQMvHOpGVEbaeebKwq
 8COSHSpxIXDEdo+aluHliyj2tRY+ZQHdvyMNdN0mmccruPMwdvNdXTz5k7uaV2xoRfZL
 TQIw==
X-Gm-Message-State: AOAM533R5CsKZs4qHmAl1anXNHCctsinsFHddTRx6pHUv7SabSXxeoA+
 WNnalieN6cLm+jD68CxJiXNrzz0txu67PUz+
X-Google-Smtp-Source: ABdhPJzR6Mgxb45Lu2WU1DaeNVT4R7szGLx4B2hlz5wyz1oQoklArO9DPkMc6QvaZrE8NwiXbnSE/Q==
X-Received: by 2002:adf:9e0b:: with SMTP id u11mr12590484wre.85.1631539058200; 
 Mon, 13 Sep 2021 06:17:38 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:37 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:17:01 +0200
Message-Id: <20210913131707.45639-21-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 20/26] drm: use new iterator in
 drm_gem_fence_array_add_implicit
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9n
ZW0uYyB8IDMwICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKaW5kZXggMDljODIw
MDQ1ODU5Li42ZTNiODQ5MWJlNjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2Vt
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwpAQCAtMTM0MCwzMSArMTM0MCwxNyBA
QCBpbnQgZHJtX2dlbV9mZW5jZV9hcnJheV9hZGRfaW1wbGljaXQoc3RydWN0IHhhcnJheSAqZmVu
Y2VfYXJyYXksCiAJCQkJICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKIAkJCQkgICAg
IGJvb2wgd3JpdGUpCiB7Ci0JaW50IHJldDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOwot
CXVuc2lnbmVkIGludCBpLCBmZW5jZV9jb3VudDsKLQotCWlmICghd3JpdGUpIHsKLQkJc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UgPQotCQkJZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5y
ZXN2KTsKLQotCQlyZXR1cm4gZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQoZmVuY2VfYXJyYXksIGZl
bmNlKTsKLQl9Ci0KLQlyZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKG9iai0+cmVzdiwgTlVMTCwK
LQkJCQkJCSZmZW5jZV9jb3VudCwgJmZlbmNlcyk7Ci0JaWYgKHJldCB8fCAhZmVuY2VfY291bnQp
Ci0JCXJldHVybiByZXQ7CisJc3RydWN0IGRtYV9yZXN2X2N1cnNvciBjdXJzb3I7CisJc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2U7CisJaW50IHJldCA9IDA7CiAKLQlmb3IgKGkgPSAwOyBpIDwgZmVu
Y2VfY291bnQ7IGkrKykgewotCQlyZXQgPSBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZChmZW5jZV9h
cnJheSwgZmVuY2VzW2ldKTsKLQkJaWYgKHJldCkKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91
bmxvY2tlZChvYmotPnJlc3YsICZjdXJzb3IsIHdyaXRlLCBmZW5jZSkgeworCQlyZXQgPSBkcm1f
Z2VtX2ZlbmNlX2FycmF5X2FkZChmZW5jZV9hcnJheSwgZmVuY2UpOworCQlpZiAocmV0KSB7CisJ
CQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKIAkJCWJyZWFrOworCQl9CiAJfQotCi0JZm9yICg7IGkg
PCBmZW5jZV9jb3VudDsgaSsrKQotCQlkbWFfZmVuY2VfcHV0KGZlbmNlc1tpXSk7Ci0Ja2ZyZWUo
ZmVuY2VzKTsKIAlyZXR1cm4gcmV0OwogfQogRVhQT1JUX1NZTUJPTChkcm1fZ2VtX2ZlbmNlX2Fy
cmF5X2FkZF9pbXBsaWNpdCk7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
