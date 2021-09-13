Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5ED408C4A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:17:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BE1D62079
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:17:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DB77261016; Mon, 13 Sep 2021 13:17:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FA2A61ECD;
	Mon, 13 Sep 2021 13:17:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 686036341D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5AED561F45; Mon, 13 Sep 2021 13:17:20 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 2B1CD61900
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:17 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id t18so14700205wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L5dIDlEb7TduptKFQf5pK4qlvzDeGzLljRLEJA4EwpM=;
 b=pQ5E9nor8DD0+Te1GJVc8/RLM0vudN8sPW+vSHZTJlSAN75M8oPYyYlReH9DfP+HN7
 OPETbwoBgi9lNVMfe3uWkvWE90wm8z9wePHdOOy0P8UkVS7u97K04O9m9zQor7HodNNK
 3WUSjHdQODAz5kj6yr3I4Ggl23wAYe9ivr2JBo/KIkWrvGgi8J0PEDcSXyA/JdQGo4DO
 hv0H5V5NXPMyWggV3yrmBXLrmDfVjEn7eVO4ery2nQXZzVKe+Kv+TpE6aGedJmIN6Cqa
 DJEHk1EgZH7Ubprw4XSrWO/REWryRsuGErChJMlhwJ+LBRP7y9VdZ81Vr1VG8VuzOgyg
 wdyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L5dIDlEb7TduptKFQf5pK4qlvzDeGzLljRLEJA4EwpM=;
 b=ODGGL7DyJPubfVPQK/d9yA/jmdTcqIOi4ioZzGdosCXaBbxC/vUyW++CYapPgnv5aR
 QH6MCZRESjBht7jPV2nDv3IMM8N6UNXT41dui0ZyvJOVtGkKqHi2hCxpnBUp90TfUTno
 K94l0JnCS4OTWJ+lO+19X9I8flhZskz53db7MslHbFJKKEMmfwDMipPsySAaAM2O6VMg
 ZyDR2sW02C3yG3SRQs35TdR9MhVBNopc61iYJoeinZVhpCxEBPUFSLQosGH/I2w+LEqV
 dfd3nwG67l/fzBqn5DHsLr070fbKT/+jWXZU4ggQ87TuTW9cMv/abswOuPHN5YLNsM6s
 bQ/g==
X-Gm-Message-State: AOAM531tRnZjksP+Me8dVwO6u2YUU6LMVeIOeD03ozIFbEbUHTZj+XuT
 wrDwAbhFuZjTqHSwAW8Ac5yMz9SB5Y0Aso/d
X-Google-Smtp-Source: ABdhPJzaQH4KOpbf6GO61yMwP3QETmhZ195CUNktfgLR14D4NqrmOo2KHf2dEVyeFWTRvDbf7nfY/w==
X-Received: by 2002:adf:e745:: with SMTP id c5mr12442991wrn.321.1631539036264; 
 Mon, 13 Sep 2021 06:17:16 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:15 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:44 +0200
