Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E738C41EA95
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:07:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB4A367E3D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:07:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 236A762631; Fri,  1 Oct 2021 10:07:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9EF9617DA;
	Fri,  1 Oct 2021 10:07:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5B24262631
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C215761020; Fri,  1 Oct 2021 10:06:29 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 0108D61805
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:23 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 t16-20020a1c7710000000b003049690d882so10759313wmi.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4oUqNlwRJHuQB2mIRsKmTeRaOwkcWmdtZ6villVsEcY=;
 b=Czbm+9usHUFKPdcRQ2WYOrvJ0RF3b5jz4tkhBVrUnY2ybN33X6b1Z4nJz/DRThDH73
 zHa1Nl9QIRSpHLCYzmRlX+4bO5htIukCw9FoCdKjJhsfNHSQNNscizt7USHQqJHzGS+9
 HCx/+vA8WPC+IwhVRd0tNfZ3Ah7mWuZwjFn7V3UMrVPOJxQ8ZTuGIBw1jZNUxOvDjlqC
 CCLOnn88N5PZSNwYlWYoHfHiJwJJoSOSGHBlCViLCGwdQHSBll26BgvmwyZLMDI03nQl
 gOqnG3BlTFz2rN1HyBGMan85SRQhjRX2BRi3NN83iwEEr7kej+4o56DCBhas/5W2RTJf
 zRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4oUqNlwRJHuQB2mIRsKmTeRaOwkcWmdtZ6villVsEcY=;
 b=6JIb4ndpdIcJLaL/yOFF+jQWRIur1cErVvaHSpYhPFLQJbkxgyDSyRDFBgP1agsN63
 DH8rU6YVIbSp4Wx+PRZBEnPEJHJBpNNdVF9bFJpOT4oiG35j2uyIx8CfK2Z9O9SfOVt6
 VPl3nsm28BLhV7q8Tfw1BalpiyFaF4aAfQEX8DVqlvnixR7kUZ7gfzfi3LWOvgmHLqAQ
 jvHtoVrtR5YhGLtzxXcnjPjcKgOj9ogMN/zD9JbZd7n8kO9fA2+olEGTzbZ1eb9RYPk1
 7qLwWhYF/5XdILKih4x/Ar8po+0XId17RWh2UZO5RcUrsbWIpZogibEznfr7QOzzX9Q1
 KKRw==
X-Gm-Message-State: AOAM533dsNxACaTx6Zz3GSlhyLbISsykVdGctoNcJHO5pEYAwALhXnwm
 ohJJ5DMdzTIUO3Se65lvjpjgoJQytk4=
X-Google-Smtp-Source: ABdhPJyJ9+sUT94cagH8ST7a3wE9TSF5SLVIKCTHVtTtHAGvOEn+x/WN9d8Ez2+gly8HzfXpfBGnTw==
X-Received: by 2002:a05:600c:4e93:: with SMTP id
 f19mr3535149wmq.185.1633082781519; 
 Fri, 01 Oct 2021 03:06:21 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:21 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:05:51 +0200
Message-Id: <20211001100610.2899-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/28] dma-buf: use the new iterator in
 dma_resv_poll
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

