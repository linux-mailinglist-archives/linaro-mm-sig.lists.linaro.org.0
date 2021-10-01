Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CD141EA93
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:07:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E675D63413
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:07:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 58016611B2; Fri,  1 Oct 2021 10:07:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DF2C6328C;
	Fri,  1 Oct 2021 10:07:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1C83060F2B
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 064CA61020; Fri,  1 Oct 2021 10:06:25 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 801D460B91
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:20 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id d21so14576592wra.12
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DLn0ZmdbAH2RzPW/tcdHG/ty+pcMQGDFLOQ2PJC46s4=;
 b=NnfkMsQhVQWp+VnHgA4QOViEoonm7dolqt+Q+FjQOGMRuaaz0cXgLDrRVRcRedMDup
 kRDPMlSFOdbZU7jwq0tjQhlPU3duqxg99UpWsUBnodzqWKWWpetIeH1ePZuGy+RHfHAG
 LQQ6i5PFFXlGnyVOVZx6CTAYV7LG16mvi7qbOB7gXt0gEblm226RcpYZ0wWFVuYMHRFU
 sMMCMdTEbZcdKZw0YI5mogh8BsIB9V6opYA9yM0XSz9JzYor0/Lud/GTsePfepSguJZu
 xxRNdcNKJ5DSg56p7fqG9tUs9oc0OvYzCyL4lmPTrCjyIGlwCJMn+MtrnUzlMaFCobb8
 YU0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DLn0ZmdbAH2RzPW/tcdHG/ty+pcMQGDFLOQ2PJC46s4=;
 b=I+JWIDrO92apFeJdlYHi3K5SkEGwlZfJQ8fjXcBa2/kBcPyLgPW1EeaIZM5BoMCT/8
 1hHrLV9kgl49+xlIaOUNoiEEibRdkHusvORj9P+Gm1YJ8UXVRYwWuNhwGVwzgg0o1uIP
 XU/HuvV91qAYOIYcnLsQEgxYIpWJhn0GZso3d6+KpxHul/zVytQpU+an7gtY2tBD3+NG
 18cn2OGogCO4o/HRCI7lHCewBXUYd+MTdJBfiUkO1MwY9Gyhfk+naJ6Uxf5kfsKE+1iD
 c75Z2h/OoBknBOda1HDuH+zm9skhxESUyrtttYaNLBqygBCocBlPt+gMb0yKGPTHMcmD
 8p8Q==
X-Gm-Message-State: AOAM531sozE2q+lHaynAcDabd2Sja3HTKZdceT3jfAdqGsDEHcXqcu4t
 lb1sVOSgH6fCnasE3yzbUIsRpyq7cXY=
X-Google-Smtp-Source: ABdhPJz/aW5sUJgBDhsPc6PbxZWz95pBOKKVeJgdt0cjwyv9AG40FNPNmoDglQ/xHFW1pSioYbjPQg==
X-Received: by 2002:adf:a2c8:: with SMTP id t8mr8546800wra.215.1633082778942; 
 Fri, 01 Oct 2021 03:06:18 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:18 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:05:48 +0200
Message-Id: <20211001100610.2899-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/28] dma-buf: use new iterator in
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
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMgfCA2OSArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YwppbmRleCA5YjQ5NDgyOGU3Y2EuLjUxMGUxNWY4MDViYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTYx
MSw3NCArNjExLDIxIEBAIGxvbmcgZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KHN0cnVjdCBkbWFfcmVz
diAqb2JqLCBib29sIHdhaXRfYWxsLCBib29sIGludHIsCiAJCQkgICB1bnNpZ25lZCBsb25nIHRp
bWVvdXQpCiB7CiAJbG9uZyByZXQgPSB0aW1lb3V0ID8gdGltZW91dCA6IDE7Ci0JdW5zaWduZWQg
aW50IHNlcSwgc2hhcmVkX2NvdW50OworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKLQlpbnQgaTsKLQotcmV0cnk6Ci0Jc2hhcmVkX2NvdW50
ID0gMDsKLQlzZXEgPSByZWFkX3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7Ci0JcmN1X3JlYWRf
bG9jaygpOwotCWkgPSAtMTsKLQotCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmopOwot
CWlmIChmZW5jZSAmJiAhdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVu
Y2UtPmZsYWdzKSkgewotCQlpZiAoIWRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlKSkKLQkJCWdvdG8g
dW5sb2NrX3JldHJ5OwotCi0JCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKSB7Ci0J
CQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQkJCWZlbmNlID0gTlVMTDsKLQkJfQotCi0JfSBlbHNl
IHsKLQkJZmVuY2UgPSBOVUxMOwotCX0KLQotCWlmICh3YWl0X2FsbCkgewotCQlzdHJ1Y3QgZG1h
X3Jlc3ZfbGlzdCAqZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iaik7Ci0KLQkJaWYgKGZv
YmopCi0JCQlzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Ci0KLQkJZm9yIChpID0g
MDsgIWZlbmNlICYmIGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewotCQkJc3RydWN0IGRtYV9mZW5j
ZSAqbGZlbmNlOwotCi0JCQlsZmVuY2UgPSByY3VfZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ld
KTsKLQkJCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsCi0JCQkJICAg
ICAmbGZlbmNlLT5mbGFncykpCi0JCQkJY29udGludWU7CiAKLQkJCWlmICghZG1hX2ZlbmNlX2dl
dF9yY3UobGZlbmNlKSkKLQkJCQlnb3RvIHVubG9ja19yZXRyeTsKLQotCQkJaWYgKGRtYV9mZW5j
ZV9pc19zaWduYWxlZChsZmVuY2UpKSB7Ci0JCQkJZG1hX2ZlbmNlX3B1dChsZmVuY2UpOwotCQkJ
CWNvbnRpbnVlOwotCQkJfQorCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB3YWl0
X2FsbCk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2Up
IHsKIAotCQkJZmVuY2UgPSBsZmVuY2U7Ci0JCQlicmVhazsKKwkJcmV0ID0gZG1hX2ZlbmNlX3dh
aXRfdGltZW91dChmZW5jZSwgaW50ciwgcmV0KTsKKwkJaWYgKHJldCA8PSAwKSB7CisJCQlkbWFf
cmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKKwkJCXJldHVybiByZXQ7CiAJCX0KIAl9CisJZG1hX3Jl
c3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAKLQlyY3VfcmVhZF91bmxvY2soKTsKLQlpZiAoZmVuY2Up
IHsKLQkJaWYgKHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEpKSB7Ci0JCQlkbWFf
ZmVuY2VfcHV0KGZlbmNlKTsKLQkJCWdvdG8gcmV0cnk7Ci0JCX0KLQotCQlyZXQgPSBkbWFfZmVu
Y2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOwotCQlkbWFfZmVuY2VfcHV0KGZlbmNl
KTsKLQkJaWYgKHJldCA+IDAgJiYgd2FpdF9hbGwgJiYgKGkgKyAxIDwgc2hhcmVkX2NvdW50KSkK
LQkJCWdvdG8gcmV0cnk7Ci0JfQogCXJldHVybiByZXQ7Ci0KLXVubG9ja19yZXRyeToKLQlyY3Vf
cmVhZF91bmxvY2soKTsKLQlnb3RvIHJldHJ5OwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jl
c3Zfd2FpdF90aW1lb3V0KTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
