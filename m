Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 659CC3AB25C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 470C663576
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E9FBF6350B; Thu, 17 Jun 2021 11:17:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C12C763514;
	Thu, 17 Jun 2021 11:17:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4077A63547
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5A79E63511; Thu, 17 Jun 2021 11:16:18 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by lists.linaro.org (Postfix) with ESMTPS id 3D6006350D
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:13 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id gt18so9186953ejc.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=R6hl7Kj0yqQ18nUKlg1tjNnt1DaG6v6UQcKSpcEHFSE=;
 b=JGK01UuNZMIEIDibVS0nyIINaWe1LD8WZSd2MzqqM2c1KEb2oA3W9tigP/K49EqQW8
 HZxCrrioSf1JPwkEFtuGmZZRBoArktZT6ohdSForRUjBj23LLhDX3yQPRXYyLMozPX7e
 l/t6i/bxYWFoVNcLTK5HgX2RtfTcooCVtxNCp2D/9SEn52xJiDUO84QtRapdt+IJlEok
 CJ/lmWyy/U6dbXa2Wniz6V7zBH0SdBaNv+4HPtws7b0i6j4yuu/SCwo2rT0oVh2DOaju
 TJzNFPmCQnAbO6g6e6nPuoZt4kam7XNW4A0fqhl+bNthPPPtHRZpXfuD5m1sNVTOBZlL
 O/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R6hl7Kj0yqQ18nUKlg1tjNnt1DaG6v6UQcKSpcEHFSE=;
 b=bQ9B46kL9F+rU7B+KGIQDfnn63FQ+EJFi3cfEvWkDOu0mvo6EF4d0LjecA6VyWQCq0
 vMmXV8yK7+2e51mub/UeAMRKXxb+EuExIfy9LMuqOl6SgA6qijXJAlK0wCECUMaFQXBt
 3DrjyBeoqG3zxRW6IQXYTcZz/mQcVjRmNvDESyjnaHYotTXmCNuXOxi/SIJIjLHU3RWn
 hfewieBY1AW5uJXbWhggtTYR4TlQYW/JvXzx+G2RgqBg98bsm7jiwtFkODlN3sbzVh6E
 LLrufUYB2oWLQlGzV8ORmB5CqkOJjFNlsWrPAJvfhoB+PDDVf2rt+fR5e//E8cVJG+Pf
 edNw==
X-Gm-Message-State: AOAM530XzhLNGWiux60PzjAVgRd7TIsggDSqI1dS4fOHsG1SNC2IEP3N
 UwBZOHYQ5eGcflAYEXRk8Aw5mVRvRxU=
X-Google-Smtp-Source: ABdhPJzM+36tYqZqJ/QN7yQ4BXU4PIysQ1XlwHkj9hQ3HC1RgavOExt7bDD1K7FT+NqCLwr8YaMZWQ==
X-Received: by 2002:a17:907:20ee:: with SMTP id
 rh14mr4645376ejb.461.1623928572354; 
 Thu, 17 Jun 2021 04:16:12 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:12 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:58 +0200
Message-Id: <20210617111558.28486-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 16/16] drm/radeon: use new iterator in
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
