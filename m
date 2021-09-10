Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 003DF40687A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:28:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2E1C64AE0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:28:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C2C4D63636; Fri, 10 Sep 2021 08:27:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 675C66322C;
	Fri, 10 Sep 2021 08:27:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 005B666BCE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EAD496325F; Fri, 10 Sep 2021 08:27:16 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 8D1C269CD4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:11 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id t18so1499401wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R6hl7Kj0yqQ18nUKlg1tjNnt1DaG6v6UQcKSpcEHFSE=;
 b=AF9j13vF2C40YiZF8YnlmkRI+2y0Zgx5gxsyI8poos90I9FQMyjQftYcu/PQQbKRid
 qbgd2bSNKqUg3uORGqVR3m7f44omguz6cGmpda84jTegLUf6kT9iGnfiiMCKVxGpozGt
 4DkOkj8JqIxYhcy+Rr+gGXH4WA060kafbhcNNdhGWWVehKlZ9gj/F8BgSvTTUyTPsQe5
 V2k5ZBmi2Rg2/UiszoM7SXqfPfEp1yQVwjHSCgWMRZjh8ZMnmEuNrI3xnBZxt3f7DFRD
 yv8Chc8CTkXgJgzEe9h+eMgYid1dfBUqacTAw9N4IkxYm0gzfAl1auYyqd4X66ZoZHkn
 o4Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R6hl7Kj0yqQ18nUKlg1tjNnt1DaG6v6UQcKSpcEHFSE=;
 b=j4mfiPWZ4jytpI4Pv4ZEguMOuYPVUbBbGrKbP8STWj6MdmjhsUzN2eMyfV2vjMXwGK
 PHmg7WAXkeqICxJhzcSwmxoIFpif4gAjzX7K/OneyAhD5eQtA472nH1buFkkDpLzayNC
 HGbwwMiyPENWJhDLvgKAiPmAe0t4Ev0caQnQNBPOIpQNq8JwP2QxTnjnXVUckC8+Utez
 NxZBcSmummSzE+WVwhxLxkitiAAO8Li8yeXl5cOVmupCJYWe1RHMKSFIsd5iq66MYOeP
 zFXzeWbv5ob+bOpkYMQUw138shnEmsiLLAdlpAnOq6lgc6yh8tM2WoxiK6Nw0IXVuNIY
 zoDw==
X-Gm-Message-State: AOAM530MnaLUMCibpA3CWpr7qH9xBnOTkZ4kI724OVbuRWelQtsZFsxv
 KqVdUtNIQK3a2BTxu2ofJLpw0c2ERudM+4Bl
X-Google-Smtp-Source: ABdhPJwY9+avZrDVp15kV3L6A7ao2zBHMwJf/F8q7CwTgO/k1/czo3Esq+RiUn9i7G+1GaBzEM4rZA==
X-Received: by 2002:adf:f08d:: with SMTP id n13mr8365190wro.339.1631262430440; 
 Fri, 10 Sep 2021 01:27:10 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.27.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:27:09 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:55 +0200
Message-Id: <20210910082655.82168-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 14/14] drm/radeon: use new iterator in
 radeon_sync_resv
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yYWRlb25fc3luYy5jIHwgMjIgKysrLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fc3luYy5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fc3luYy5jCmluZGV4IDkyNTdiNjAxNDRjNC4uMTRhNGQ4MTM1YmFkIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9zeW5jLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JhZGVvbi9yYWRlb25fc3luYy5jCkBAIC05MSwzMyArOTEsMTcgQEAgaW50IHJhZGVvbl9z
eW5jX3Jlc3Yoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsCiAJCSAgICAgc3RydWN0IGRtYV9y
ZXN2ICpyZXN2LAogCQkgICAgIGJvb2wgc2hhcmVkKQogewotCXN0cnVjdCBkbWFfcmVzdl9saXN0
ICpmbGlzdDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmOworCXN0cnVjdCBkbWFfcmVzdl9jdXJzb3Ig
Y3Vyc29yOwogCXN0cnVjdCByYWRlb25fZmVuY2UgKmZlbmNlOwotCXVuc2lnbmVkIGk7CisJc3Ry
dWN0IGRtYV9mZW5jZSAqZjsKIAlpbnQgciA9IDA7CiAKLQkvKiBhbHdheXMgc3luYyB0byB0aGUg
ZXhjbHVzaXZlIGZlbmNlICovCi0JZiA9IGRtYV9yZXN2X2V4Y2xfZmVuY2UocmVzdik7Ci0JZmVu
Y2UgPSBmID8gdG9fcmFkZW9uX2ZlbmNlKGYpIDogTlVMTDsKLQlpZiAoZmVuY2UgJiYgZmVuY2Ut
PnJkZXYgPT0gcmRldikKLQkJcmFkZW9uX3N5bmNfZmVuY2Uoc3luYywgZmVuY2UpOwotCWVsc2Ug
aWYgKGYpCi0JCXIgPSBkbWFfZmVuY2Vfd2FpdChmLCB0cnVlKTsKLQotCWZsaXN0ID0gZG1hX3Jl
c3Zfc2hhcmVkX2xpc3QocmVzdik7Ci0JaWYgKHNoYXJlZCB8fCAhZmxpc3QgfHwgcikKLQkJcmV0
dXJuIHI7Ci0KLQlmb3IgKGkgPSAwOyBpIDwgZmxpc3QtPnNoYXJlZF9jb3VudDsgKytpKSB7Ci0J
CWYgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZsaXN0LT5zaGFyZWRbaV0sCi0JCQkJCSAg
ICAgIGRtYV9yZXN2X2hlbGQocmVzdikpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKHJlc3Ys
ICZjdXJzb3IsIHNoYXJlZCwgZikgewogCQlmZW5jZSA9IHRvX3JhZGVvbl9mZW5jZShmKTsKIAkJ
aWYgKGZlbmNlICYmIGZlbmNlLT5yZGV2ID09IHJkZXYpCiAJCQlyYWRlb25fc3luY19mZW5jZShz
eW5jLCBmZW5jZSk7CiAJCWVsc2UKIAkJCXIgPSBkbWFfZmVuY2Vfd2FpdChmLCB0cnVlKTsKLQog
CQlpZiAocikKIAkJCWJyZWFrOwogCX0KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
