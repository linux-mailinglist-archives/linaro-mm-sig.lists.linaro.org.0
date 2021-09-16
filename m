Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7700A40D8A2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:31:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48F9C66807
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:31:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 18E5363239; Thu, 16 Sep 2021 11:31:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C45CF63524;
	Thu, 16 Sep 2021 11:31:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4890662EA6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 69DE363413; Thu, 16 Sep 2021 11:30:54 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by lists.linaro.org (Postfix) with ESMTPS id 53E8062D34
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:51 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 u19-20020a7bc053000000b002f8d045b2caso4257923wmc.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SmEE9pL8NZn6FzdcJqJ3nDbf8dXgLtIIV4G2gTnqXrs=;
 b=ndnioQiTNb95g0bmf0LnVfe7cvd/GKqG8htbq8FD19RSEoG6dUcQOczYq5L4Gi6AO2
 7rybT1CGnM9GKJu8Xov1kyXcQMc1Mdcc+V77WIWf4nr852Fp+cEvvr42SwQNoEmWKxQK
 fAsP9f9/KuUCPkwRzlW+8FZmo6U6BuBTF/twNGUYb4sI9CGAPu8tqFd0ciziB0CP2j+Y
 d1EOsAlJ+G0us743yW2IE/t3PwLLM/WBF7WUa2R4nHR10Cj9BRgI53GAhoSRXlrsyFgw
 l+RbLuo3bRM0rsWzcLyIJ7t9zQC7NdQ3xOjZKsUizOeCVd+8QtwWNKnpmpA8U6gIsCW3
 GNqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SmEE9pL8NZn6FzdcJqJ3nDbf8dXgLtIIV4G2gTnqXrs=;
 b=mRPGAsAtEuM5SCVlWGcukidMKkxWf53jQQvHZasw8OUxE4oSzOizwV17YC7V3xzDvS
 hPADtAAa2o0vISpXudRkbtPL26Hci6OJkQ513pqMLHJAGPfN2yJjqGgPREKGxqconYtR
 6oteT+DQNzQ2ARqZCe+C1Jr2uZmhtgRec2CJq2P7/Njsrdqn2poMIFiRKW0nwmQBIYty
 EeS0g8ghKKkg4XvzkiAcaGD64pANjIKQmom2fpY+ymEp1/bFBI30R2duqpFuG3O3z1AT
 057YWn1fe7nPPRRgBYIZMnd3UigwXa2QrXXBpZUyaoY8jdprFe/5vH1HpmiJ1MPD4mbw
 SsBQ==
X-Gm-Message-State: AOAM532aRMVDbjdsok3BvKGU2VNtDwkxSWM3WTUuZi3tVySdi2FO2k8/
 nNUp0zuzCUHg/JCWilFg52Ge8c7xPFH3fyuq
X-Google-Smtp-Source: ABdhPJyBB6aVm1n24PyHbnPPn7Zag9iCtAur84htqEF2IEp5JGTLISYfSiG6K85sGdDj8c9eN4XNxQ==
X-Received: by 2002:a1c:8096:: with SMTP id b144mr4491668wmd.189.1631791850422; 
 Thu, 16 Sep 2021 04:30:50 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:50 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:21 +0200
