Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 350F53A94FE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 10:27:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E63186354F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 08:27:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AD33363525; Wed, 16 Jun 2021 08:27:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 850B766050;
	Wed, 16 Jun 2021 08:27:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9449B608C6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8E90361A29; Wed, 16 Jun 2021 08:27:04 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by lists.linaro.org (Postfix) with ESMTPS id 6B0F960A09
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:02 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id dj8so1542548edb.6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 01:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=yylOD234iuv0OMUdGg2HNgmrF+LL5FUxi7mZp3iTQtM=;
 b=IPfZjfHVbG0OCn+KKeCOXK5UK6WlYoq3WBGAITBYT177wcs8YEOrG/D5j6Pp+dx+XV
 vSuDXkWFGTMI7iX1g1KUfz8RItABTnIqmtbDDAY1AWZpafqbDjoaJXVzvEeAeEIwfgaX
 BFPj5kDSgkf4OrxL5PxuTu8KmnfFPOrk1HGMANOPQDIg8H2qYtp5h0nW16B430t54YiA
 MnOxWddiKvBCw6XlkdZViIlvwxe7tfrdg/PKmkm/tQ/RDvOhtvjSZVMHsF6KaTq3m9nA
 dUz3Bob1iSVI11XSMvyWBeYQTflU+vBQWBbgL04E4SnPh1maV/mIVlGaMJQQ8Wty3SNu
 JaEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yylOD234iuv0OMUdGg2HNgmrF+LL5FUxi7mZp3iTQtM=;
 b=TQ9E1QycmV9IOgmEo5IUYOY/hOBo9bNPVhMjgrbjwTb/HB2mmWqjmhzX/tLl8GDnOP
 PcdgK+IBKzMnyZM6vFQi+fCAghZWdYbkPBvIWRq0g2RM4myVyWutoPCPW8tKJ43etCfv
 XryckpJ2DSD7RxRLdDYWdRnqsRNF/qtOj21MhOLZBQ5tUjxikxQcuBupQ1ndQIa4AQhf
 KA2KnfCUhb5/JSvkVjB7lp/b6bzfxUNx5dlH+ZPPQ07Ys/H8xImOzERnKvPe/M1Bl22j
 PEdO5XJFpIos+iQtSE5cj7dz9+71A7vtGxMc/Zo8egSEiWob3XoZfRYgbUpTH4TWCrJR
 B7pw==
X-Gm-Message-State: AOAM532GQS4lad5GcHPn+qdJ00Pt7mn7h7wC+p26eFAO1RhUlaxg+nRq
 cSHMi76ejYbyulqimLi5z4xdV9VWVfs=
X-Google-Smtp-Source: ABdhPJxMIYtsfV1dgkVNP3Vy0nsp5M8aYGD7HNMOvq14lrRQdJQKg7mZZynBVSsqgsANM28ZJBEXJg==
X-Received: by 2002:aa7:d288:: with SMTP id w8mr2730674edq.276.1623832021459; 
 Wed, 16 Jun 2021 01:27:01 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8b88:17a4:582b:121f])
 by smtp.gmail.com with ESMTPSA id v7sm1152639edx.38.2021.06.16.01.27.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 01:27:01 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
Date: Wed, 16 Jun 2021 10:26:51 +0200
Message-Id: <20210616082655.111001-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210616082655.111001-1-christian.koenig@amd.com>
References: <20210616082655.111001-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 3/7] dma-buf: fix dma_resv_test_signaled
 test_all handling v2
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

