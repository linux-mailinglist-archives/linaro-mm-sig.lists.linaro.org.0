Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 988359D236
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 17:01:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFBAA607EC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 15:01:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B136561805; Mon, 26 Aug 2019 15:01:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79C6C61897;
	Mon, 26 Aug 2019 14:57:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8BC1161805
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7EA3161810; Mon, 26 Aug 2019 14:57:47 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 400916183B
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:38 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 10so15772895wmp.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 07:57:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dory6iMos9l+mdyEwGPbTiqUtowdJaD3gd9QEEFvwxI=;
 b=DfMFlKvhqxatpuZgUDa8KlKfcbQp1LibEPYl7grxQ/x3S+bxhokuiDZkOFFRzRe16G
 ec8yQnJ61UqVNAQGEBjY1Dp5zqxGJDgVUPtL83c+kiwi/qOBS5tH2/3H4yPhbeL1D5+7
 9NeGicknposuFfeG6me8te0WYF7/dMj1q9/0YTximLrGhrPVltu02aEywtoYrf3ZiGeT
 ADXKwTaq5Dm6+0juvzqA3fqfXO2E2JdCryNEPc5MYafSpCvdamP8W2Kf4U4d+dbiDv3B
 MQwgdTuYqy+r7xzD7SBboTJfYadGkf9AHQIDcvQO+81sBPBPSNbvDYfvmkQocIhP61Nq
 wQjA==
X-Gm-Message-State: APjAAAVfYNyRuVXPt1DifTkhG9WwAcz5m2fBMazNC+zngpMMNVlyvGPy
 TdeqLRsKgW82731k0tfpyCE=
X-Google-Smtp-Source: APXvYqwhXrTJtyZKIS2GL7rEowiF10SZQSZs0Rr1NkojMwT7jKVx37M8QtLeMudXLnJlEvK3Ga8Seg==
X-Received: by 2002:a1c:8187:: with SMTP id c129mr21955469wmd.32.1566831457359; 
 Mon, 26 Aug 2019 07:57:37 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:b0e3:7a12:98e5:ca6])
 by smtp.gmail.com with ESMTPSA id z8sm9865624wmi.7.2019.08.26.07.57.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 07:57:36 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Mon, 26 Aug 2019 16:57:27 +0200
Message-Id: <20190826145731.1725-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826145731.1725-1-christian.koenig@amd.com>
References: <20190826145731.1725-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 5/9] dma-buf: add dma_fence_array_for_each
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

