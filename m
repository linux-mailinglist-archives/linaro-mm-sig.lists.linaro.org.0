Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3208C4177C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:32:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27EE6603BB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:32:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 23B69623A8; Fri, 24 Sep 2021 15:32:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5098C62433;
	Fri, 24 Sep 2021 15:32:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A1C9C629CD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BFB0662DEF; Fri, 24 Sep 2021 15:31:27 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id F23DA61E96
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:22 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id t28so15273511wra.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cS5iGWKRJZl9e2of130B6u1H96gfOwZtKEhbMlq6Irk=;
 b=I32ZkThQcwKx3to2uBUfDeM5WLqc9uTo/9yKtWlyaVTvtwfxVLqaZkC4oA6eProDkH
 FNaURTTrDBl21EAO+tZRAmjlApg+LCOQ4ijfwScl5XyESPI7OUsnkA5aE781VgCQfqzO
 ng8k2LWOISV9vRzV22rk4rnrPAro1vrJdl4O/Ygv3ozRRCs/bESZ0r07u1meES3+rSyH
 2aXc+DLkA7TWxduJ9LVMopq5WKqF5SKmfPB//BmfNWxR0WjA+J12bQ59HaiKgMzslLJ1
 jrTdIRgBDiCwbpazj2rFmIlrjpnfvduc7LzMxLDr9JlSXJzJ0O4nKS5HfKv39fxFt73n
 XKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cS5iGWKRJZl9e2of130B6u1H96gfOwZtKEhbMlq6Irk=;
 b=pF7/2aDbLIDAoauPmNLhhkKPFpF8tDjnRxeRnct/p4RE42sgenDNS4L4ddxuhGGxoD
 pkN5a9ROOBdhFWrjit4ZLDYY2jzU7fpxJuYyxM097CRYZSIpjoJZ/snSWAYv7UZOtPmA
 y2xNi574y84RPr+ynZ32dwxZlclpaAMsC3Re/t8QCJrvTqPKIMo+HkeMqQsZzt9AFfhf
 xkQJR6jlc/0qKjqlYC/9KV8K0wcxV3T4pgs5XsS8ehvCLBUsm4/bI99rF+WiRYT4Q3Xr
 YJY36zoBA1ER20fyjMU1agbxUCMTAqDT8bYpfE9eE1/JcfNO0laWNef9ANAjl756pDH3
 cWlw==
X-Gm-Message-State: AOAM533BxvWgP/vbAb2l17iqwgjAXYIN1TXJf0xWz5ReCT662tXyArj3
 JV9jtRaOOEjXown5IZ+y2TzjhYTfNN0=
X-Google-Smtp-Source: ABdhPJz5UL0/fv33FZR1HQor/mYzMpKSGiWoxeRCAkd4oZHML1sJxXeamhANPXgWuOMxqrZVbjzmKg==
X-Received: by 2002:a7b:c92f:: with SMTP id h15mr2845866wml.60.1632497482031; 
 Fri, 24 Sep 2021 08:31:22 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:21 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:30:53 +0200
Message-Id: <20210924153113.2159-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 07/27] dma-buf: use new iterator in
 dma_resv_test_signaled
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
YS1yZXN2LmMgfCA1NyArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YwppbmRleCBjZTZkMGFjNDM5MTEuLjQyZWQ3MmRiOTgwMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTYy
OCwyMiArNjI4LDYgQEAgbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVvdXQoc3RydWN0IGRtYV9yZXN2
ICpvYmosIGJvb2wgd2FpdF9hbGwsIGJvb2wgaW50ciwKIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9y
ZXN2X3dhaXRfdGltZW91dCk7CiAKIAotc3RhdGljIGlubGluZSBpbnQgZG1hX3Jlc3ZfdGVzdF9z
aWduYWxlZF9zaW5nbGUoc3RydWN0IGRtYV9mZW5jZSAqcGFzc2VkX2ZlbmNlKQotewotCXN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlLCAqbGZlbmNlID0gcGFzc2VkX2ZlbmNlOwotCWludCByZXQgPSAx
OwotCi0JaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZsZmVuY2Ut
PmZsYWdzKSkgewotCQlmZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1KGxmZW5jZSk7Ci0JCWlmICgh
ZmVuY2UpCi0JCQlyZXR1cm4gLTE7Ci0KLQkJcmV0ID0gISFkbWFfZmVuY2VfaXNfc2lnbmFsZWQo
ZmVuY2UpOwotCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQl9Ci0JcmV0dXJuIHJldDsKLX0KLQog
LyoqCiAgKiBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkIC0gVGVzdCBpZiBhIHJlc2VydmF0aW9uIG9i
amVjdCdzIGZlbmNlcyBoYXZlIGJlZW4KICAqIHNpZ25hbGVkLgpAQCAtNjYwLDQzICs2NDQsMTYg
QEAgc3RhdGljIGlubGluZSBpbnQgZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5nbGUoc3RydWN0
IGRtYV9mZW5jZSAqcGFzc2VkX2ZlbmNlKQogICovCiBib29sIGRtYV9yZXN2X3Rlc3Rfc2lnbmFs
ZWQoc3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgdGVzdF9hbGwpCiB7CisJc3RydWN0IGRtYV9y
ZXN2X2l0ZXIgY3Vyc29yOwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCXVuc2lnbmVkIGlu
dCBzZXE7Ci0JaW50IHJldDsKLQotCXJjdV9yZWFkX2xvY2soKTsKLXJldHJ5OgotCXJldCA9IHRy
dWU7Ci0Jc2VxID0gcmVhZF9zZXFjb3VudF9iZWdpbigmb2JqLT5zZXEpOwotCi0JaWYgKHRlc3Rf
YWxsKSB7Ci0JCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xp
c3Qob2JqKTsKLQkJdW5zaWduZWQgaW50IGksIHNoYXJlZF9jb3VudDsKLQotCQlzaGFyZWRfY291
bnQgPSBmb2JqID8gZm9iai0+c2hhcmVkX2NvdW50IDogMDsKLQkJZm9yIChpID0gMDsgaSA8IHNo
YXJlZF9jb3VudDsgKytpKSB7Ci0JCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZShmb2JqLT5zaGFy
ZWRbaV0pOwotCQkJcmV0ID0gZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5nbGUoZmVuY2UpOwot
CQkJaWYgKHJldCA8IDApCi0JCQkJZ290byByZXRyeTsKLQkJCWVsc2UgaWYgKCFyZXQpCi0JCQkJ
YnJlYWs7Ci0JCX0KLQl9Ci0KLQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2Uob2JqKTsKLQlp
ZiAocmV0ICYmIGZlbmNlKSB7Ci0JCXJldCA9IGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWRfc2luZ2xl
KGZlbmNlKTsKLQkJaWYgKHJldCA8IDApCi0JCQlnb3RvIHJldHJ5OwogCisJZG1hX3Jlc3ZfaXRl
cl9iZWdpbigmY3Vyc29yLCBvYmosIHRlc3RfYWxsKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5j
ZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgeworCQlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29y
KTsKKwkJcmV0dXJuIGZhbHNlOwogCX0KLQotCWlmIChyZWFkX3NlcWNvdW50X3JldHJ5KCZvYmot
PnNlcSwgc2VxKSkKLQkJZ290byByZXRyeTsKLQotCXJjdV9yZWFkX3VubG9jaygpOwotCXJldHVy
biByZXQ7CisJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CisJcmV0dXJuIHRydWU7CiB9CiBF
WFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl90ZXN0X3NpZ25hbGVkKTsKIAotLSAKMi4yNS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
