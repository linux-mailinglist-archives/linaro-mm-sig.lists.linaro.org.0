Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E4540F7F7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:37:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 679B263426
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:37:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 52FFA66BF0; Fri, 17 Sep 2021 12:37:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC66569D0F;
	Fri, 17 Sep 2021 12:37:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 66ACE69CD3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 99E0269CD8; Fri, 17 Sep 2021 12:35:42 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id BF42A69CDC
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:35 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id u18so13196621wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/+r4v7UIazK0HaIgNf9t5Xden24q10DFKnoad4rknzc=;
 b=qcdDHMrY9dAkH1CfZYbl1paITikRgjzIfXYfcWhnMMotQgyVybJVfg2I6jsbnrUtto
 i9d1iz2w9lUQ3Tp8eoYJkCgSPF538vXT52MeHh7t3IAMa+I5GdC8Z15ZEdU4E2R3y0Mq
 KTiVQB7w8RP9jLv3SpXH6ZC/MbL5lRAyEXTpTzhlRaYhDu4wUC0Ni1XL3/Lh1TQFbDJ5
 wFj7/2W5b3e9HYXeb0gEx/AVdp7HAg2s+yhCjpKf/AfwiKhgQDH5R4df+kLyTxBxO8Dl
 pXUj1RvL9fDfnLXP+wD2tBv+WWBeQN9WG4+vRGP107Tz3CROmbXvVOfPI3g25qQFOzex
 vv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/+r4v7UIazK0HaIgNf9t5Xden24q10DFKnoad4rknzc=;
 b=T8FfgZVyDt9ml9YxUJMduoo35J1BY1NSLUQNHAqujSuyVi5xDQqDPDbAKIzVi3ttgj
 492sO7zdU3S1SaNdgKdrcBR4nIqfUvkZYqT3bAo9ASRVxH/G+Dp6Pnprpj0p5jqtdwTs
 9r3jlmKfK2S9ze0ky7QBn1NqARvvXtv+9QEroOIO8qY5wv2xud9cS/2WAqiB76ndlRa/
 AbCaeOxZ36wgqrKPHtqNiht9AXu2nwce2aCX1SiSGnGzhSGjL7KwzrkS0vdi+iPMKwi1
 X1I1TpD4Ci0QE9XGSZ9BK8SPFGrUEtKR6Gmaj2IuPki0L8ndvlk5RPvFk9ECHZ5nMkEr
 CJng==
X-Gm-Message-State: AOAM532IXuiAzkhj0YoElo49R96GCRBO4QvkxdxNHrsATjqv8zi6pR3z
 XapX4diL5ckJEeyLWgy89lVlsidZ8Wc=
X-Google-Smtp-Source: ABdhPJw/ijoW4HVKLdVG3icsgL3cLccAIbN1qtLlkqGp8bmKWjWNYHwK4hhXW43D4RigPblzMDVsKg==
X-Received: by 2002:adf:9bdb:: with SMTP id e27mr11700230wrc.162.1631882134915; 
 Fri, 17 Sep 2021 05:35:34 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:34 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:09 +0200
Message-Id: <20210917123513.1106-23-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 22/26] drm/nouveau: use the new iterator in
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
Cc: daniel@ffwll.ch
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
