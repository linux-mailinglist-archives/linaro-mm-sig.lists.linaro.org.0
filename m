Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F0740D8D9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC79263223
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 977DB63413; Thu, 16 Sep 2021 11:32:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27BFB629CD;
	Thu, 16 Sep 2021 11:32:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7540D63514
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2D83E630F1; Thu, 16 Sep 2021 11:31:04 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 4AE8B666F0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:00 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id u18so7190382wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YnWvdXxqHgtmxN+angscxrScd7gs7Wadba51xLqnh8c=;
 b=ZbIjs3A0ol2lDS+YQJ63Dd6wEcgQGUklh2TgGcGARe6MZLf5E3BJL1Q1XNo7+gzHUw
 6G7qBU2xqjfJK6Y7IC+zG8J9Hla2MW/dphAfH+pfaiFf8qF/QNp9kQ2vvzmoIUAEnbm1
 B6kH4ea11pDHrKNScs0IN4e3UuYt9PR1vPJ1KlNCxugZMcaUF7Com2VhSQ/t169aCrHO
 JZzpqTRTQ8r9CorhtLTvInAE7OIW1ofe+ncZXHsDlhDeEAEKDDl8E3INeIVUdPQo0GqQ
 3QekC9peTt2XK++WLl98bZndQMKKaWIAAtJs/vspe/yWK6CKNZ4n4hQ6Iqs3BIRX1LWn
 3z8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YnWvdXxqHgtmxN+angscxrScd7gs7Wadba51xLqnh8c=;
 b=CwyC0Fgzg1PhQaFVwNigVxq1J80t0kaOkqZGirtfl58UTB5vKtuIvh2g/oX8ouC1Qs
 Hul+U4ByIh86yXz3QiOoTMQnzCEZPRhguo1I68Ac0iLECdFFi/WRMdQQ5KOSYU1vaWKb
 CGq9hzTA6e2Xebw6WfqMTT7Rj39LO4153feUVd2rCSBmw/+KPbSL+446QJwZ9gtkUgyc
 p9NN2OM3NSynKpoF8X3ZZUizwCj3geZB9Ocr8QhlRYwc1IgmUhePpcWWtOwqN5HOlvLv
 rzePk+DGvko0iHi/oofkfQ74j37298NH8CcBp2Mgqn6ZR/fOTzPpQ7bkplwbvVkBdq15
 P3BQ==
X-Gm-Message-State: AOAM532HP8IvsW7D00HuSz6t9Eo5nIHYxYTe8PlPSX3pA5sA9NRLn9XR
 p8iNlHcUc5G1yjH7aW/RqbwEWUjh+iNVkR1h
X-Google-Smtp-Source: ABdhPJw7Pw8Jd6budWz34hzE3bfaQgHcni7ZD1vc1X0EsnbfmW213d/RBb7GiMDjO5iklVt7hu2yvA==
X-Received: by 2002:adf:f1c4:: with SMTP id z4mr5509070wro.418.1631791859320; 
 Thu, 16 Sep 2021 04:30:59 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:59 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:31 +0200
Message-Id: <20210916113042.3631-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 15/26] drm/i915: use the new iterator in
 i915_request_await_object v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9j
aygpL3JjdV9yZWFkX3VubG9jaygpCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmMgfCA0MCArKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZXF1ZXN0LmMKaW5kZXggY2U0NDY3MTZkMDkyLi4yMjFkZjJlZGNmMDIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVxdWVzdC5jCkBAIC0xNTA5LDM5ICsxNTA5LDIxIEBAIGk5MTVfcmVxdWVz
dF9hd2FpdF9vYmplY3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqdG8sCiAJCQkgIHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkgIGJvb2wgd3JpdGUpCiB7Ci0Jc3RydWN0IGRtYV9m
ZW5jZSAqZXhjbDsKKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2U7CiAJaW50IHJldCA9IDA7CiAKLQlpZiAod3JpdGUpIHsKLQkJc3RydWN0IGRt
YV9mZW5jZSAqKnNoYXJlZDsKLQkJdW5zaWduZWQgaW50IGNvdW50LCBpOwotCi0JCXJldCA9IGRt
YV9yZXN2X2dldF9mZW5jZXMob2JqLT5iYXNlLnJlc3YsICZleGNsLCAmY291bnQsCi0JCQkJCSAg
JnNoYXJlZCk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCWZvciAoaSA9IDA7IGkg
PCBjb3VudDsgaSsrKSB7Ci0JCQlyZXQgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRv
LCBzaGFyZWRbaV0pOwotCQkJaWYgKHJldCkKLQkJCQlicmVhazsKLQotCQkJZG1hX2ZlbmNlX3B1
dChzaGFyZWRbaV0pOworCXJjdV9yZWFkX2xvY2soKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5j
ZV91bmxvY2tlZChvYmotPmJhc2UucmVzdiwgJmN1cnNvciwgd3JpdGUsIGZlbmNlKSB7CisJCXJj
dV9yZWFkX3VubG9jaygpOworCQlyZXQgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRv
LCBmZW5jZSk7CisJCXJjdV9yZWFkX2xvY2soKTsKKwkJaWYgKHJldCkgeworCQkJZG1hX2ZlbmNl
X3B1dChmZW5jZSk7CisJCQlicmVhazsKIAkJfQotCi0JCWZvciAoOyBpIDwgY291bnQ7IGkrKykK
LQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKLQkJa2ZyZWUoc2hhcmVkKTsKLQl9IGVsc2Ug
ewotCQlleGNsID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5iYXNlLnJlc3YpOwot
CX0KLQotCWlmIChleGNsKSB7Ci0JCWlmIChyZXQgPT0gMCkKLQkJCXJldCA9IGk5MTVfcmVxdWVz
dF9hd2FpdF9kbWFfZmVuY2UodG8sIGV4Y2wpOwotCi0JCWRtYV9mZW5jZV9wdXQoZXhjbCk7CiAJ
fQorCXJjdV9yZWFkX3VubG9jaygpOwogCiAJcmV0dXJuIHJldDsKIH0KLS0gCjIuMjUuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
