Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9288B4177DE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:34:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A6AB61ED8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:34:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 237A062421; Fri, 24 Sep 2021 15:34:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A884761A49;
	Fri, 24 Sep 2021 15:34:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D182262169
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C45FB61C4A; Fri, 24 Sep 2021 15:31:49 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id D818A63392
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:41 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id t18so28762205wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/+r4v7UIazK0HaIgNf9t5Xden24q10DFKnoad4rknzc=;
 b=Z9YgoSWQMi0swZmjtdlmJm9oQRufLdcZM/Fk+QKFTcWara2nRxH6ZMFLLIE1ojh9JW
 qd+ITxakFpjTfC1yoC92bAHElJOaI8R0p+b79QFmgAhPYkJ9Y1757HhpBSBRiNQGsHeY
 1h3zAGM2YraR5hAj0XGyZxRjdSfk7+Xe7tG2d71RsgdUi3AgaqZ6X0vmALeIzqVK8Hjl
 PAZlW7gjLCgVifRauC7krU+ad1grJuZXnV02Xi7aDLfTfioqsSefV06PoJVgBFVZqt4D
 YxLzJzTgjV5SDZc1+Sj6PS+nel+/d+VXvWcTx4J87buVta4c2F3F1wiXJ+23MfR90BWe
 5QgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/+r4v7UIazK0HaIgNf9t5Xden24q10DFKnoad4rknzc=;
 b=tdmHDjMj3/vXnKVJMb/v6v/rWqwQv0gBLmXA/4xxgAZ5Tbo9kwuD0fS0SNMo0Y+7e4
 d4IYDZSX1hwGX/6JSXNVjp7l4HvRCciok+X6JzG+ZOeg3v7B7PJrwNITFU54BUl6XuBO
 UAQCIPywxM3uwJjnDt85qN20u1GrRe92h2CF10lwrXCu2GyeCGeTM9FWrks7meSMNLS5
 tBavW0bL+4jivCElk/Vl2f/+i6Nad3oIZr6yqlUwvUugwAUc6g38yLc/TRb0GWRHEMl0
 wBBeYHQo9qMuh5CT4XPAmKmKWqUjm9Gdvhxj2exdOWHZVdhnzb2WTl7PoLcqZRVkCgRd
 wMIQ==
X-Gm-Message-State: AOAM530eDohRRvJzlv4Y866AU/od92UmcJl0ri/32N46Df9hnhRanH1v
 zYHgglUXgy0fIIFoyc7Tdp8OlE8oWHU=
X-Google-Smtp-Source: ABdhPJyExBTORM3Xmjlq/oYuKANVHGlgS1MmSJcPgu3g82awnnlo3Aai1c/s1G1zWoB7O3vsEv2p1A==
X-Received: by 2002:adf:9147:: with SMTP id j65mr12063286wrj.163.1632497500882; 
 Fri, 24 Sep 2021 08:31:40 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:40 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:31:10 +0200