Message-Id: <20210913131707.45639-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 03/26] dma-buf: use new iterator in
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2Ugd2hlcmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEt
YnVmL2RtYS1yZXN2LmMgfCA4MSArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDQ5IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMKaW5kZXggOGNiY2NhYWUxNjlkLi45YTljMGJiYTc3MmIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
CkBAIC00MzMsNzQgKzQzMyw1NyBAQCBFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl93YWxrX3Vu
bG9ja2VkKTsKICAqLwogaW50IGRtYV9yZXN2X2NvcHlfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAq
ZHN0LCBzdHJ1Y3QgZG1hX3Jlc3YgKnNyYykKIHsKLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqc3Jj
X2xpc3QsICpkc3RfbGlzdDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpvbGQsICpuZXc7Ci0JdW5zaWdu
ZWQgaW50IGk7CisJc3RydWN0IGRtYV9yZXN2X2N1cnNvciBjdXJzb3I7CisJc3RydWN0IGRtYV9y
ZXN2X2xpc3QgKmxpc3Q7CisJc3RydWN0IGRtYV9mZW5jZSAqZiwgKmV4Y2w7CiAKIAlkbWFfcmVz
dl9hc3NlcnRfaGVsZChkc3QpOwogCi0JcmN1X3JlYWRfbG9jaygpOwotCXNyY19saXN0ID0gZG1h
X3Jlc3Zfc2hhcmVkX2xpc3Qoc3JjKTsKKwlsaXN0ID0gTlVMTDsKKwlleGNsID0gTlVMTDsKIAot
cmV0cnk6Ci0JaWYgKHNyY19saXN0KSB7Ci0JCXVuc2lnbmVkIGludCBzaGFyZWRfY291bnQgPSBz
cmNfbGlzdC0+c2hhcmVkX2NvdW50OworCXJjdV9yZWFkX2xvY2soKTsKKwlkbWFfcmVzdl9mb3Jf
ZWFjaF9mZW5jZV91bmxvY2tlZChkc3QsICZjdXJzb3IsIHRydWUsIGYpIHsKIAotCQlyY3VfcmVh
ZF91bmxvY2soKTsKKwkJaWYgKGN1cnNvci5pc19maXJzdCkgeworCQkJZG1hX3Jlc3ZfbGlzdF9m
cmVlKGxpc3QpOworCQkJZG1hX2ZlbmNlX3B1dChleGNsKTsKIAotCQlkc3RfbGlzdCA9IGRtYV9y
ZXN2X2xpc3RfYWxsb2Moc2hhcmVkX2NvdW50KTsKLQkJaWYgKCFkc3RfbGlzdCkKLQkJCXJldHVy
biAtRU5PTUVNOworCQkJaWYgKGN1cnNvci5mZW5jZXMpIHsKKwkJCQl1bnNpZ25lZCBpbnQgY250
ID0gY3Vyc29yLmZlbmNlcy0+c2hhcmVkX2NvdW50OwogCi0JCXJjdV9yZWFkX2xvY2soKTsKLQkJ
c3JjX2xpc3QgPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChzcmMpOwotCQlpZiAoIXNyY19saXN0IHx8
IHNyY19saXN0LT5zaGFyZWRfY291bnQgPiBzaGFyZWRfY291bnQpIHsKLQkJCWtmcmVlKGRzdF9s
aXN0KTsKLQkJCWdvdG8gcmV0cnk7Ci0JCX0KKwkJCQlyY3VfcmVhZF91bmxvY2soKTsKKwkJCQls
aXN0ID0gZG1hX3Jlc3ZfbGlzdF9hbGxvYyhjbnQpOworCQkJCWlmICghbGlzdCkKKwkJCQkJcmV0
dXJuIC1FTk9NRU07CiAKLQkJZHN0X2xpc3QtPnNoYXJlZF9jb3VudCA9IDA7Ci0JCWZvciAoaSA9
IDA7IGkgPCBzcmNfbGlzdC0+c2hhcmVkX2NvdW50OyArK2kpIHsKLQkJCXN0cnVjdCBkbWFfZmVu
Y2UgX19yY3UgKipkc3Q7Ci0JCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwkJCQlsaXN0LT5z
aGFyZWRfY291bnQgPSAwOworCQkJCXJjdV9yZWFkX2xvY2soKTsKIAotCQkJZmVuY2UgPSByY3Vf
ZGVyZWZlcmVuY2Uoc3JjX2xpc3QtPnNoYXJlZFtpXSk7Ci0JCQlpZiAodGVzdF9iaXQoRE1BX0ZF
TkNFX0ZMQUdfU0lHTkFMRURfQklULAotCQkJCSAgICAgJmZlbmNlLT5mbGFncykpCi0JCQkJY29u
dGludWU7Ci0KLQkJCWlmICghZG1hX2ZlbmNlX2dldF9yY3UoZmVuY2UpKSB7Ci0JCQkJZG1hX3Jl
c3ZfbGlzdF9mcmVlKGRzdF9saXN0KTsKLQkJCQlzcmNfbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9s
aXN0KHNyYyk7Ci0JCQkJZ290byByZXRyeTsKKwkJCX0gZWxzZSB7CisJCQkJbGlzdCA9IE5VTEw7
CiAJCQl9CisJCQlleGNsID0gTlVMTDsKKwkJfQogCi0JCQlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25h
bGVkKGZlbmNlKSkgewotCQkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCQkJCWNvbnRpbnVlOwot
CQkJfQorCQlpZiAoY3Vyc29yLmlzX2V4Y2x1c2l2ZSkKKwkJCWV4Y2wgPSBmOworCQllbHNlCisJ
CQlSQ1VfSU5JVF9QT0lOVEVSKGxpc3QtPnNoYXJlZFtsaXN0LT5zaGFyZWRfY291bnQrK10sIGYp
OwogCi0JCQlkc3QgPSAmZHN0X2xpc3QtPnNoYXJlZFtkc3RfbGlzdC0+c2hhcmVkX2NvdW50Kytd
OwotCQkJcmN1X2Fzc2lnbl9wb2ludGVyKCpkc3QsIGZlbmNlKTsKLQkJfQotCX0gZWxzZSB7Ci0J
CWRzdF9saXN0ID0gTlVMTDsKKwkJLyogRG9uJ3QgZHJvcCB0aGUgcmVmZXJlbmNlICovCisJCWYg
PSBOVUxMOwogCX0KIAotCW5ldyA9IGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUoJnNyYy0+ZmVuY2Vf
ZXhjbCk7CiAJcmN1X3JlYWRfdW5sb2NrKCk7CiAKLQlzcmNfbGlzdCA9IGRtYV9yZXN2X3NoYXJl
ZF9saXN0KGRzdCk7Ci0Jb2xkID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShkc3QpOwotCiAJd3JpdGVf
c2VxY291bnRfYmVnaW4oJmRzdC0+c2VxKTsKLQkvKiB3cml0ZV9zZXFjb3VudF9iZWdpbiBwcm92
aWRlcyB0aGUgbmVjZXNzYXJ5IG1lbW9yeSBiYXJyaWVyICovCi0JUkNVX0lOSVRfUE9JTlRFUihk
c3QtPmZlbmNlX2V4Y2wsIG5ldyk7Ci0JUkNVX0lOSVRfUE9JTlRFUihkc3QtPmZlbmNlLCBkc3Rf
bGlzdCk7CisJZXhjbCA9IHJjdV9yZXBsYWNlX3BvaW50ZXIoZHN0LT5mZW5jZV9leGNsLCBleGNs
LCBkbWFfcmVzdl9oZWxkKGRzdCkpOworCWxpc3QgPSByY3VfcmVwbGFjZV9wb2ludGVyKGRzdC0+
ZmVuY2UsIGxpc3QsIGRtYV9yZXN2X2hlbGQoZHN0KSk7CiAJd3JpdGVfc2VxY291bnRfZW5kKCZk
c3QtPnNlcSk7CiAKLQlkbWFfcmVzdl9saXN0X2ZyZWUoc3JjX2xpc3QpOwotCWRtYV9mZW5jZV9w
dXQob2xkKTsKKwlkbWFfcmVzdl9saXN0X2ZyZWUobGlzdCk7CisJZG1hX2ZlbmNlX3B1dChleGNs
KTsKIAogCXJldHVybiAwOwogfQotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
