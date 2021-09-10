Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2963D406868
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:27:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E62F63542
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:27:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DA3BF63514; Fri, 10 Sep 2021 08:27:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C84D56093B;
	Fri, 10 Sep 2021 08:27:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A08CD62D35
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7635A63629; Fri, 10 Sep 2021 08:27:05 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 65919623DB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:01 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id d6so1431634wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nRgKzPY716uBcqzlD486ZNP7MTz75iQyYL0S/ztJuik=;
 b=FS4E88FNOuhDufIsC6QEy21VBZNvlW9xy/w3nbJHqGYzUPLTeReXi5mBTchosSHG5f
 ZWwidH0HyDKLtyouZqwPcSvZ53D7SkOhh0wpZHDDaoy7HASls0oUCmGSq8Ms4Ohx0HqP
 1+3fBCQbYzUs+lj5oV2NC1uf6QuIRBSLRB4tcFrkAZnLVhdvAOH/qT7q4cKHjh6HAEZO
 ywS+PgEMK9uSdXh7JLSkJk8dZWqGgs5sPvbVFhfBRwj825HG0B4f3Z9JGaucv5OcXKzB
 ZNlKRjf5HkTn5jKothqucLGgwIuIjIUbpNmd7YLhr0CZcPuEL4L9NEQVU7Dk2BBSdJUO
 h58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nRgKzPY716uBcqzlD486ZNP7MTz75iQyYL0S/ztJuik=;
 b=bDNpNuRPUACo5W9LavnuMkOo/mKAF97Fx/+rIDDnqQEsT/oIJ1HS0zop5TmF+ijkhl
 rHDrqvsSmUlE5ncrindS/LIICIHwhoPBkOIAXf885YqwAHpj3w62+hpGypZIVBW4tWRi
 M3Gv5zS+1ccwjwfrVgyvdE4fQ0JK0iTuRzNR7xJmbY+QhqSD1ccbs2LRVUZVcmZ/lpk/
 TcXBDO51Yre7w178nMTxPxasmztAdhx/ApXcLYTKUzl/d4trZr5J7LtCB5hVhPW+TRiQ
 BN+lbVDthvV321GWa3zCYOWy4fVeT5OoET5ASejQtHhKluGhF8no7QnEVgubZH2tJuwP
 nZaw==
X-Gm-Message-State: AOAM530aCv0xSSGmh33N3nbTvqll5WE4Hk5GgtRC/g0GFr8Qb4NelDB9
 4ZVOb9zEWEHUpQXZg7Hxfp97v3gl68gxCHOW
X-Google-Smtp-Source: ABdhPJz61M3U+vGt3QVPLv7BGmosqiUuJUUtGZ7ovO7uFD3uT3WFpi4JJCO2cPrmuymJNsMmoSamPg==
X-Received: by 2002:adf:d185:: with SMTP id v5mr8294151wrc.378.1631262420440; 
 Fri, 10 Sep 2021 01:27:00 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.26.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:26:59 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:45 +0200