TWFrZXMgaXQgZWFzaWVyIHRvIGV4dHJhY3QgdGhlIGZlbmNlcyBpbiBhIGRtYV9mZW5jZV9hcnJh
eS4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgfCA0MiArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5o
ICAgfCAyNCArKysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNjYgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYwppbmRleCBlYTc3MTNiNDA1MTQuLjNiYzI2
NjNhM2YzMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYwpAQCAtMjc2LDMgKzI3Niw0NSBA
QCBib29sIGRtYV9mZW5jZV9tYXRjaF9jb250ZXh0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCB1
NjQgY29udGV4dCkKIAlyZXR1cm4gdHJ1ZTsKIH0KIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX21h
dGNoX2NvbnRleHQpOworCisvKioKKyAqIGRtYV9mZW5jZV9hcnJheV9maXJzdCAtIHJldHVybiB0
aGUgZmlyc3QgZmVuY2UgaW4gYW4gYXJyYXkKKyAqIEBjdXJzb3I6IGN1cnNvciBmb3IgdGhlIGN1
cnJlbnQgcG9zaXRpb24KKyAqIEBhcnJheTogYXJyYXkgd2l0aCB0aGUgZmVuY2VzCisgKgorICog
UmV0dXJucyB0aGUgZmlyc3QgZmVuY2UgaW4gdGhlIGFycmF5IG9yIE5VTEwgaWYgdGhlIGFycmF5
IGlzIGVtcHR5LgorICogSWYgdGhlIGFycmF5IHBhcmFtZXRlciBpc24ndCBhIGRtYV9mZW5jZV9h
cnJheSByZXR1cm4gaXQgdW5tb2RpZmllZC4KKyAqLworc3RydWN0IGRtYV9mZW5jZSAqZG1hX2Zl
bmNlX2FycmF5X2ZpcnN0KHN0cnVjdCBkbWFfZmVuY2VfYXJyYXlfY3Vyc29yICpjdXJzb3IsCisJ
CQkJCXN0cnVjdCBkbWFfZmVuY2UgKmFycmF5KQoreworCWN1cnNvci0+YXJyYXkgPSB0b19kbWFf
ZmVuY2VfYXJyYXkoYXJyYXkpOworCWlmICghY3Vyc29yLT5hcnJheSkKKwkJcmV0dXJuIGFycmF5
OworCisJaWYgKCFjdXJzb3ItPmFycmF5LT5udW1fZmVuY2VzKQorCQlyZXR1cm4gTlVMTDsKKwor
CWN1cnNvci0+aW5kZXggPSAwOworCXJldHVybiBjdXJzb3ItPmFycmF5LT5mZW5jZXNbY3Vyc29y
LT5pbmRleCsrXTsKKworfQorRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfYXJyYXlfZmlyc3QpOwor
CisvKioKKyAqIGRtYV9mZW5jZV9hcnJheV9uZXh0IC0gcmV0dXJuIHRoZSBuZXh0IGZlbmNlIGlu
IHRoZSBhcnJheQorICogQGN1cnNvcjogY3Vyc29yIGZvciB0aGUgY3VycmVudCBwb3NpdGlvbgor
ICoKKyAqIFJldHVybnMgdGhlIG5leHQgZmVuY2UgZnJvbSB0aGUgYXJyYXkgb3IgTlVMTCBpZiB3
ZSBkb24ndCBoYXZlIGFueSBtb3JlCisgKi8KK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9h
cnJheV9uZXh0KHN0cnVjdCBkbWFfZmVuY2VfYXJyYXlfY3Vyc29yICpjdXJzb3IpCit7CisJaWYg
KCFjdXJzb3ItPmFycmF5KQorCQlyZXR1cm4gTlVMTDsKKworCWlmIChjdXJzb3ItPmluZGV4ID49
IGN1cnNvci0+YXJyYXktPm51bV9mZW5jZXMpCisJCXJldHVybiBOVUxMOworCisJcmV0dXJuIGN1
cnNvci0+YXJyYXktPmZlbmNlc1tjdXJzb3ItPmluZGV4KytdOworfQorRVhQT1JUX1NZTUJPTChk
bWFfZmVuY2VfYXJyYXlfbmV4dCk7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS1hcnJheS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaAppbmRleCAzNWQxZDFl
N2M5M2IuLjJhNzFmZDAwM2RmYSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Ut
YXJyYXkuaAorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oCkBAIC0xMjQsNCAr
MTI0LDI4IEBAIGRtYV9mZW5jZV9hcnJheV9jcmVhdGUoaW50IG51bV9mZW5jZXMsIHN0cnVjdCBk
bWFfZmVuY2UgKipmZW5jZXMsIHU2NCBjb250ZXh0LAogCiBib29sIGRtYV9mZW5jZV9tYXRjaF9j
b250ZXh0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCB1NjQgY29udGV4dCk7CiAKKy8qKgorICog
c3RydWN0IGRtYV9mZW5jZV9hcnJheV9jdXJzb3IgLSBjdXJzb3IgZm9yIHRoZSBmZW5jZXMgaW4g
YW4gYXJyYXkKKyAqLworc3RydWN0IGRtYV9mZW5jZV9hcnJheV9jdXJzb3IgeworCXN0cnVjdCBk
bWFfZmVuY2VfYXJyYXkgKmFycmF5OworCXVuc2lnbmVkIGludCBpbmRleDsKK307CisKK3N0cnVj
dCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hcnJheV9maXJzdChzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5
X2N1cnNvciAqY3Vyc29yLAorCQkJCQlzdHJ1Y3QgZG1hX2ZlbmNlICphcnJheSk7CitzdHJ1Y3Qg
ZG1hX2ZlbmNlICpkbWFfZmVuY2VfYXJyYXlfbmV4dChzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5X2N1
cnNvciAqY3Vyc29yKTsKKworLyoqCisgKiBkbWFfZmVuY2VfYXJyYXlfZm9yX2VhY2ggLSB3YWxr
IG92ZXIgYWxsIGZlbmNlcyBpbiBhIGZlbmNlIGFycmF5CisgKiBAZmVuY2U6IHRoZSBjdXJyZW50
IGZlbmNlCisgKiBAY3Vyc29yOiBjdXJzb3IgZm9yIHRoZSB3YWxrCisgKiBAYXJyYXk6IHBvdGVu
dGl0YWxseSBmZW5jZSBhcnJheQorICoKKyAqIFdhbGsgb3ZlciBhbGwgdGhlIGZlbmNlcyBpbiB0
aGUgYXJyYXkuCisgKi8KKyNkZWZpbmUgZG1hX2ZlbmNlX2FycmF5X2Zvcl9lYWNoKGZlbmNlLCBj
dXJzb3IsIGFycmF5KQkJXAorCWZvciAoZmVuY2UgPSBkbWFfZmVuY2VfYXJyYXlfZmlyc3QoJihj
dXJzb3IpLCBhcnJheSk7CVwKKwkgICAgIGZlbmNlOyBmZW5jZSA9IGRtYV9mZW5jZV9hcnJheV9u
ZXh0KCYoY3Vyc29yKSkpCisKICNlbmRpZiAvKiBfX0xJTlVYX0RNQV9GRU5DRV9BUlJBWV9IICov
Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