U2ltcGxpZnkgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
YyB8IDM2ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggODI0
MmI1ZDliYWViLi5iZWI1MDRhOTJkNjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtMjA5LDE5ICsyMDksMTQg
QEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9wb2xsX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBz
dHJ1Y3QgZG1hX2ZlbmNlX2NiICpjYikKIAlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKIH0KIAotc3Rh
dGljIGJvb2wgZG1hX2J1Zl9wb2xsX3NoYXJlZChzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsCitzdGF0
aWMgYm9vbCBkbWFfYnVmX3BvbGxfYWRkX2NiKHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwgYm9vbCB3
cml0ZSwKIAkJCQlzdHJ1Y3QgZG1hX2J1Zl9wb2xsX2NiX3QgKmRjYikKIHsKLQlzdHJ1Y3QgZG1h
X3Jlc3ZfbGlzdCAqZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHJlc3YpOworCXN0cnVjdCBk
bWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKLQlpbnQgaSwg
cjsKLQotCWlmICghZm9iaikKLQkJcmV0dXJuIGZhbHNlOworCWludCByOwogCi0JZm9yIChpID0g
MDsgaSA8IGZvYmotPnNoYXJlZF9jb3VudDsgKytpKSB7Ci0JCWZlbmNlID0gcmN1X2RlcmVmZXJl
bmNlX3Byb3RlY3RlZChmb2JqLT5zaGFyZWRbaV0sCi0JCQkJCQkgIGRtYV9yZXN2X2hlbGQocmVz
dikpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIHJlc3YsIHdyaXRlLCBmZW5j
ZSkgewogCQlkbWFfZmVuY2VfZ2V0KGZlbmNlKTsKIAkJciA9IGRtYV9mZW5jZV9hZGRfY2FsbGJh
Y2soZmVuY2UsICZkY2ItPmNiLCBkbWFfYnVmX3BvbGxfY2IpOwogCQlpZiAoIXIpCkBAIC0yMzIs
MjQgKzIyNyw2IEBAIHN0YXRpYyBib29sIGRtYV9idWZfcG9sbF9zaGFyZWQoc3RydWN0IGRtYV9y
ZXN2ICpyZXN2LAogCXJldHVybiBmYWxzZTsKIH0KIAotc3RhdGljIGJvb2wgZG1hX2J1Zl9wb2xs
X2V4Y2woc3RydWN0IGRtYV9yZXN2ICpyZXN2LAotCQkJICAgICAgc3RydWN0IGRtYV9idWZfcG9s
bF9jYl90ICpkY2IpCi17Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBkbWFfcmVzdl9leGNs
X2ZlbmNlKHJlc3YpOwotCWludCByOwotCi0JaWYgKCFmZW5jZSkKLQkJcmV0dXJuIGZhbHNlOwot
Ci0JZG1hX2ZlbmNlX2dldChmZW5jZSk7Ci0JciA9IGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZmVu
Y2UsICZkY2ItPmNiLCBkbWFfYnVmX3BvbGxfY2IpOwotCWlmICghcikKLQkJcmV0dXJuIHRydWU7
Ci0JZG1hX2ZlbmNlX3B1dChmZW5jZSk7Ci0KLQlyZXR1cm4gZmFsc2U7Ci19Ci0KIHN0YXRpYyBf
X3BvbGxfdCBkbWFfYnVmX3BvbGwoc3RydWN0IGZpbGUgKmZpbGUsIHBvbGxfdGFibGUgKnBvbGwp
CiB7CiAJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsKQEAgLTI4Miw4ICsyNTksNyBAQCBzdGF0aWMg
X19wb2xsX3QgZG1hX2J1Zl9wb2xsKHN0cnVjdCBmaWxlICpmaWxlLCBwb2xsX3RhYmxlICpwb2xs
KQogCQlzcGluX3VubG9ja19pcnEoJmRtYWJ1Zi0+cG9sbC5sb2NrKTsKIAogCQlpZiAoZXZlbnRz
ICYgRVBPTExPVVQpIHsKLQkJCWlmICghZG1hX2J1Zl9wb2xsX3NoYXJlZChyZXN2LCBkY2IpICYm
Ci0JCQkgICAgIWRtYV9idWZfcG9sbF9leGNsKHJlc3YsIGRjYikpCisJCQlpZiAoIWRtYV9idWZf
cG9sbF9hZGRfY2IocmVzdiwgdHJ1ZSwgZGNiKSkKIAkJCQkvKiBObyBjYWxsYmFjayBxdWV1ZWQs
IHdha2UgdXAgYW55IG90aGVyIHdhaXRlcnMgKi8KIAkJCQlkbWFfYnVmX3BvbGxfY2IoTlVMTCwg
JmRjYi0+Y2IpOwogCQkJZWxzZQpAQCAtMzAzLDcgKzI3OSw3IEBAIHN0YXRpYyBfX3BvbGxfdCBk
bWFfYnVmX3BvbGwoc3RydWN0IGZpbGUgKmZpbGUsIHBvbGxfdGFibGUgKnBvbGwpCiAJCXNwaW5f
dW5sb2NrX2lycSgmZG1hYnVmLT5wb2xsLmxvY2spOwogCiAJCWlmIChldmVudHMgJiBFUE9MTElO
KSB7Ci0JCQlpZiAoIWRtYV9idWZfcG9sbF9leGNsKHJlc3YsIGRjYikpCisJCQlpZiAoIWRtYV9i
dWZfcG9sbF9hZGRfY2IocmVzdiwgZmFsc2UsIGRjYikpCiAJCQkJLyogTm8gY2FsbGJhY2sgcXVl
dWVkLCB3YWtlIHVwIGFueSBvdGhlciB3YWl0ZXJzICovCiAJCQkJZG1hX2J1Zl9wb2xsX2NiKE5V
TEwsICZkY2ItPmNiKTsKIAkJCWVsc2UKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
