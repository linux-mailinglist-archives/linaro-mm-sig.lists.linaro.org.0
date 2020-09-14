Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 62504268C3A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 15:31:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C2C66186A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 13:31:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 71000665F3; Mon, 14 Sep 2020 13:31:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1295366604;
	Mon, 14 Sep 2020 13:29:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0401B6179D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 13:29:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E6EA5617F1; Mon, 14 Sep 2020 13:29:33 +0000 (UTC)
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by lists.linaro.org (Postfix) with ESMTPS id 7B4D1617D8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 13:29:32 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id l17so17571975edq.12
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 06:29:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2sgKFqAzyYTWFS7DpgNkPf7xuqkExWpe0vtA6hya4p8=;
 b=gp8Sq85UccR6xEgDzEu5V1fAyuqzncH9XtvaItFFoYdBIoHykvR0gRwf1xZaSP+jkr
 qMVTvtruZFO9YPWCVBMsHVDxmgkE53Sg2o/CKE5oa4YSsWBdFtxMmhQa4FvZEv/wbY8A
 KY2Sp7RTWcqq8bsJMoMX6MWdPCyHaJRbCHX2gpPy0Y22qcwyiG9de2+XyXXo0ePjx7cc
 QNTh13wZTyxTmUPHdF45XY/2pZ2PPYxQykSs29PF6Htm7QwhSRJb9Ynjx3CsOGeG9goX
 g4EsOf0M/JQ4Phocnb6BIQIZwHj2IckjgSOWx9EtYZ+9z4zdT3dipsDOkt/ze71nc98x
 kokQ==
X-Gm-Message-State: AOAM531HZgqtCsrKIi58jIxkR6ylxQcZ1rvlVhmhJpiVxFoCnKowNZtT
 +2etomOlp5om/GdAfPugIU4Oxt/KuzQ=
X-Google-Smtp-Source: ABdhPJwqz+YzShnzPAVkh+LgWPDH996EZ9R5Asg2qCZETs+L6ijZw4dfeniXkQwebJgtgDxC1+lltA==
X-Received: by 2002:aa7:cad3:: with SMTP id l19mr16523629edt.352.1600090171724; 
 Mon, 14 Sep 2020 06:29:31 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:6179:d701:8021:da3d])
 by smtp.gmail.com with ESMTPSA id d6sm9575625edm.31.2020.09.14.06.29.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 06:29:30 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: akpm@linux-foundation.org
Date: Mon, 14 Sep 2020 15:29:20 +0200
Message-Id: <20200914132920.59183-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200914132920.59183-1-christian.koenig@amd.com>
References: <20200914132920.59183-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 2/2] mm: introduce vma_set_file function
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

