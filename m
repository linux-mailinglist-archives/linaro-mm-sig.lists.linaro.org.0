Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EC89F4144B3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:11:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BCA6862164
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:11:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 69EE2619B0; Wed, 22 Sep 2021 09:11:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A2221631AF;
	Wed, 22 Sep 2021 09:11:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C59426197A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:10:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3A5E6618C3; Wed, 22 Sep 2021 09:10:54 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id A87C1617DA
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:10:51 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id d6so4581587wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hde9qb7LPuwMqk7FJKwIRorynLZ1BAaIyhJS+nYdn8g=;
 b=NYBFhxhavvcUSBaaNZtK71cuCu7OJaTSkmE+DhCVEAQEQ2DBy+B3QySar47s8wsbQI
 fLTgzKQMcYuXhXMEgK0Oqr2S3e6BOCusYhfBVyVcQIwP4aZR0tuqFtKGCOE1ONxONm+/
 IBqGFFBJ4PdNbuYpm7C01b57JXinQylO7A+saf7D04Z63BjNCOAbhaCNPhOzxj32SHQI
 mBKOBBljnPcp2mP2u5RYXpaBstWKg+b7QkFc6pw+6h8TYSFhjKtOz1TMjG7BS5bR9xx4
 5X48sEDAnpsDzE0xSzkWDZjOVpiN+m14Q2AUdJuZ8w4FR/+nZYTSzCkIWfdYNrJxLb5z
 c1gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hde9qb7LPuwMqk7FJKwIRorynLZ1BAaIyhJS+nYdn8g=;
 b=OZSCUkbOmy6X/VV1UlKa8GPkaMFhnr1dl/BZ6NXMRuv6s+mD+hSO3tQRO03OFd0q5P
 G/EExMfTPdvQwjqQbEVfPmkXG27w9xGs4p4RSrr9uGBqCB8QQXK60hB/w4no1pHvyYwS
 jXgx/3TwS9P4w09fogFcOoNJ8NBXTZc5k9/YYpXLIIsUaE3IhH2v0KgLHZGn7v76YRYi
 KdyNp6dc2IOVTjJFb53L+cVm0CpfgNghurK19kzcCEYT7fFLGyj/1pn+jL1M6uiH5hrn
 xK/RntQ4ld3i2y4+3OQumTirCGWToc0movoHPMcD5t2JKu3hSahrep77HbE3jhTgvbUc
 WxSg==
X-Gm-Message-State: AOAM531mTrwrAODaoM6XIOi0LUJgCzbY400YFlj6CGKXlMuvdityomOx
 kcTFgmwDl8Q/TE/ixFZLmgPh1ooAwmg=
X-Google-Smtp-Source: ABdhPJzziU2HFBhTJLbMizrTQhHiAESYAz1BvaCuoJOW3+xi6551Sg1f3W1WC0lMd2V9NM7Md8NqZA==
X-Received: by 2002:a5d:6c67:: with SMTP id r7mr24027875wrz.29.1632301850679; 
 Wed, 22 Sep 2021 02:10:50 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:10:50 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:22 +0200
