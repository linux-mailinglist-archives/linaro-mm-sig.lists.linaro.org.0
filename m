Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A84408C50
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:17:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8085E61F45
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:17:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DBC5E6242B; Mon, 13 Sep 2021 13:17:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5A8863525;
	Mon, 13 Sep 2021 13:17:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3EB7961020
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DEB22619C1; Mon, 13 Sep 2021 13:17:25 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 518AE6362B
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:21 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id i23so14675028wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UXwMb5OzeQZCq2ep7DQI78NOviskj8HdDAhnVXfOFMU=;
 b=LQIuxs2NluvtAbILKztkthcoLKkqD6fyLabolUUj647rumDSoPZx0BeMEvboQ+otzy
 BJWXRJbhsrllWKo8MHY+kg0rQV6ZQz1jBoo4flqC+Jf12xv7pvy9hBZeVBStFeSM0OEl
 vSCO6Pb1oowtrRQI7Oc49+ul3KFm8QsBr7MeMFSWWLmxd/xrqtwK+AA6U9IkVMkm7JfP
 xpKxgXLPHIGnosFmvOPCa2ZzDdq/26DoXKxqZ7Qfb5/6XQRBoPqqbcezehbE1vtdXyMq
 56wSMp66QCJ03AA4sGtZU3tHVWz7BK/HJBLJ4HZq8xQvLF6rOg35EdEnSOVzy67ANWOU
 OT6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UXwMb5OzeQZCq2ep7DQI78NOviskj8HdDAhnVXfOFMU=;
 b=zyvNuK47uyd8U/pXXYNJ5Eiy/uVUO49ZumSttkcqhmhRQeFUM9WeGzLZOkWzNJ7xkH
 jq1G/4DsPlQHzW9xInY5BvBibwYca+4MOPDHQqlC7Aw/40MdTMH2kjI9BYzzLkNyOoOC
 xhgklsnNBuyEuKrBf7jnJ+6SPtlWF004c7m+WJRV9ddy7JeEU+oV945p0oof26Ir5xHA
 niGbwwP+/cCVdNpBlMS9jg1O94WgQYRtBHPhESLK+6hMTkjb/IQPDb0IBYOZ0qKCMOP9
 EqBLiVGdhl9ZCfbnnVucLF4VWkJCojo1YB1Ar5xYotugtF0OO1zAnMfwGSZXJJk2gOGM
 hzww==
X-Gm-Message-State: AOAM5333qTS+tssqsbF49EJn6WutpbRrVo6WtKWji0KSlhskvu3qid17
 kJNeti1/6HbQ1zrdsq2C3g5xp8xLiX0/5OqT
X-Google-Smtp-Source: ABdhPJx5SFCa5irhc3GPkkSApCKQ8UhOmfrRvH0dWTDeu8jsU/lOtQoYl+gw39TN1DoV0crmMql88A==
X-Received: by 2002:a5d:4b50:: with SMTP id w16mr12487586wrs.71.1631539039806; 
 Mon, 13 Sep 2021 06:17:19 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:19 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:46 +0200
Message-Id: <20210913131707.45639-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 05/26] dma-buf: use new iterator in
 dma_resv_wait_timeout
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYyB8IDY0ICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1NyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
cmVzdi5jCmluZGV4IDBhMGUzZWU2MjY0OC4uM2NlOTI5Yjc3MGVhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpA
QCAtNTcxLDc0ICs1NzEsMjQgQEAgbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVvdXQoc3RydWN0IGRt
YV9yZXN2ICpvYmosIGJvb2wgd2FpdF9hbGwsIGJvb2wgaW50ciwKIAkJCSAgIHVuc2lnbmVkIGxv
bmcgdGltZW91dCkKIHsKIAlsb25nIHJldCA9IHRpbWVvdXQgPyB0aW1lb3V0IDogMTsKLQl1bnNp
Z25lZCBpbnQgc2VxLCBzaGFyZWRfY291bnQ7CisJc3RydWN0IGRtYV9yZXN2X2N1cnNvciBjdXJz
b3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Ci0JaW50IGk7CiAKLXJldHJ5OgotCXNoYXJl
ZF9jb3VudCA9IDA7Ci0Jc2VxID0gcmVhZF9zZXFjb3VudF9iZWdpbigmb2JqLT5zZXEpOwogCXJj
dV9yZWFkX2xvY2soKTsKLQlpID0gLTE7Ci0KLQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2Uo
b2JqKTsKLQlpZiAoZmVuY2UgJiYgIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJ
VCwgJmZlbmNlLT5mbGFncykpIHsKLQkJaWYgKCFkbWFfZmVuY2VfZ2V0X3JjdShmZW5jZSkpCi0J
CQlnb3RvIHVubG9ja19yZXRyeTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChv
YmosICZjdXJzb3IsIHdhaXRfYWxsLCBmZW5jZSkgeworCQlyY3VfcmVhZF91bmxvY2soKTsKIAot
CQlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkgeworCQlyZXQgPSBkbWFfZmVuY2Vf
d2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOworCQlpZiAocmV0IDw9IDApIHsKIAkJCWRt
YV9mZW5jZV9wdXQoZmVuY2UpOwotCQkJZmVuY2UgPSBOVUxMOworCQkJcmV0dXJuIHJldDsKIAkJ
fQogCi0JfSBlbHNlIHsKLQkJZmVuY2UgPSBOVUxMOwotCX0KLQotCWlmICh3YWl0X2FsbCkgewot
CQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iaik7
Ci0KLQkJaWYgKGZvYmopCi0JCQlzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Ci0K
LQkJZm9yIChpID0gMDsgIWZlbmNlICYmIGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewotCQkJc3Ry
dWN0IGRtYV9mZW5jZSAqbGZlbmNlOwotCi0JCQlsZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9i
ai0+c2hhcmVkW2ldKTsKLQkJCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9C
SVQsCi0JCQkJICAgICAmbGZlbmNlLT5mbGFncykpCi0JCQkJY29udGludWU7Ci0KLQkJCWlmICgh
ZG1hX2ZlbmNlX2dldF9yY3UobGZlbmNlKSkKLQkJCQlnb3RvIHVubG9ja19yZXRyeTsKLQotCQkJ
aWYgKGRtYV9mZW5jZV9pc19zaWduYWxlZChsZmVuY2UpKSB7Ci0JCQkJZG1hX2ZlbmNlX3B1dChs
ZmVuY2UpOwotCQkJCWNvbnRpbnVlOwotCQkJfQotCi0JCQlmZW5jZSA9IGxmZW5jZTsKLQkJCWJy
ZWFrOwotCQl9CisJCXJjdV9yZWFkX2xvY2soKTsKIAl9Ci0KIAlyY3VfcmVhZF91bmxvY2soKTsK
LQlpZiAoZmVuY2UpIHsKLQkJaWYgKHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEp
KSB7Ci0JCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQkJCWdvdG8gcmV0cnk7Ci0JCX0KIAotCQly
ZXQgPSBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOwotCQlkbWFfZmVu
Y2VfcHV0KGZlbmNlKTsKLQkJaWYgKHJldCA+IDAgJiYgd2FpdF9hbGwgJiYgKGkgKyAxIDwgc2hh
cmVkX2NvdW50KSkKLQkJCWdvdG8gcmV0cnk7Ci0JfQogCXJldHVybiByZXQ7Ci0KLXVubG9ja19y
ZXRyeToKLQlyY3VfcmVhZF91bmxvY2soKTsKLQlnb3RvIHJldHJ5OwogfQogRVhQT1JUX1NZTUJP
TF9HUEwoZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
