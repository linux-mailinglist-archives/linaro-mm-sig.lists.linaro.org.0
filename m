Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3795C42254A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:38:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EA5760B4F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:38:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CF6C360D3D; Tue,  5 Oct 2021 11:38:32 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9BE063261;
	Tue,  5 Oct 2021 11:38:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 601BE60591
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4C9C86051A; Tue,  5 Oct 2021 11:37:51 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 9518B6051A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:49 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id r7so21265090wrc.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U6RuQegBioz/4N3AaXbIj8kc2CNOG/D15/qkmZhLY1o=;
 b=evoUvuNbcUZSvrRFY6KbOxMbSeqts+aR73fUmoxZGmDf/TahK9F4e03OCWpR61hVlj
 bKRcDpqYlFwhm+6EIXEIWaeLTXa8ZRGs1y26MFGeoZMtfjcbMB5L6zqwJ6bmGDtvCfjH
 laPFKJTHutLZXmVvHzZA0wXehEiiKODGp6cqKZKVRBTOS4d8kfAYkrVzvfWnwiVENZcW
 +9CC9OWYMXWU1d+vv8dyeml7L30WSTCVSAXxCzkU3vd7Z1z72NkZa4KYAxc7Lh4fe8PL
 Q9qP70HPQQiaOsAh4JL7rlUuF0Cf/fQdu8HBXOHpIkEjQDGfjDOUJvNwoNvc4U1cjDKh
 autw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U6RuQegBioz/4N3AaXbIj8kc2CNOG/D15/qkmZhLY1o=;
 b=yRpUxyyvoV2SWjPvjD5yBkoN7xAszyVLtLSEC/H9I0c06ToJzy3rMbkZtClo1DsTbC
 2DaUQJgyNRH9CyGmWVbj8dFrevIR1XjoEGXXNkGe18b/7uqKmW/BJyGCFkFPqQ21pohi
 L1VoI4rKR+MJUIBNNy6hjJ6IhR98iJwMUKFhLr4jmP/aJCijE06poo8p7c3alUSu3hZI
 EsmD+t4g6UU9H312HLQ90KDLpGa8gAAC551zCLlz5oQ7n0wB9XQsjkC3/PdMTmnhjgbg
 YlN2+JbMnBAWvTiCag7dn4MBVjd7BPRhyqtRY0XayjWllgXnhPy95b65CPjPNpFyJm98
 9h4A==
X-Gm-Message-State: AOAM533ppQ8yM8Y6YGSYyzvLG22GJO4zLyz2isbD7v77e68PqkZHE/NX
 zmeqzEtzUeeVN5dnXIJpc3eF7tfTm0Q=
X-Google-Smtp-Source: ABdhPJwpw+q0kqLl9bdX7HVh0bMqCAshsNFaW5TeP8YCzbBp5tCIcYtg/84BZJYXm22Dlh8qa9tABA==
X-Received: by 2002:a5d:6d8e:: with SMTP id l14mr20721837wrs.270.1633433868683; 
 Tue, 05 Oct 2021 04:37:48 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:48 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:18 +0200