Message-Id: <20210910082655.82168-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 04/14] dma-buf: use new iterator in
 dma_resv_get_fences
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

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYyB8IDExMCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwgNzMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LXJlc3YuYwppbmRleCA5YTljMGJiYTc3MmIuLjJkZmIwNGU2YTYyZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMK
QEAgLTQ5Myw5OSArNDkzLDYzIEBAIEVYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfY29weV9mZW5jZXMp
OwogICogZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyAtIEdldCBhbiBvYmplY3QncyBzaGFyZWQgYW5kIGV4
Y2x1c2l2ZQogICogZmVuY2VzIHdpdGhvdXQgdXBkYXRlIHNpZGUgbG9jayBoZWxkCiAgKiBAb2Jq
OiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0Ci0gKiBAcGZlbmNlX2V4Y2w6IHRoZSByZXR1cm5lZCBl
eGNsdXNpdmUgZmVuY2UgKG9yIE5VTEwpCi0gKiBAcHNoYXJlZF9jb3VudDogdGhlIG51bWJlciBv
ZiBzaGFyZWQgZmVuY2VzIHJldHVybmVkCi0gKiBAcHNoYXJlZDogdGhlIGFycmF5IG9mIHNoYXJl
ZCBmZW5jZSBwdHJzIHJldHVybmVkIChhcnJheSBpcyBrcmVhbGxvYydkIHRvCisgKiBAZmVuY2Vf
ZXhjbDogdGhlIHJldHVybmVkIGV4Y2x1c2l2ZSBmZW5jZSAob3IgTlVMTCkKKyAqIEBzaGFyZWRf
Y291bnQ6IHRoZSBudW1iZXIgb2Ygc2hhcmVkIGZlbmNlcyByZXR1cm5lZAorICogQHNoYXJlZDog
dGhlIGFycmF5IG9mIHNoYXJlZCBmZW5jZSBwdHJzIHJldHVybmVkIChhcnJheSBpcyBrcmVhbGxv
YydkIHRvCiAgKiB0aGUgcmVxdWlyZWQgc2l6ZSwgYW5kIG11c3QgYmUgZnJlZWQgYnkgY2FsbGVy
KQogICoKICAqIFJldHJpZXZlIGFsbCBmZW5jZXMgZnJvbSB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0
LiBJZiB0aGUgcG9pbnRlciBmb3IgdGhlCiAgKiBleGNsdXNpdmUgZmVuY2UgaXMgbm90IHNwZWNp
ZmllZCB0aGUgZmVuY2UgaXMgcHV0IGludG8gdGhlIGFycmF5IG9mIHRoZQogICogc2hhcmVkIGZl
bmNlcyBhcyB3ZWxsLiBSZXR1cm5zIGVpdGhlciB6ZXJvIG9yIC1FTk9NRU0uCiAgKi8KLWludCBk
bWFfcmVzdl9nZXRfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNl
ICoqcGZlbmNlX2V4Y2wsCi0JCQl1bnNpZ25lZCBpbnQgKnBzaGFyZWRfY291bnQsCi0JCQlzdHJ1
Y3QgZG1hX2ZlbmNlICoqKnBzaGFyZWQpCitpbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhzdHJ1Y3Qg
ZG1hX3Jlc3YgKm9iaiwgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlX2V4Y2wsCisJCQl1bnNpZ25l
ZCBpbnQgKnNoYXJlZF9jb3VudCwgc3RydWN0IGRtYV9mZW5jZSAqKipzaGFyZWQpCiB7Ci0Jc3Ry
dWN0IGRtYV9mZW5jZSAqKnNoYXJlZCA9IE5VTEw7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Vf
ZXhjbDsKLQl1bnNpZ25lZCBpbnQgc2hhcmVkX2NvdW50OwotCWludCByZXQgPSAxOwotCi0JZG8g
ewotCQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZm9iajsKLQkJdW5zaWduZWQgaW50IGksIHNlcTsK
LQkJc2l6ZV90IHN6ID0gMDsKLQotCQlzaGFyZWRfY291bnQgPSBpID0gMDsKLQotCQlyY3VfcmVh
ZF9sb2NrKCk7Ci0JCXNlcSA9IHJlYWRfc2VxY291bnRfYmVnaW4oJm9iai0+c2VxKTsKLQotCQlm
ZW5jZV9leGNsID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmopOwotCQlpZiAoZmVuY2VfZXhjbCAm
JiAhZG1hX2ZlbmNlX2dldF9yY3UoZmVuY2VfZXhjbCkpCi0JCQlnb3RvIHVubG9jazsKKwlzdHJ1
Y3QgZG1hX3Jlc3ZfY3Vyc29yIGN1cnNvcjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAot
CQlmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqKTsKLQkJaWYgKGZvYmopCi0JCQlzeiAr
PSBzaXplb2YoKnNoYXJlZCkgKiBmb2JqLT5zaGFyZWRfbWF4OworCSpzaGFyZWRfY291bnQgPSAw
OworCSpzaGFyZWQgPSBOVUxMOwogCi0JCWlmICghcGZlbmNlX2V4Y2wgJiYgZmVuY2VfZXhjbCkK
LQkJCXN6ICs9IHNpemVvZigqc2hhcmVkKTsKKwlpZiAoZmVuY2VfZXhjbCkKKwkJKmZlbmNlX2V4
Y2wgPSBOVUxMOwogCi0JCWlmIChzeikgewotCQkJc3RydWN0IGRtYV9mZW5jZSAqKm5zaGFyZWQ7
CisJcmN1X3JlYWRfbG9jaygpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKG9i
aiwgJmN1cnNvciwgdHJ1ZSwgZmVuY2UpIHsKIAotCQkJbnNoYXJlZCA9IGtyZWFsbG9jKHNoYXJl
ZCwgc3osCi0JCQkJCSAgIEdGUF9OT1dBSVQgfCBfX0dGUF9OT1dBUk4pOwotCQkJaWYgKCFuc2hh
cmVkKSB7Ci0JCQkJcmN1X3JlYWRfdW5sb2NrKCk7CisJCWlmIChjdXJzb3IuaXNfZmlyc3QpIHsK
KwkJCXVuc2lnbmVkIGludCBjb3VudDsKIAotCQkJCWRtYV9mZW5jZV9wdXQoZmVuY2VfZXhjbCk7
Ci0JCQkJZmVuY2VfZXhjbCA9IE5VTEw7CisJCQl3aGlsZSAoKnNoYXJlZF9jb3VudCkKKwkJCQlk
bWFfZmVuY2VfcHV0KCgqc2hhcmVkKVstLSgqc2hhcmVkX2NvdW50KV0pOwogCi0JCQkJbnNoYXJl
ZCA9IGtyZWFsbG9jKHNoYXJlZCwgc3osIEdGUF9LRVJORUwpOwotCQkJCWlmIChuc2hhcmVkKSB7
Ci0JCQkJCXNoYXJlZCA9IG5zaGFyZWQ7Ci0JCQkJCWNvbnRpbnVlOwotCQkJCX0KKwkJCWlmIChm
ZW5jZV9leGNsKQorCQkJCWRtYV9mZW5jZV9wdXQoKmZlbmNlX2V4Y2wpOwogCi0JCQkJcmV0ID0g
LUVOT01FTTsKLQkJCQlicmVhazsKLQkJCX0KLQkJCXNoYXJlZCA9IG5zaGFyZWQ7Ci0JCQlzaGFy
ZWRfY291bnQgPSBmb2JqID8gZm9iai0+c2hhcmVkX2NvdW50IDogMDsKLQkJCWZvciAoaSA9IDA7
IGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewotCQkJCXNoYXJlZFtpXSA9IHJjdV9kZXJlZmVyZW5j
ZShmb2JqLT5zaGFyZWRbaV0pOwotCQkJCWlmICghZG1hX2ZlbmNlX2dldF9yY3Uoc2hhcmVkW2ld
KSkKLQkJCQkJYnJlYWs7Ci0JCQl9Ci0JCX0KKwkJCWNvdW50ID0gY3Vyc29yLmZlbmNlcyA/IGN1
cnNvci5mZW5jZXMtPnNoYXJlZF9jb3VudCA6IDA7CisJCQljb3VudCArPSBmZW5jZV9leGNsID8g
MCA6IDE7CisJCQlyY3VfcmVhZF91bmxvY2soKTsKIAotCQlpZiAoaSAhPSBzaGFyZWRfY291bnQg
fHwgcmVhZF9zZXFjb3VudF9yZXRyeSgmb2JqLT5zZXEsIHNlcSkpIHsKLQkJCXdoaWxlIChpLS0p
Ci0JCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwotCQkJZG1hX2ZlbmNlX3B1dChmZW5jZV9l
eGNsKTsKLQkJCWdvdG8gdW5sb2NrOworCQkJLyogRXZlbnR1YWxseSByZS1hbGxvY2F0ZSB0aGUg
YXJyYXkgKi8KKwkJCSpzaGFyZWQgPSBrcmVhbGxvY19hcnJheSgqc2hhcmVkLCBjb3VudCwKKwkJ
CQkJCSBzaXplb2YoKnNoYXJlZCksCisJCQkJCQkgR0ZQX0tFUk5FTCk7CisJCQlpZiAoY291bnQg
JiYgISpzaGFyZWQpCisJCQkJcmV0dXJuIC1FTk9NRU07CisJCQlyY3VfcmVhZF9sb2NrKCk7CiAJ
CX0KIAotCQlyZXQgPSAwOwotdW5sb2NrOgotCQlyY3VfcmVhZF91bmxvY2soKTsKLQl9IHdoaWxl
IChyZXQpOwotCi0JaWYgKHBmZW5jZV9leGNsKQotCQkqcGZlbmNlX2V4Y2wgPSBmZW5jZV9leGNs
OwotCWVsc2UgaWYgKGZlbmNlX2V4Y2wpCi0JCXNoYXJlZFtzaGFyZWRfY291bnQrK10gPSBmZW5j
ZV9leGNsOworCQlpZiAoY3Vyc29yLmlzX2V4Y2x1c2l2ZSAmJiBmZW5jZV9leGNsKQorCQkJKmZl
bmNlX2V4Y2wgPSBmZW5jZTsKKwkJZWxzZQorCQkJKCpzaGFyZWQpWygqc2hhcmVkX2NvdW50KSsr
XSA9IGZlbmNlOwogCi0JaWYgKCFzaGFyZWRfY291bnQpIHsKLQkJa2ZyZWUoc2hhcmVkKTsKLQkJ
c2hhcmVkID0gTlVMTDsKKwkJLyogRG9uJ3QgZHJvcCB0aGUgcmVmZXJlbmNlICovCisJCWZlbmNl
ID0gTlVMTDsKIAl9CisJcmN1X3JlYWRfdW5sb2NrKCk7CiAKLQkqcHNoYXJlZF9jb3VudCA9IHNo
YXJlZF9jb3VudDsKLQkqcHNoYXJlZCA9IHNoYXJlZDsKLQlyZXR1cm4gcmV0OworCXJldHVybiAw
OwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyk7CiAKLS0gCjIuMjUu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
