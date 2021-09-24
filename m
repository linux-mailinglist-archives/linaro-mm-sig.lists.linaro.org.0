Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFF04177D2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:32:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FE7762164
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:32:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2572A61ED8; Fri, 24 Sep 2021 15:32:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54AB56197F;
	Fri, 24 Sep 2021 15:32:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D5E0962435
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3515D61ED8; Fri, 24 Sep 2021 15:31:31 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 0A91E62D35
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:25 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id t18so28759772wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RSipxlf8Rt1aqHkUOElk7qKJcjfTHCxexIhn6lnwGw0=;
 b=p+wRc1sNylAta5gGLWOUxoq4SRD+JVK/ZYiTsuz4StmBHX2gqnBSyF0cIZt0XSm5rx
 DBA/zVuCE4eV/hEfaMIng0NhgwNc4Ipch7MUp1rAgBi9kDMbxrl1d4Ovl1qGgolW5N7J
 kZTzQlAbBeQYTBgR9BinnpIF0H8Vh3b2w9LMsD2UVVT6IeUMsTMbx4B3z3SuWHl3v5R6
 xE9bU93IMBzFpUZQhMb8rYI8QyFH0rf/njQcRp63LD5uS5EvS9vV6HeDKg8ClnGGvSuw
 pod3BMBnO2iZeurdTVQuoUDWyk7lhEFMzUXBnoQAPaRFhzINiCJtW6eeBKE+YnAjr9i0
 BIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RSipxlf8Rt1aqHkUOElk7qKJcjfTHCxexIhn6lnwGw0=;
 b=Bbg4RcCcI3hO+MzaJ1RNA79cjemzg8fVuDmwha88SBsWwIO0Tnf5qZkMCM6Y61Lp+o
 u7ku/MmWrJ1OC/I5nzygQysuPWclcl3fAzUWoH7Yat9wsi6Q7nkOosg85pj7aH7VZuml
 GqWFn/qKj64hO5J3soFlIrtTRfoWDu2obHFlU1cDJMUhE3CfQAqVS/zDRj/MtpYBUKL7
 KPYH259gk1beHP2yX/0305kVFIwW3d/HpaVA8Nn1nL3tMYkUFfuMXBoe8r2eiSMRsCSd
 ocZkuTMVoEut903IAwNRLBw1JZYsPuxThObE/I+2s49eUVQWNn3/mfL0eUyLpFYmzK2H
 /qMw==
X-Gm-Message-State: AOAM533Y63AeA+BmZn9MWzB1AKC62l4hI5EW/ETWQUQIlSke7ge24k7a
 vFTO2+pH+K7mUOSmCQsfhkACBwxxQ6c=
X-Google-Smtp-Source: ABdhPJyIPRl3nUImaPEHX0dkGNVZKX1295/miUAmR2Ra/obAIqq4uDr+3k9Cv1zNDrgVO/uuS5OSVA==
X-Received: by 2002:a1c:22c3:: with SMTP id i186mr2743462wmi.145.1632497484999; 
 Fri, 24 Sep 2021 08:31:24 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:24 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:30:56 +0200
Message-Id: <20210924153113.2159-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/27] drm/amdgpu: use the new iterator in
 amdgpu_sync_resv
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3N5bmMuYyB8IDQ0ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jCmluZGV4IDg2MmViM2MxYzRjNS4uZjdkODQ4Nzc5
OWIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMKQEAgLTI1Miw0
MSArMjUyLDI1IEBAIGludCBhbWRncHVfc3luY19yZXN2KHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LCBzdHJ1Y3QgYW1kZ3B1X3N5bmMgKnN5bmMsCiAJCSAgICAgc3RydWN0IGRtYV9yZXN2ICpy
ZXN2LCBlbnVtIGFtZGdwdV9zeW5jX21vZGUgbW9kZSwKIAkJICAgICB2b2lkICpvd25lcikKIHsK
LQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZmxpc3Q7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vy
c29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmY7Ci0JdW5zaWduZWQgaTsKLQlpbnQgciA9IDA7CisJ
aW50IHI7CiAKIAlpZiAocmVzdiA9PSBOVUxMKQogCQlyZXR1cm4gLUVJTlZBTDsKIAotCS8qIGFs
d2F5cyBzeW5jIHRvIHRoZSBleGNsdXNpdmUgZmVuY2UgKi8KLQlmID0gZG1hX3Jlc3ZfZXhjbF9m
ZW5jZShyZXN2KTsKLQlkbWFfZmVuY2VfY2hhaW5fZm9yX2VhY2goZiwgZikgewotCQlzdHJ1Y3Qg
ZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9IHRvX2RtYV9mZW5jZV9jaGFpbihmKTsKLQotCQlpZiAo
YW1kZ3B1X3N5bmNfdGVzdF9mZW5jZShhZGV2LCBtb2RlLCBvd25lciwgY2hhaW4gPwotCQkJCQkg
ICBjaGFpbi0+ZmVuY2UgOiBmKSkgewotCQkJciA9IGFtZGdwdV9zeW5jX2ZlbmNlKHN5bmMsIGYp
OwotCQkJZG1hX2ZlbmNlX3B1dChmKTsKLQkJCWlmIChyKQotCQkJCXJldHVybiByOwotCQkJYnJl
YWs7Ci0JCX0KLQl9Ci0KLQlmbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHJlc3YpOwotCWlm
ICghZmxpc3QpCi0JCXJldHVybiAwOwotCi0JZm9yIChpID0gMDsgaSA8IGZsaXN0LT5zaGFyZWRf
Y291bnQ7ICsraSkgewotCQlmID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmbGlzdC0+c2hh
cmVkW2ldLAotCQkJCQkgICAgICBkbWFfcmVzdl9oZWxkKHJlc3YpKTsKLQotCQlpZiAoYW1kZ3B1
X3N5bmNfdGVzdF9mZW5jZShhZGV2LCBtb2RlLCBvd25lciwgZikpIHsKLQkJCXIgPSBhbWRncHVf
c3luY19mZW5jZShzeW5jLCBmKTsKLQkJCWlmIChyKQotCQkJCXJldHVybiByOworCWRtYV9yZXN2
X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIHJlc3YsIHRydWUsIGYpIHsKKwkJZG1hX2ZlbmNlX2No
YWluX2Zvcl9lYWNoKGYsIGYpIHsKKwkJCXN0cnVjdCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluID0g
dG9fZG1hX2ZlbmNlX2NoYWluKGYpOworCisJCQlpZiAoYW1kZ3B1X3N5bmNfdGVzdF9mZW5jZShh
ZGV2LCBtb2RlLCBvd25lciwgY2hhaW4gPworCQkJCQkJICAgY2hhaW4tPmZlbmNlIDogZikpIHsK
KwkJCQlyID0gYW1kZ3B1X3N5bmNfZmVuY2Uoc3luYywgZik7CisJCQkJZG1hX2ZlbmNlX3B1dChm
KTsKKwkJCQlpZiAocikKKwkJCQkJcmV0dXJuIHI7CisJCQkJYnJlYWs7CisJCQl9CiAJCX0KIAl9
CiAJcmV0dXJuIDA7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
