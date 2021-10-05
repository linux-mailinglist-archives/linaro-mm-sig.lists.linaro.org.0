Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE0642255E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:39:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 255B263239
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:39:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CC9F562002; Tue,  5 Oct 2021 11:38:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9594B60EFE;
	Tue,  5 Oct 2021 11:38:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 52F0160A0A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 67E1F6088F; Tue,  5 Oct 2021 11:37:58 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 2CFD2605E1
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:54 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id r7so21265501wrc.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+zjjRS+8SmWmuiEHBZ1EQ1Juvwdnv29UPzLRK7KSTng=;
 b=ohTGmGBM0A8SAi0X4KFX3NT6pQ/30b41WhOGkrrL+7B8UvTjLrJWvZAntXY8girHBR
 ajYj7yCpVysGzaqRBmDutEmLCHMS7paIiTg6+SKdfssvVWh//unH0GJ2eHZxgtZq6nq/
 0P9ySyi6lyyaa0EiPFEYHsWPN0D7lbQXESG/t4UK6B+EXG73QnqMBUopGqhPNb82A3jY
 BojXM0m+pQfac26WOf/Gp5+ZvEAxLGzKhE9LcoTMPLpS+wJShMnmiLwQj5xUcctM1os6
 JuKHFmDaRSFj2ebuepKHQKXc6jCYGzEh8eCZLpId4NIvD9pf8MxjqIBDA/GRKph1jLkm
 l9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+zjjRS+8SmWmuiEHBZ1EQ1Juvwdnv29UPzLRK7KSTng=;
 b=szSxPjB30P+dmlPbSFPFZJXCJli/9o/JUnIGRPnbKE0g9RIdokn3WH8zfv0TsCBdN+
 +V7uUiPGuMEhIrbqsAyjdX1UNteNTNFJ/rcoPfofHBzwuQbIrx6besnE64IefElhLN/T
 17rcwB7Cvy0R4NIue7DuFhC2XhRi09vrmE/AbHsuGIFxm9LbV3nZQ4x536FKdxAGUJYY
 Nn7X/V6jHEDLkg+abw/BRp58lVg9p6/wP3wZFXqB4Oe01xImHp0V3UdiPvIAtL0b7Er+
 AzIkk8AX9uuNATRLpz9mfJNVtKcoUwlRwEhT0/qNjylhlI2Rp1E2OZC2P1d22iFz2Pi7
 vHsA==
X-Gm-Message-State: AOAM5334FqdfaxjAhGffxhWeiFvGigwZgdh90xitYipa6J3AT6aGr61p
 mctNnMq1EE1/+XX7NDJc6zEU30jv0pM=
X-Google-Smtp-Source: ABdhPJy2pixIZqFIovlFcXsQYTpIiaXY4KfMYzOgWwdofof5tdX29oAHfep9AQ0wksJU1J4oI5B7QQ==
X-Received: by 2002:a5d:6c6e:: with SMTP id r14mr21115749wrz.264.1633433873170; 
 Tue, 05 Oct 2021 04:37:53 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:52 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:23 +0200
Message-Id: <20211005113742.1101-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/28] dma-buf: use the new iterator in
 dma_resv_poll
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