QWRkIHRoZSBuZXcgdm1hX3NldF9maWxlKCkgZnVuY3Rpb24gdG8gYWxsb3cgY2hhbmdpbmcKdm1h
LT52bV9maWxlIHdpdGggdGhlIG5lY2Vzc2FyeSByZWZjb3VudCBkYW5jZS4KClNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTYgKysrKystLS0tLS0tLS0tLQogaW5jbHVkZS9saW51
eC9tbS5oICAgICAgICB8ICAyICsrCiBtbS9tbWFwLmMgICAgICAgICAgICAgICAgIHwgMTYgKysr
KysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAxMSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYwppbmRleCAxNjk5YThlMzA5ZWYuLjY3MmYzNTI1YmE3NCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jCkBAIC0xMTYzLDIwICsxMTYzLDE0IEBAIGludCBkbWFfYnVmX21tYXAoc3RydWN0
IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCiAJCXJldHVybiAt
RUlOVkFMOwogCiAJLyogcmVhZGp1c3QgdGhlIHZtYSAqLwotCWdldF9maWxlKGRtYWJ1Zi0+Zmls
ZSk7Ci0Jb2xkZmlsZSA9IHZtYS0+dm1fZmlsZTsKLQl2bWEtPnZtX2ZpbGUgPSBkbWFidWYtPmZp
bGU7CisJb2xkZmlsZSA9IHZtYV9zZXRfZmlsZSh2bWEsIGRtYWJ1Zi0+ZmlsZSk7CiAJdm1hLT52
bV9wZ29mZiA9IHBnb2ZmOwogCiAJcmV0ID0gZG1hYnVmLT5vcHMtPm1tYXAoZG1hYnVmLCB2bWEp
OwotCWlmIChyZXQpIHsKLQkJLyogcmVzdG9yZSBvbGQgcGFyYW1ldGVycyBvbiBmYWlsdXJlICov
Ci0JCXZtYS0+dm1fZmlsZSA9IG9sZGZpbGU7Ci0JCWZwdXQoZG1hYnVmLT5maWxlKTsKLQl9IGVs
c2UgewotCQlpZiAob2xkZmlsZSkKLQkJCWZwdXQob2xkZmlsZSk7Ci0JfQorCS8qIHJlc3RvcmUg
b2xkIHBhcmFtZXRlcnMgb24gZmFpbHVyZSAqLworCWlmIChyZXQpCisJCXZtYV9zZXRfZmlsZSh2
bWEsIG9sZGZpbGUpOworCiAJcmV0dXJuIHJldDsKIAogfQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9tbS5oIGIvaW5jbHVkZS9saW51eC9tbS5oCmluZGV4IDE5ODNlMDhmNTkwNi4uMzk4YTZm
ZGFhZDFlIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L21tLmgKKysrIGIvaW5jbHVkZS9saW51
eC9tbS5oCkBAIC0yNjg4LDYgKzI2ODgsOCBAQCBzdGF0aWMgaW5saW5lIHZvaWQgdm1hX3NldF9w
YWdlX3Byb3Qoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCiB9CiAjZW5kaWYKIAorc3RydWN0
IGZpbGUgKnZtYV9zZXRfZmlsZShzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwgc3RydWN0IGZp
bGUgKmZpbGUpOworCiAjaWZkZWYgQ09ORklHX05VTUFfQkFMQU5DSU5HCiB1bnNpZ25lZCBsb25n
IGNoYW5nZV9wcm90X251bWEoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCiAJCQl1bnNpZ25l
ZCBsb25nIHN0YXJ0LCB1bnNpZ25lZCBsb25nIGVuZCk7CmRpZmYgLS1naXQgYS9tbS9tbWFwLmMg
Yi9tbS9tbWFwLmMKaW5kZXggNDAyNDhkODRhZDVmLi5kM2MzYzUxMGY2NDMgMTAwNjQ0Ci0tLSBh
L21tL21tYXAuYworKysgYi9tbS9tbWFwLmMKQEAgLTEzNiw2ICsxMzYsMjIgQEAgdm9pZCB2bWFf
c2V0X3BhZ2VfcHJvdChzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKIAlXUklURV9PTkNFKHZt
YS0+dm1fcGFnZV9wcm90LCB2bV9wYWdlX3Byb3QpOwogfQogCisvKgorICogQ2hhbmdlIGJhY2tp
bmcgZmlsZSwgb25seSB2YWxpZCB0byB1c2UgZHVyaW5nIGluaXRpYWwgVk1BIHNldHVwLgorICov
CitzdHJ1Y3QgZmlsZSAqdm1hX3NldF9maWxlKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLCBz
dHJ1Y3QgZmlsZSAqZmlsZSkKK3sKKwlpZiAoZmlsZSkKKwkgICAgICAgIGdldF9maWxlKGZpbGUp
OworCisJc3dhcCh2bWEtPnZtX2ZpbGUsIGZpbGUpOworCisJaWYgKGZpbGUpCisJCWZwdXQoZmls
ZSk7CisKKwlyZXR1cm4gZmlsZTsKK30KKwogLyoKICAqIFJlcXVpcmVzIGlub2RlLT5pX21hcHBp
bmctPmlfbW1hcF9yd3NlbQogICovCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