Message-Id: <20210924153113.2159-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 24/27] drm/nouveau: use the new iterator in
 nouveau_fence_sync
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
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvbm91dmVhdV9mZW5jZS5jIHwgNDggKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwppbmRleCAwNWQwYjNlYjM2OTAuLjI2ZjkyOTlkZjg4
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYwpAQCAtMzM5LDE0ICsz
MzksMTUgQEAgbm91dmVhdV9mZW5jZV93YWl0KHN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmZW5jZSwg
Ym9vbCBsYXp5LCBib29sIGludHIpCiB9CiAKIGludAotbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVj
dCBub3V2ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGV4
Y2x1c2l2ZSwgYm9vbCBpbnRyKQorbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBub3V2ZWF1X2Jv
ICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLAorCQkgICBib29sIGV4Y2x1c2l2
ZSwgYm9vbCBpbnRyKQogewogCXN0cnVjdCBub3V2ZWF1X2ZlbmNlX2NoYW4gKmZjdHggPSBjaGFu
LT5mZW5jZTsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJl
c3YgPSBudmJvLT5iby5iYXNlLnJlc3Y7Ci0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJ
c3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwog
CXN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmOwotCWludCByZXQgPSAwLCBpOworCWludCByZXQ7CiAK
IAlpZiAoIWV4Y2x1c2l2ZSkgewogCQlyZXQgPSBkbWFfcmVzdl9yZXNlcnZlX3NoYXJlZChyZXN2
LCAxKTsKQEAgLTM1NSwxMCArMzU2LDcgQEAgbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBub3V2
ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGUKIAkJCXJl
dHVybiByZXQ7CiAJfQogCi0JZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHJlc3YpOwotCWZl
bmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShyZXN2KTsKLQotCWlmIChmZW5jZSkgeworCWRtYV9y
ZXN2X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIHJlc3YsIGV4Y2x1c2l2ZSwgZmVuY2UpIHsKIAkJ
c3RydWN0IG5vdXZlYXVfY2hhbm5lbCAqcHJldiA9IE5VTEw7CiAJCWJvb2wgbXVzdF93YWl0ID0g
dHJ1ZTsKIApAQCAtMzY2LDQxICszNjQsMTkgQEAgbm91dmVhdV9mZW5jZV9zeW5jKHN0cnVjdCBu
b3V2ZWF1X2JvICpudmJvLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuLCBib29sIGUKIAkJ
aWYgKGYpIHsKIAkJCXJjdV9yZWFkX2xvY2soKTsKIAkJCXByZXYgPSByY3VfZGVyZWZlcmVuY2Uo
Zi0+Y2hhbm5lbCk7Ci0JCQlpZiAocHJldiAmJiAocHJldiA9PSBjaGFuIHx8IGZjdHgtPnN5bmMo
ZiwgcHJldiwgY2hhbikgPT0gMCkpCisJCQlpZiAocHJldiAmJiAocHJldiA9PSBjaGFuIHx8CisJ
CQkJICAgICBmY3R4LT5zeW5jKGYsIHByZXYsIGNoYW4pID09IDApKQogCQkJCW11c3Rfd2FpdCA9
IGZhbHNlOwogCQkJcmN1X3JlYWRfdW5sb2NrKCk7CiAJCX0KIAotCQlpZiAobXVzdF93YWl0KQor
CQlpZiAobXVzdF93YWl0KSB7CiAJCQlyZXQgPSBkbWFfZmVuY2Vfd2FpdChmZW5jZSwgaW50cik7
Ci0KLQkJcmV0dXJuIHJldDsKLQl9Ci0KLQlpZiAoIWV4Y2x1c2l2ZSB8fCAhZm9iaikKLQkJcmV0
dXJuIHJldDsKLQotCWZvciAoaSA9IDA7IGkgPCBmb2JqLT5zaGFyZWRfY291bnQgJiYgIXJldDsg
KytpKSB7Ci0JCXN0cnVjdCBub3V2ZWF1X2NoYW5uZWwgKnByZXYgPSBOVUxMOwotCQlib29sIG11
c3Rfd2FpdCA9IHRydWU7Ci0KLQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZv
YmotPnNoYXJlZFtpXSwKLQkJCQkJCWRtYV9yZXN2X2hlbGQocmVzdikpOwotCi0JCWYgPSBub3V2
ZWF1X2xvY2FsX2ZlbmNlKGZlbmNlLCBjaGFuLT5kcm0pOwotCQlpZiAoZikgewotCQkJcmN1X3Jl
YWRfbG9jaygpOwotCQkJcHJldiA9IHJjdV9kZXJlZmVyZW5jZShmLT5jaGFubmVsKTsKLQkJCWlm
IChwcmV2ICYmIChwcmV2ID09IGNoYW4gfHwgZmN0eC0+c3luYyhmLCBwcmV2LCBjaGFuKSA9PSAw
KSkKLQkJCQltdXN0X3dhaXQgPSBmYWxzZTsKLQkJCXJjdV9yZWFkX3VubG9jaygpOworCQkJaWYg
KHJldCkKKwkJCQlyZXR1cm4gcmV0OwogCQl9Ci0KLQkJaWYgKG11c3Rfd2FpdCkKLQkJCXJldCA9
IGRtYV9mZW5jZV93YWl0KGZlbmNlLCBpbnRyKTsKIAl9Ci0KLQlyZXR1cm4gcmV0OworCXJldHVy
biAwOwogfQogCiB2b2lkCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