U2ltcGxpZnkgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMg
fCAzNiArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCmluZGV4IDgyNDJi
NWQ5YmFlYi4uYmViNTA0YTkyZDYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTIwOSwxOSArMjA5LDE0IEBA
IHN0YXRpYyB2b2lkIGRtYV9idWZfcG9sbF9jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3Ry
dWN0IGRtYV9mZW5jZV9jYiAqY2IpCiAJZG1hX2ZlbmNlX3B1dChmZW5jZSk7CiB9CiAKLXN0YXRp
YyBib29sIGRtYV9idWZfcG9sbF9zaGFyZWQoc3RydWN0IGRtYV9yZXN2ICpyZXN2LAorc3RhdGlj
IGJvb2wgZG1hX2J1Zl9wb2xsX2FkZF9jYihzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsIGJvb2wgd3Jp
dGUsCiAJCQkJc3RydWN0IGRtYV9idWZfcG9sbF9jYl90ICpkY2IpCiB7Ci0Jc3RydWN0IGRtYV9y
ZXN2X2xpc3QgKmZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChyZXN2KTsKKwlzdHJ1Y3QgZG1h
X3Jlc3ZfaXRlciBjdXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Ci0JaW50IGksIHI7
Ci0KLQlpZiAoIWZvYmopCi0JCXJldHVybiBmYWxzZTsKKwlpbnQgcjsKIAotCWZvciAoaSA9IDA7
IGkgPCBmb2JqLT5zaGFyZWRfY291bnQ7ICsraSkgewotCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5j
ZV9wcm90ZWN0ZWQoZm9iai0+c2hhcmVkW2ldLAotCQkJCQkJICBkbWFfcmVzdl9oZWxkKHJlc3Yp
KTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCByZXN2LCB3cml0ZSwgZmVuY2Up
IHsKIAkJZG1hX2ZlbmNlX2dldChmZW5jZSk7CiAJCXIgPSBkbWFfZmVuY2VfYWRkX2NhbGxiYWNr
KGZlbmNlLCAmZGNiLT5jYiwgZG1hX2J1Zl9wb2xsX2NiKTsKIAkJaWYgKCFyKQpAQCAtMjMyLDI0
ICsyMjcsNiBAQCBzdGF0aWMgYm9vbCBkbWFfYnVmX3BvbGxfc2hhcmVkKHN0cnVjdCBkbWFfcmVz
diAqcmVzdiwKIAlyZXR1cm4gZmFsc2U7CiB9CiAKLXN0YXRpYyBib29sIGRtYV9idWZfcG9sbF9l
eGNsKHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwKLQkJCSAgICAgIHN0cnVjdCBkbWFfYnVmX3BvbGxf
Y2JfdCAqZGNiKQotewotCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9m
ZW5jZShyZXN2KTsKLQlpbnQgcjsKLQotCWlmICghZmVuY2UpCi0JCXJldHVybiBmYWxzZTsKLQot
CWRtYV9mZW5jZV9nZXQoZmVuY2UpOwotCXIgPSBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKGZlbmNl
LCAmZGNiLT5jYiwgZG1hX2J1Zl9wb2xsX2NiKTsKLQlpZiAoIXIpCi0JCXJldHVybiB0cnVlOwot
CWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCi0JcmV0dXJuIGZhbHNlOwotfQotCiBzdGF0aWMgX19w
b2xsX3QgZG1hX2J1Zl9wb2xsKHN0cnVjdCBmaWxlICpmaWxlLCBwb2xsX3RhYmxlICpwb2xsKQog
ewogCXN0cnVjdCBkbWFfYnVmICpkbWFidWY7CkBAIC0yODIsOCArMjU5LDcgQEAgc3RhdGljIF9f
cG9sbF90IGRtYV9idWZfcG9sbChzdHJ1Y3QgZmlsZSAqZmlsZSwgcG9sbF90YWJsZSAqcG9sbCkK
IAkJc3Bpbl91bmxvY2tfaXJxKCZkbWFidWYtPnBvbGwubG9jayk7CiAKIAkJaWYgKGV2ZW50cyAm
IEVQT0xMT1VUKSB7Ci0JCQlpZiAoIWRtYV9idWZfcG9sbF9zaGFyZWQocmVzdiwgZGNiKSAmJgot
CQkJICAgICFkbWFfYnVmX3BvbGxfZXhjbChyZXN2LCBkY2IpKQorCQkJaWYgKCFkbWFfYnVmX3Bv
bGxfYWRkX2NiKHJlc3YsIHRydWUsIGRjYikpCiAJCQkJLyogTm8gY2FsbGJhY2sgcXVldWVkLCB3
YWtlIHVwIGFueSBvdGhlciB3YWl0ZXJzICovCiAJCQkJZG1hX2J1Zl9wb2xsX2NiKE5VTEwsICZk
Y2ItPmNiKTsKIAkJCWVsc2UKQEAgLTMwMyw3ICsyNzksNyBAQCBzdGF0aWMgX19wb2xsX3QgZG1h
X2J1Zl9wb2xsKHN0cnVjdCBmaWxlICpmaWxlLCBwb2xsX3RhYmxlICpwb2xsKQogCQlzcGluX3Vu
bG9ja19pcnEoJmRtYWJ1Zi0+cG9sbC5sb2NrKTsKIAogCQlpZiAoZXZlbnRzICYgRVBPTExJTikg
ewotCQkJaWYgKCFkbWFfYnVmX3BvbGxfZXhjbChyZXN2LCBkY2IpKQorCQkJaWYgKCFkbWFfYnVm
X3BvbGxfYWRkX2NiKHJlc3YsIGZhbHNlLCBkY2IpKQogCQkJCS8qIE5vIGNhbGxiYWNrIHF1ZXVl
ZCwgd2FrZSB1cCBhbnkgb3RoZXIgd2FpdGVycyAqLwogCQkJCWRtYV9idWZfcG9sbF9jYihOVUxM
LCAmZGNiLT5jYik7CiAJCQllbHNlCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