QXMgdGhlIG5hbWUgaW1wbGllcyBpZiB0ZXN0aW5nIGFsbCBmZW5jZXMgaXMgcmVxdWVzdGVkIHdl
CnNob3VsZCBpbmRlZWQgdGVzdCBhbGwgZmVuY2VzIGFuZCBub3Qgc2tpcCB0aGUgZXhjbHVzaXZl
Cm9uZSBiZWNhdXNlIHdlIHNlZSBzaGFyZWQgb25lcy4KCnYyOiBmaXggbG9naWMgb25jZSBtb3Jl
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAzMyArKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAyMSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4IDRhYjAyYjZjMzg3YS4uMThkZDVhNmNhMDZj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLXJlc3YuYwpAQCAtNjE4LDI1ICs2MTgsMjEgQEAgc3RhdGljIGlubGluZSBpbnQg
ZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5nbGUoc3RydWN0IGRtYV9mZW5jZSAqcGFzc2VkX2Zl
bmNlKQogICovCiBib29sIGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWQoc3RydWN0IGRtYV9yZXN2ICpv
YmosIGJvb2wgdGVzdF9hbGwpCiB7Ci0JdW5zaWduZWQgaW50IHNlcSwgc2hhcmVkX2NvdW50Owor
CXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCXVuc2lnbmVkIGludCBzZXE7CiAJaW50IHJldDsK
IAogCXJjdV9yZWFkX2xvY2soKTsKIHJldHJ5OgogCXJldCA9IHRydWU7Ci0Jc2hhcmVkX2NvdW50
ID0gMDsKIAlzZXEgPSByZWFkX3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7CiAKIAlpZiAodGVz
dF9hbGwpIHsKIAkJc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmogPSBkbWFfcmVzdl9zaGFyZWRf
bGlzdChvYmopOwotCQl1bnNpZ25lZCBpbnQgaTsKLQotCQlpZiAoZm9iaikKLQkJCXNoYXJlZF9j
b3VudCA9IGZvYmotPnNoYXJlZF9jb3VudDsKKwkJdW5zaWduZWQgaW50IGksIHNoYXJlZF9jb3Vu
dDsKIAorCQlzaGFyZWRfY291bnQgPSBmb2JqID8gZm9iai0+c2hhcmVkX2NvdW50IDogMDsKIAkJ
Zm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytpKSB7Ci0JCQlzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZTsKLQogCQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsK
IAkJCXJldCA9IGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWRfc2luZ2xlKGZlbmNlKTsKIAkJCWlmIChy
ZXQgPCAwKQpAQCAtNjQ0LDI0ICs2NDAsMTkgQEAgYm9vbCBkbWFfcmVzdl90ZXN0X3NpZ25hbGVk
KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBib29sIHRlc3RfYWxsKQogCQkJZWxzZSBpZiAoIXJldCkK
IAkJCQlicmVhazsKIAkJfQotCi0JCWlmIChyZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPnNlcSwg
c2VxKSkKLQkJCWdvdG8gcmV0cnk7CiAJfQogCi0JaWYgKCFzaGFyZWRfY291bnQpIHsKLQkJc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2VfZXhjbCA9IGRtYV9yZXN2X2V4Y2xfZmVuY2Uob2JqKTsKLQot
CQlpZiAoZmVuY2VfZXhjbCkgewotCQkJcmV0ID0gZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5n
bGUoZmVuY2VfZXhjbCk7Ci0JCQlpZiAocmV0IDwgMCkKLQkJCQlnb3RvIHJldHJ5OworCWZlbmNl
ID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmopOworCWlmIChyZXQgJiYgZmVuY2UpIHsKKwkJcmV0
ID0gZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5nbGUoZmVuY2UpOworCQlpZiAocmV0IDwgMCkK
KwkJCWdvdG8gcmV0cnk7CiAKLQkJCWlmIChyZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPnNlcSwg
c2VxKSkKLQkJCQlnb3RvIHJldHJ5OwotCQl9CiAJfQogCisJaWYgKHJlYWRfc2VxY291bnRfcmV0
cnkoJm9iai0+c2VxLCBzZXEpKQorCQlnb3RvIHJldHJ5OworCiAJcmN1X3JlYWRfdW5sb2NrKCk7
CiAJcmV0dXJuIHJldDsKIH0KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