Message-Id: <20211005113742.1101-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 04/28] dma-buf: use new iterator in
 dma_resv_copy_fences
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
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2Ugd2hlcmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClJldmlld2VkLWJ5OiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jIHwgODQgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCA1MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVz
di5jCmluZGV4IDIzMWJhZTE3M2VmMS4uZTVlYTQyZGYwYzZiIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpAQCAt
NDgxLDc0ICs0ODEsNTQgQEAgRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfaXRlcl9uZXh0KTsK
ICAqLwogaW50IGRtYV9yZXN2X2NvcHlfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqZHN0LCBzdHJ1
Y3QgZG1hX3Jlc3YgKnNyYykKIHsKLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqc3JjX2xpc3QsICpk
c3RfbGlzdDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpvbGQsICpuZXc7Ci0JdW5zaWduZWQgaW50IGk7
CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfcmVzdl9saXN0ICps
aXN0OworCXN0cnVjdCBkbWFfZmVuY2UgKmYsICpleGNsOwogCiAJZG1hX3Jlc3ZfYXNzZXJ0X2hl
bGQoZHN0KTsKIAotCXJjdV9yZWFkX2xvY2soKTsKLQlzcmNfbGlzdCA9IGRtYV9yZXN2X3NoYXJl
ZF9saXN0KHNyYyk7CisJbGlzdCA9IE5VTEw7CisJZXhjbCA9IE5VTEw7CiAKLXJldHJ5OgotCWlm
IChzcmNfbGlzdCkgewotCQl1bnNpZ25lZCBpbnQgc2hhcmVkX2NvdW50ID0gc3JjX2xpc3QtPnNo
YXJlZF9jb3VudDsKKwlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIHNyYywgdHJ1ZSk7CisJ
ZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZikgewogCi0JCXJjdV9y
ZWFkX3VubG9jaygpOworCQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19yZXN0YXJ0ZWQoJmN1cnNvcikp
IHsKKwkJCWRtYV9yZXN2X2xpc3RfZnJlZShsaXN0KTsKKwkJCWRtYV9mZW5jZV9wdXQoZXhjbCk7
CiAKLQkJZHN0X2xpc3QgPSBkbWFfcmVzdl9saXN0X2FsbG9jKHNoYXJlZF9jb3VudCk7Ci0JCWlm
ICghZHN0X2xpc3QpCi0JCQlyZXR1cm4gLUVOT01FTTsKKwkJCWlmIChjdXJzb3IuZmVuY2VzKSB7
CisJCQkJdW5zaWduZWQgaW50IGNudCA9IGN1cnNvci5mZW5jZXMtPnNoYXJlZF9jb3VudDsKIAot
CQlyY3VfcmVhZF9sb2NrKCk7Ci0JCXNyY19saXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qoc3Jj
KTsKLQkJaWYgKCFzcmNfbGlzdCB8fCBzcmNfbGlzdC0+c2hhcmVkX2NvdW50ID4gc2hhcmVkX2Nv
dW50KSB7Ci0JCQlrZnJlZShkc3RfbGlzdCk7Ci0JCQlnb3RvIHJldHJ5OwotCQl9Ci0KLQkJZHN0
X2xpc3QtPnNoYXJlZF9jb3VudCA9IDA7Ci0JCWZvciAoaSA9IDA7IGkgPCBzcmNfbGlzdC0+c2hh
cmVkX2NvdW50OyArK2kpIHsKLQkJCXN0cnVjdCBkbWFfZmVuY2UgX19yY3UgKipkc3Q7Ci0JCQlz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwkJCQlsaXN0ID0gZG1hX3Jlc3ZfbGlzdF9hbGxvYyhj
bnQpOworCQkJCWlmICghbGlzdCkgeworCQkJCQlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsK
KwkJCQkJcmV0dXJuIC1FTk9NRU07CisJCQkJfQogCi0JCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5j
ZShzcmNfbGlzdC0+c2hhcmVkW2ldKTsKLQkJCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19T
SUdOQUxFRF9CSVQsCi0JCQkJICAgICAmZmVuY2UtPmZsYWdzKSkKLQkJCQljb250aW51ZTsKKwkJ
CQlsaXN0LT5zaGFyZWRfY291bnQgPSAwOwogCi0JCQlpZiAoIWRtYV9mZW5jZV9nZXRfcmN1KGZl
bmNlKSkgewotCQkJCWRtYV9yZXN2X2xpc3RfZnJlZShkc3RfbGlzdCk7Ci0JCQkJc3JjX2xpc3Qg
PSBkbWFfcmVzdl9zaGFyZWRfbGlzdChzcmMpOwotCQkJCWdvdG8gcmV0cnk7CisJCQl9IGVsc2Ug
eworCQkJCWxpc3QgPSBOVUxMOwogCQkJfQotCi0JCQlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVk
KGZlbmNlKSkgewotCQkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCQkJCWNvbnRpbnVlOwotCQkJ
fQotCi0JCQlkc3QgPSAmZHN0X2xpc3QtPnNoYXJlZFtkc3RfbGlzdC0+c2hhcmVkX2NvdW50Kytd
OwotCQkJcmN1X2Fzc2lnbl9wb2ludGVyKCpkc3QsIGZlbmNlKTsKKwkJCWV4Y2wgPSBOVUxMOwog
CQl9Ci0JfSBlbHNlIHsKLQkJZHN0X2xpc3QgPSBOVUxMOwotCX0KIAotCW5ldyA9IGRtYV9mZW5j
ZV9nZXRfcmN1X3NhZmUoJnNyYy0+ZmVuY2VfZXhjbCk7Ci0JcmN1X3JlYWRfdW5sb2NrKCk7Ci0K
LQlzcmNfbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KGRzdCk7Ci0Jb2xkID0gZG1hX3Jlc3Zf
ZXhjbF9mZW5jZShkc3QpOworCQlkbWFfZmVuY2VfZ2V0KGYpOworCQlpZiAoZG1hX3Jlc3ZfaXRl
cl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQlleGNsID0gZjsKKwkJZWxzZQorCQkJUkNVX0lO
SVRfUE9JTlRFUihsaXN0LT5zaGFyZWRbbGlzdC0+c2hhcmVkX2NvdW50KytdLCBmKTsKKwl9CisJ
ZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAKIAl3cml0ZV9zZXFjb3VudF9iZWdpbigmZHN0
LT5zZXEpOwotCS8qIHdyaXRlX3NlcWNvdW50X2JlZ2luIHByb3ZpZGVzIHRoZSBuZWNlc3Nhcnkg
bWVtb3J5IGJhcnJpZXIgKi8KLQlSQ1VfSU5JVF9QT0lOVEVSKGRzdC0+ZmVuY2VfZXhjbCwgbmV3
KTsKLQlSQ1VfSU5JVF9QT0lOVEVSKGRzdC0+ZmVuY2UsIGRzdF9saXN0KTsKKwlleGNsID0gcmN1
X3JlcGxhY2VfcG9pbnRlcihkc3QtPmZlbmNlX2V4Y2wsIGV4Y2wsIGRtYV9yZXN2X2hlbGQoZHN0
KSk7CisJbGlzdCA9IHJjdV9yZXBsYWNlX3BvaW50ZXIoZHN0LT5mZW5jZSwgbGlzdCwgZG1hX3Jl
c3ZfaGVsZChkc3QpKTsKIAl3cml0ZV9zZXFjb3VudF9lbmQoJmRzdC0+c2VxKTsKIAotCWRtYV9y
ZXN2X2xpc3RfZnJlZShzcmNfbGlzdCk7Ci0JZG1hX2ZlbmNlX3B1dChvbGQpOworCWRtYV9yZXN2
X2xpc3RfZnJlZShsaXN0KTsKKwlkbWFfZmVuY2VfcHV0KGV4Y2wpOwogCiAJcmV0dXJuIDA7CiB9
Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
