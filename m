Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 064F540F7AE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:35:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D6B663547
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:35:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1F82063426; Fri, 17 Sep 2021 12:35:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4325563421;
	Fri, 17 Sep 2021 12:35:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 24ED364AE0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C6AC064ADA; Fri, 17 Sep 2021 12:35:23 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 5A38063423
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:21 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id d21so14898493wra.12
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8mVOVFn7bmhLuGrJEX+tbk0DRLKzhF9YYGPZtBVZ3ao=;
 b=YTrxJf7awtIaUN3OnOFQEAl2GGNFeguMpbirVAdGdLJu6EUqVOoKBMgt12jNkIJQD9
 S5Zwo1vUZwqgFMs+SX1NEHcSW3WzHNPhBufMmXMNGNV1B0LaNWafQXIkAO7zjMB9rTD8
 bOMi8foA42njV5ZGTcx2NVGk3bPKVfjKwfkLBbzDDkIbKUoJMLZnWEC08sMzvYMgvYqr
 1q6aZgWYLwecii6sK6+GRlFHUdL77y+l3gDJ0D9H3De2T9xSOtgIhIDUSnqhRCGJ1nD1
 F0CUK9aXnFaw6nGV6oeYyfJg+DCxR/gSX7ziuiZeibLKQDDHn18L4BZKz1f7FaACyOR/
 AAYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8mVOVFn7bmhLuGrJEX+tbk0DRLKzhF9YYGPZtBVZ3ao=;
 b=KyIAgSXCwDZoJE/ZUEx7z10CtcFvlKGD9LRaUQ1JROiY6cMnyckoAKGAUwjJt9Y4Xo
 qydCsZig63f7vZQk/otZfHAMCdkxda3o++Bh/9NFCPDwcDCpRuqtYyWZjCQHhnRdL8By
 guZPA5BH2hmUShOQIELx/cAGTYrkddTumkfeLS5IkcyxrImC+A7R3NV3FRI+3jthkuPM
 fWLSf9/+4KocV3qiBNiIJabZ9Opcxm1DR4PFr+hY+nzfdOA2yubSmTN3p/QNrbzSWjn6
 e8eVkkK0dN/DgPPRgAmsEnH13/ATh8EL3/32Po5fPPcsMZIbIYidN7iQEF30Y9X29+w9
 21jg==
X-Gm-Message-State: AOAM5331i3MfeT/vLVFtB5RGjkcYhCo/pYx+ikc8UhIy/sDy4+l4TVcF
 nevxdasY+rnIJ8fJSNbsDmccXljIKPc=
X-Google-Smtp-Source: ABdhPJzp1OVanxiZTCCd7q1OJ3U2i8eSj4o2Z3hjO5r02JdQZtaKMhfkZHZMaQ58TWu9KG8LIATbYA==
X-Received: by 2002:adf:e546:: with SMTP id z6mr11951871wrm.346.1631882120404; 
 Fri, 17 Sep 2021 05:35:20 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:20 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:34:52 +0200
Message-Id: <20210917123513.1106-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYyB8IDY4ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNTggZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LXJlc3YuYwppbmRleCA5YjkwYmQ5YWMwMTguLmM3ZGI1NTNhYjExNSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMK
QEAgLTU2OSw3NCArNTY5LDI2IEBAIGxvbmcgZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KHN0cnVjdCBk
bWFfcmVzdiAqb2JqLCBib29sIHdhaXRfYWxsLCBib29sIGludHIsCiAJCQkgICB1bnNpZ25lZCBs
b25nIHRpbWVvdXQpCiB7CiAJbG9uZyByZXQgPSB0aW1lb3V0ID8gdGltZW91dCA6IDE7Ci0JdW5z
aWduZWQgaW50IHNlcSwgc2hhcmVkX2NvdW50OworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNv
cjsKIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKLQlpbnQgaTsKIAotcmV0cnk6Ci0Jc2hhcmVk
X2NvdW50ID0gMDsKLQlzZXEgPSByZWFkX3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7CiAJcmN1
X3JlYWRfbG9jaygpOwotCWkgPSAtMTsKLQotCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShv
YmopOwotCWlmIChmZW5jZSAmJiAhdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklU
LCAmZmVuY2UtPmZsYWdzKSkgewotCQlpZiAoIWRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlKSkKLQkJ
CWdvdG8gdW5sb2NrX3JldHJ5OworCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB3
YWl0X2FsbCk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVu
Y2UpIHsKKwkJcmN1X3JlYWRfdW5sb2NrKCk7CiAKLQkJaWYgKGRtYV9mZW5jZV9pc19zaWduYWxl
ZChmZW5jZSkpIHsKLQkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCQkJZmVuY2UgPSBOVUxMOwor
CQlyZXQgPSBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOworCQlpZiAo
cmV0IDw9IDApIHsKKwkJCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOworCQkJcmV0dXJuIHJl
dDsKIAkJfQogCi0JfSBlbHNlIHsKLQkJZmVuY2UgPSBOVUxMOwotCX0KLQotCWlmICh3YWl0X2Fs
bCkgewotCQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0
KG9iaik7Ci0KLQkJaWYgKGZvYmopCi0JCQlzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291
bnQ7Ci0KLQkJZm9yIChpID0gMDsgIWZlbmNlICYmIGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewot
CQkJc3RydWN0IGRtYV9mZW5jZSAqbGZlbmNlOwotCi0JCQlsZmVuY2UgPSByY3VfZGVyZWZlcmVu
Y2UoZm9iai0+c2hhcmVkW2ldKTsKLQkJCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdO
QUxFRF9CSVQsCi0JCQkJICAgICAmbGZlbmNlLT5mbGFncykpCi0JCQkJY29udGludWU7Ci0KLQkJ
CWlmICghZG1hX2ZlbmNlX2dldF9yY3UobGZlbmNlKSkKLQkJCQlnb3RvIHVubG9ja19yZXRyeTsK
LQotCQkJaWYgKGRtYV9mZW5jZV9pc19zaWduYWxlZChsZmVuY2UpKSB7Ci0JCQkJZG1hX2ZlbmNl
X3B1dChsZmVuY2UpOwotCQkJCWNvbnRpbnVlOwotCQkJfQotCi0JCQlmZW5jZSA9IGxmZW5jZTsK
LQkJCWJyZWFrOwotCQl9CisJCXJjdV9yZWFkX2xvY2soKTsKIAl9Ci0KKwlkbWFfcmVzdl9pdGVy
X2VuZCgmY3Vyc29yKTsKIAlyY3VfcmVhZF91bmxvY2soKTsKLQlpZiAoZmVuY2UpIHsKLQkJaWYg
KHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEpKSB7Ci0JCQlkbWFfZmVuY2VfcHV0
KGZlbmNlKTsKLQkJCWdvdG8gcmV0cnk7Ci0JCX0KIAotCQlyZXQgPSBkbWFfZmVuY2Vfd2FpdF90
aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOwotCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQkJaWYg
KHJldCA+IDAgJiYgd2FpdF9hbGwgJiYgKGkgKyAxIDwgc2hhcmVkX2NvdW50KSkKLQkJCWdvdG8g
cmV0cnk7Ci0JfQogCXJldHVybiByZXQ7Ci0KLXVubG9ja19yZXRyeToKLQlyY3VfcmVhZF91bmxv
Y2soKTsKLQlnb3RvIHJldHJ5OwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3Zfd2FpdF90
aW1lb3V0KTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