Message-Id: <20210916113042.3631-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
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
cmVzdi5jCmluZGV4IGJiYTMyODQ3NTMwNC4uNzY0YTcxZWMyMzQ3IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpA
QCAtNTY5LDc0ICs1NjksMjQgQEAgbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVvdXQoc3RydWN0IGRt
YV9yZXN2ICpvYmosIGJvb2wgd2FpdF9hbGwsIGJvb2wgaW50ciwKIAkJCSAgIHVuc2lnbmVkIGxv
bmcgdGltZW91dCkKIHsKIAlsb25nIHJldCA9IHRpbWVvdXQgPyB0aW1lb3V0IDogMTsKLQl1bnNp
Z25lZCBpbnQgc2VxLCBzaGFyZWRfY291bnQ7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29y
OwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCWludCBpOwogCi1yZXRyeToKLQlzaGFyZWRf
Y291bnQgPSAwOwotCXNlcSA9IHJlYWRfc2VxY291bnRfYmVnaW4oJm9iai0+c2VxKTsKIAlyY3Vf
cmVhZF9sb2NrKCk7Ci0JaSA9IC0xOwotCi0JZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKG9i
aik7Ci0JaWYgKGZlbmNlICYmICF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQs
ICZmZW5jZS0+ZmxhZ3MpKSB7Ci0JCWlmICghZG1hX2ZlbmNlX2dldF9yY3UoZmVuY2UpKQotCQkJ
Z290byB1bmxvY2tfcmV0cnk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQob2Jq
LCAmY3Vyc29yLCB3YWl0X2FsbCwgZmVuY2UpIHsKKwkJcmN1X3JlYWRfdW5sb2NrKCk7CiAKLQkJ
aWYgKGRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpIHsKKwkJcmV0ID0gZG1hX2ZlbmNlX3dh
aXRfdGltZW91dChmZW5jZSwgaW50ciwgcmV0KTsKKwkJaWYgKHJldCA8PSAwKSB7CiAJCQlkbWFf
ZmVuY2VfcHV0KGZlbmNlKTsKLQkJCWZlbmNlID0gTlVMTDsKKwkJCXJldHVybiByZXQ7CiAJCX0K
IAotCX0gZWxzZSB7Ci0JCWZlbmNlID0gTlVMTDsKLQl9Ci0KLQlpZiAod2FpdF9hbGwpIHsKLQkJ
c3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChvYmopOwot
Ci0JCWlmIChmb2JqKQotCQkJc2hhcmVkX2NvdW50ID0gZm9iai0+c2hhcmVkX2NvdW50OwotCi0J
CWZvciAoaSA9IDA7ICFmZW5jZSAmJiBpIDwgc2hhcmVkX2NvdW50OyArK2kpIHsKLQkJCXN0cnVj
dCBkbWFfZmVuY2UgKmxmZW5jZTsKLQotCQkJbGZlbmNlID0gcmN1X2RlcmVmZXJlbmNlKGZvYmot
PnNoYXJlZFtpXSk7Ci0JCQlpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklU
LAotCQkJCSAgICAgJmxmZW5jZS0+ZmxhZ3MpKQotCQkJCWNvbnRpbnVlOwotCi0JCQlpZiAoIWRt
YV9mZW5jZV9nZXRfcmN1KGxmZW5jZSkpCi0JCQkJZ290byB1bmxvY2tfcmV0cnk7Ci0KLQkJCWlm
IChkbWFfZmVuY2VfaXNfc2lnbmFsZWQobGZlbmNlKSkgewotCQkJCWRtYV9mZW5jZV9wdXQobGZl
bmNlKTsKLQkJCQljb250aW51ZTsKLQkJCX0KLQotCQkJZmVuY2UgPSBsZmVuY2U7Ci0JCQlicmVh
azsKLQkJfQorCQlyY3VfcmVhZF9sb2NrKCk7CiAJfQotCiAJcmN1X3JlYWRfdW5sb2NrKCk7Ci0J
aWYgKGZlbmNlKSB7Ci0JCWlmIChyZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPnNlcSwgc2VxKSkg
ewotCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7Ci0JCQlnb3RvIHJldHJ5OwotCQl9CiAKLQkJcmV0
ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmZW5jZSwgaW50ciwgcmV0KTsKLQkJZG1hX2ZlbmNl
X3B1dChmZW5jZSk7Ci0JCWlmIChyZXQgPiAwICYmIHdhaXRfYWxsICYmIChpICsgMSA8IHNoYXJl
ZF9jb3VudCkpCi0JCQlnb3RvIHJldHJ5OwotCX0KIAlyZXR1cm4gcmV0OwotCi11bmxvY2tfcmV0
cnk6Ci0JcmN1X3JlYWRfdW5sb2NrKCk7Ci0JZ290byByZXRyeTsKIH0KIEVYUE9SVF9TWU1CT0xf
R1BMKGRtYV9yZXN2X3dhaXRfdGltZW91dCk7CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