Message-Id: <20210922091044.2612-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 04/26] dma-buf: use new iterator in
 dma_resv_get_fences v2
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

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KCnYyOiB1c2Ugc2l6ZW9mKHZvaWQq
KSBpbnN0ZWFkCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+ClJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZm
d2xsLmNoPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMTA4ICsrKysrKysrKysr
KystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzNiBpbnNlcnRpb25z
KCspLCA3MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJl
c3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4IDU1NmQ1YWZhZmUzZi4uY2Rl
OTdlNGU1NDdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpAQCAtNTMwLDk5ICs1MzAsNjMgQEAgRVhQT1JUX1NZ
TUJPTChkbWFfcmVzdl9jb3B5X2ZlbmNlcyk7CiAgKiBkbWFfcmVzdl9nZXRfZmVuY2VzIC0gR2V0
IGFuIG9iamVjdCdzIHNoYXJlZCBhbmQgZXhjbHVzaXZlCiAgKiBmZW5jZXMgd2l0aG91dCB1cGRh
dGUgc2lkZSBsb2NrIGhlbGQKICAqIEBvYmo6IHRoZSByZXNlcnZhdGlvbiBvYmplY3QKLSAqIEBw
ZmVuY2VfZXhjbDogdGhlIHJldHVybmVkIGV4Y2x1c2l2ZSBmZW5jZSAob3IgTlVMTCkKLSAqIEBw
c2hhcmVkX2NvdW50OiB0aGUgbnVtYmVyIG9mIHNoYXJlZCBmZW5jZXMgcmV0dXJuZWQKLSAqIEBw
c2hhcmVkOiB0aGUgYXJyYXkgb2Ygc2hhcmVkIGZlbmNlIHB0cnMgcmV0dXJuZWQgKGFycmF5IGlz
IGtyZWFsbG9jJ2QgdG8KKyAqIEBmZW5jZV9leGNsOiB0aGUgcmV0dXJuZWQgZXhjbHVzaXZlIGZl
bmNlIChvciBOVUxMKQorICogQHNoYXJlZF9jb3VudDogdGhlIG51bWJlciBvZiBzaGFyZWQgZmVu
Y2VzIHJldHVybmVkCisgKiBAc2hhcmVkOiB0aGUgYXJyYXkgb2Ygc2hhcmVkIGZlbmNlIHB0cnMg
cmV0dXJuZWQgKGFycmF5IGlzIGtyZWFsbG9jJ2QgdG8KICAqIHRoZSByZXF1aXJlZCBzaXplLCBh
bmQgbXVzdCBiZSBmcmVlZCBieSBjYWxsZXIpCiAgKgogICogUmV0cmlldmUgYWxsIGZlbmNlcyBm
cm9tIHRoZSByZXNlcnZhdGlvbiBvYmplY3QuIElmIHRoZSBwb2ludGVyIGZvciB0aGUKICAqIGV4
Y2x1c2l2ZSBmZW5jZSBpcyBub3Qgc3BlY2lmaWVkIHRoZSBmZW5jZSBpcyBwdXQgaW50byB0aGUg
YXJyYXkgb2YgdGhlCiAgKiBzaGFyZWQgZmVuY2VzIGFzIHdlbGwuIFJldHVybnMgZWl0aGVyIHpl
cm8gb3IgLUVOT01FTS4KICAqLwotaW50IGRtYV9yZXN2X2dldF9mZW5jZXMoc3RydWN0IGRtYV9y
ZXN2ICpvYmosIHN0cnVjdCBkbWFfZmVuY2UgKipwZmVuY2VfZXhjbCwKLQkJCXVuc2lnbmVkIGlu
dCAqcHNoYXJlZF9jb3VudCwKLQkJCXN0cnVjdCBkbWFfZmVuY2UgKioqcHNoYXJlZCkKK2ludCBk
bWFfcmVzdl9nZXRfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNl
ICoqZmVuY2VfZXhjbCwKKwkJCXVuc2lnbmVkIGludCAqc2hhcmVkX2NvdW50LCBzdHJ1Y3QgZG1h
X2ZlbmNlICoqKnNoYXJlZCkKIHsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICoqc2hhcmVkID0gTlVMTDsK
LQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZV9leGNsOwotCXVuc2lnbmVkIGludCBzaGFyZWRfY291
bnQ7Ci0JaW50IHJldCA9IDE7Ci0KLQlkbyB7Ci0JCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmb2Jq
OwotCQl1bnNpZ25lZCBpbnQgaSwgc2VxOwotCQlzaXplX3Qgc3ogPSAwOwotCi0JCXNoYXJlZF9j
b3VudCA9IGkgPSAwOwotCi0JCXJjdV9yZWFkX2xvY2soKTsKLQkJc2VxID0gcmVhZF9zZXFjb3Vu
dF9iZWdpbigmb2JqLT5zZXEpOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKKwlzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAotCQlmZW5jZV9leGNsID0gZG1hX3Jlc3ZfZXhjbF9mZW5j
ZShvYmopOwotCQlpZiAoZmVuY2VfZXhjbCAmJiAhZG1hX2ZlbmNlX2dldF9yY3UoZmVuY2VfZXhj
bCkpCi0JCQlnb3RvIHVubG9jazsKKwkqc2hhcmVkX2NvdW50ID0gMDsKKwkqc2hhcmVkID0gTlVM
TDsKIAotCQlmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqKTsKLQkJaWYgKGZvYmopCi0J
CQlzeiArPSBzaXplb2YoKnNoYXJlZCkgKiBmb2JqLT5zaGFyZWRfbWF4OworCWlmIChmZW5jZV9l
eGNsKQorCQkqZmVuY2VfZXhjbCA9IE5VTEw7CiAKLQkJaWYgKCFwZmVuY2VfZXhjbCAmJiBmZW5j
ZV9leGNsKQotCQkJc3ogKz0gc2l6ZW9mKCpzaGFyZWQpOworCWRtYV9yZXN2X2l0ZXJfYmVnaW4o
JmN1cnNvciwgb2JqLCB0cnVlKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgm
Y3Vyc29yLCBmZW5jZSkgewogCi0JCWlmIChzeikgewotCQkJc3RydWN0IGRtYV9mZW5jZSAqKm5z
aGFyZWQ7CisJCWlmIChkbWFfcmVzdl9pdGVyX2lzX3Jlc3RhcnRlZCgmY3Vyc29yKSkgeworCQkJ
dW5zaWduZWQgaW50IGNvdW50OwogCi0JCQluc2hhcmVkID0ga3JlYWxsb2Moc2hhcmVkLCBzeiwK
LQkJCQkJICAgR0ZQX05PV0FJVCB8IF9fR0ZQX05PV0FSTik7Ci0JCQlpZiAoIW5zaGFyZWQpIHsK
LQkJCQlyY3VfcmVhZF91bmxvY2soKTsKKwkJCXdoaWxlICgqc2hhcmVkX2NvdW50KQorCQkJCWRt
YV9mZW5jZV9wdXQoKCpzaGFyZWQpWy0tKCpzaGFyZWRfY291bnQpXSk7CiAKLQkJCQlkbWFfZmVu
Y2VfcHV0KGZlbmNlX2V4Y2wpOwotCQkJCWZlbmNlX2V4Y2wgPSBOVUxMOworCQkJaWYgKGZlbmNl
X2V4Y2wpCisJCQkJZG1hX2ZlbmNlX3B1dCgqZmVuY2VfZXhjbCk7CiAKLQkJCQluc2hhcmVkID0g
a3JlYWxsb2Moc2hhcmVkLCBzeiwgR0ZQX0tFUk5FTCk7Ci0JCQkJaWYgKG5zaGFyZWQpIHsKLQkJ
CQkJc2hhcmVkID0gbnNoYXJlZDsKLQkJCQkJY29udGludWU7Ci0JCQkJfQorCQkJY291bnQgPSBj
dXJzb3IuZmVuY2VzID8gY3Vyc29yLmZlbmNlcy0+c2hhcmVkX2NvdW50IDogMDsKKwkJCWNvdW50
ICs9IGZlbmNlX2V4Y2wgPyAwIDogMTsKIAotCQkJCXJldCA9IC1FTk9NRU07Ci0JCQkJYnJlYWs7
Ci0JCQl9Ci0JCQlzaGFyZWQgPSBuc2hhcmVkOwotCQkJc2hhcmVkX2NvdW50ID0gZm9iaiA/IGZv
YmotPnNoYXJlZF9jb3VudCA6IDA7Ci0JCQlmb3IgKGkgPSAwOyBpIDwgc2hhcmVkX2NvdW50OyAr
K2kpIHsKLQkJCQlzaGFyZWRbaV0gPSByY3VfZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsK
LQkJCQlpZiAoIWRtYV9mZW5jZV9nZXRfcmN1KHNoYXJlZFtpXSkpCi0JCQkJCWJyZWFrOworCQkJ
LyogRXZlbnR1YWxseSByZS1hbGxvY2F0ZSB0aGUgYXJyYXkgKi8KKwkJCSpzaGFyZWQgPSBrcmVh
bGxvY19hcnJheSgqc2hhcmVkLCBjb3VudCwKKwkJCQkJCSBzaXplb2Yodm9pZCAqKSwKKwkJCQkJ
CSBHRlBfS0VSTkVMKTsKKwkJCWlmIChjb3VudCAmJiAhKnNoYXJlZCkgeworCQkJCWRtYV9yZXN2
X2l0ZXJfZW5kKCZjdXJzb3IpOworCQkJCXJldHVybiAtRU5PTUVNOwogCQkJfQogCQl9CiAKLQkJ
aWYgKGkgIT0gc2hhcmVkX2NvdW50IHx8IHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBz
ZXEpKSB7Ci0JCQl3aGlsZSAoaS0tKQotCQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKLQkJ
CWRtYV9mZW5jZV9wdXQoZmVuY2VfZXhjbCk7Ci0JCQlnb3RvIHVubG9jazsKLQkJfQotCi0JCXJl
dCA9IDA7Ci11bmxvY2s6Ci0JCXJjdV9yZWFkX3VubG9jaygpOwotCX0gd2hpbGUgKHJldCk7Ci0K
LQlpZiAocGZlbmNlX2V4Y2wpCi0JCSpwZmVuY2VfZXhjbCA9IGZlbmNlX2V4Y2w7Ci0JZWxzZSBp
ZiAoZmVuY2VfZXhjbCkKLQkJc2hhcmVkW3NoYXJlZF9jb3VudCsrXSA9IGZlbmNlX2V4Y2w7CisJ
CWlmIChkbWFfcmVzdl9pdGVyX2lzX2V4Y2x1c2l2ZSgmY3Vyc29yKSAmJiBmZW5jZV9leGNsKQor
CQkJKmZlbmNlX2V4Y2wgPSBmZW5jZTsKKwkJZWxzZQorCQkJKCpzaGFyZWQpWygqc2hhcmVkX2Nv
dW50KSsrXSA9IGZlbmNlOwogCi0JaWYgKCFzaGFyZWRfY291bnQpIHsKLQkJa2ZyZWUoc2hhcmVk
KTsKLQkJc2hhcmVkID0gTlVMTDsKKwkJLyogRG9uJ3QgZHJvcCB0aGUgcmVmZXJlbmNlICovCisJ
CWZlbmNlID0gTlVMTDsKIAl9CisJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAKLQkqcHNo
YXJlZF9jb3VudCA9IHNoYXJlZF9jb3VudDsKLQkqcHNoYXJlZCA9IHNoYXJlZDsKLQlyZXR1cm4g
cmV0OworCXJldHVybiAwOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfZ2V0X2ZlbmNl
cyk7CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
