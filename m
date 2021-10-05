Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DE742255F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:39:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBE2A61456
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:39:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CFA216A901; Tue,  5 Oct 2021 11:38:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 976BD63256;
	Tue,  5 Oct 2021 11:38:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 915CF60900
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CC011606F5; Tue,  5 Oct 2021 11:37:55 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 2D1726051A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:53 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id t8so36889098wri.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oFRvQ6RV96jBX25654PxBqA2cF5GdsX8IuqjMmhPmaQ=;
 b=J0goe+paILeDCstwX5dO+h/f5bdXMgwbJdcHxWzBYkDA/HeUVVb7H7f3ZT71kzpH5S
 wH07Kb8OjSYBSh6h0vemMtzWYVVxScn0nAHYsugxnRIzpyjxekPsCyu/N32zTzHKMuhN
 uvdYf6xWJyTe9P4vEc/nxdliS4yYEBaFmu+b3KHp2nUgOFzkFxsoNuz7zW99HglZHM8D
 1W0ti9/J7LfMY/IlTioCpKEWHfEbhUYRcrtXhuRLexAJ/xMP5aR5ZSITuW8bx4zDwpon
 sRhO9T0gjPqBROkajLhR6xgWMi2VBficySW04o17XHg5jMgmrSbFtO3Y+BFu3MjDKVxn
 nRBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oFRvQ6RV96jBX25654PxBqA2cF5GdsX8IuqjMmhPmaQ=;
 b=kjwoGuaf+4NvsxKwX21maosFpt9QB2eHs4MNjamr2f89Sf566h02t/gAFpcM83hBhN
 e9/T4j/bVn5wL5S7WnJ0BnAYA4+JiPFVYzoLVMZ6mhwrPN8bgrx0LHBoL4QtFwe44O1e
 8RZqrY8yp60h86mc4V8j0//3whs9le+UrqU4I8ZwdiBMdhNknJvV3PhbqJEEYjO8Xa6S
 ite6mh/utTisTAdKG/7rLOnn9oeqgIbNelNrGVe1XOlfce6wiDX+B0tw/L3Fw8Qbbym9
 9jDY7w5eUxbCf44mtldAvHE7AV4htVlkLEk/+YsFMxQBamqlY7CO/JJa7v5QLLh5wTCo
 ZXEQ==
X-Gm-Message-State: AOAM530hsoc4nhftANg7T+AeY6Ew1D08Hz/N9rN4HU8FyHtRj7q97raU
 lCdybUUdhxbrqIH3EzBxN33hd5bJHKw=
X-Google-Smtp-Source: ABdhPJx9O8AMO2EbzbaaLU0qYPUVdrF8sww3tGKZar9j615pxOcLezJVK4/CW3wMxw/5Y8lCl1penQ==
X-Received: by 2002:adf:bb93:: with SMTP id q19mr9464875wrg.423.1633433872113; 
 Tue, 05 Oct 2021 04:37:52 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:51 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:22 +0200
Message-Id: <20211005113742.1101-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/28] dma-buf: use the new iterator in
 dma_buf_debug_show
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
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgfCAyNCArKysrKystLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCmluZGV4IDYxZTIwYWU3YjA4Yi4u
ODI0MmI1ZDliYWViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCisrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTEzNTYsMTAgKzEzNTYsOSBAQCBzdGF0aWMg
aW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkK
IHsKIAlzdHJ1Y3QgZG1hX2J1ZiAqYnVmX29iajsKIAlzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50
ICphdHRhY2hfb2JqOwotCXN0cnVjdCBkbWFfcmVzdiAqcm9iajsKLQlzdHJ1Y3QgZG1hX3Jlc3Zf
bGlzdCAqZm9iajsKKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CiAJc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2U7Ci0JaW50IGNvdW50ID0gMCwgYXR0YWNoX2NvdW50LCBzaGFyZWRfY291bnQs
IGk7CisJaW50IGNvdW50ID0gMCwgYXR0YWNoX2NvdW50OwogCXNpemVfdCBzaXplID0gMDsKIAlp
bnQgcmV0OwogCkBAIC0xMzg2LDIxICsxMzg1LDEwIEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1
Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqdW51c2VkKQogCQkJCWZpbGVfaW5vZGUo
YnVmX29iai0+ZmlsZSktPmlfaW5vLAogCQkJCWJ1Zl9vYmotPm5hbWUgPzogIiIpOwogCi0JCXJv
YmogPSBidWZfb2JqLT5yZXN2OwotCQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2Uocm9iaik7
Ci0JCWlmIChmZW5jZSkKLQkJCXNlcV9wcmludGYocywgIlx0RXhjbHVzaXZlIGZlbmNlOiAlcyAl
cyAlc3NpZ25hbGxlZFxuIiwKLQkJCQkgICBmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25hbWUoZmVu
Y2UpLAotCQkJCSAgIGZlbmNlLT5vcHMtPmdldF90aW1lbGluZV9uYW1lKGZlbmNlKSwKLQkJCQkg
ICBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpID8gIiIgOiAidW4iKTsKLQotCQlmb2JqID0g
cmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChyb2JqLT5mZW5jZSwKLQkJCQkJCSBkbWFfcmVzdl9o
ZWxkKHJvYmopKTsKLQkJc2hhcmVkX2NvdW50ID0gZm9iaiA/IGZvYmotPnNoYXJlZF9jb3VudCA6
IDA7Ci0JCWZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7IGkrKykgewotCQkJZmVuY2UgPSBy
Y3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZvYmotPnNoYXJlZFtpXSwKLQkJCQkJCQkgIGRtYV9y
ZXN2X2hlbGQocm9iaikpOwotCQkJc2VxX3ByaW50ZihzLCAiXHRTaGFyZWQgZmVuY2U6ICVzICVz
ICVzc2lnbmFsbGVkXG4iLAorCQlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCBidWZf
b2JqLT5yZXN2LCB0cnVlLCBmZW5jZSkgeworCQkJc2VxX3ByaW50ZihzLCAiXHQlcyBmZW5jZTog
JXMgJXMgJXNzaWduYWxsZWRcbiIsCisJCQkJICAgZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNpdmUo
JmN1cnNvcikgPworCQkJCQkiRXhjbHVzaXZlIiA6ICJTaGFyZWQiLAogCQkJCSAgIGZlbmNlLT5v
cHMtPmdldF9kcml2ZXJfbmFtZShmZW5jZSksCiAJCQkJICAgZmVuY2UtPm9wcy0+Z2V0X3RpbWVs
aW5lX25hbWUoZmVuY2UpLAogCQkJCSAgIGRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkgPyAi
IiA6ICJ1biIpOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
