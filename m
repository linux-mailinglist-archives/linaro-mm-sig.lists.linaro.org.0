Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B76CE408C62
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B99CC61F45
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F339263258; Mon, 13 Sep 2021 13:18:08 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B3196322C;
	Mon, 13 Sep 2021 13:18:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 50CB260F13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D564361C55; Mon, 13 Sep 2021 13:17:31 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id 77109623DC
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:28 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id g16so14684291wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+N6pI34ue5grUeX+sNiKUIx/zzj3XOBkLRGSUAp4Yz0=;
 b=QdkVW11wcMD2kRNQ2Xv7e/9VhlyaS+h+YV/huVDrKbjHmw2hxr2MhHdFcGDaG86Zzp
 2ejFzYfty4x5gxw3YkBF2Qy/0Emr7g/cn/E8vjFsnCkHubeT3Jd+RkX3wwlqVtYsrWcS
 yUI1GcKUCG8Lw5LPE/k36qjqPygJFijwLhrrmDeSLYNyh2TCm3AOK7w+rpOH2lDrRXwR
 YED2TGzSvAH5JAWzQLdvpYuhUCj0CMF20pxCgHD7CEKAGMiHjLMregiF+tjCRL32STtp
 xvPf3rc2qDLn4tCNE7jC/MswReDn4GVW6FSJ+yT7Mus5Dkoo6MU7kGRdoNAMTQgn9MBs
 6Pjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+N6pI34ue5grUeX+sNiKUIx/zzj3XOBkLRGSUAp4Yz0=;
 b=1sB35r/Crj2ZVTfc3jb09O3k1xIby5Xofr4rMh3YcsIUw2/6B70UcJa23Q4xqNwOw8
 y+UfO1BkJj4A6gqrh1NFARyyQ9bWOgXy7/MnOIys17pvnzRzOeZ48qyLJeIEP16YRGfm
 CoFWvyyCrNlhRmkCZCGs0g48GT+8CHlZMRP8U+24V5rIU3ywZnddAIJuzeizt7uU+aqA
 XOUfawO8r4D0sA+Ub2utIS4BCmSGypx7HVr84QN2dWnwCwBQZFjDHmHW8/Q+HfQNPFje
 tSVWAWh4xFVforiOYkY3V2mangCEJFxRVXo6os5GjzxN4oXwynto6UuxH9xbaQG51yD8
 LnYA==
X-Gm-Message-State: AOAM5332e0989u6vuRRv75bfXrQxTxo2vNZMrRl7UBbfIVk4Fa1J+/r2
 d0bJiQbcG6p5O+TvjwsZGys3ILLZjVEqUc92
X-Google-Smtp-Source: ABdhPJwa2Q1aKq0eaVUPc8t2uLS7a54jIFnxtQ+aHxJHb1BBQ5WJsoqxVWeV/vsbPbhiwfwyd23INQ==
X-Received: by 2002:adf:80e2:: with SMTP id 89mr12429172wrl.43.1631539047458; 
 Mon, 13 Sep 2021 06:17:27 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:27 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:53 +0200
Message-Id: <20210913131707.45639-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/26] drm/scheduler: use new iterator in
 drm_sched_job_add_implicit_dependencies
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3NjaGVk
dWxlci9zY2hlZF9tYWluLmMgfCAyNiArKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0v
c2NoZWR1bGVyL3NjaGVkX21haW4uYwppbmRleCA2OTg3ZDQxMmE5NDYuLmI2NGI2NzNlZDA0MCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKQEAgLTY5OSwyOSArNjk5LDE3
IEBAIGludCBkcm1fc2NoZWRfam9iX2FkZF9pbXBsaWNpdF9kZXBlbmRlbmNpZXMoc3RydWN0IGRy
bV9zY2hlZF9qb2IgKmpvYiwKIAkJCQkJICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAog
CQkJCQkgICAgYm9vbCB3cml0ZSkKIHsKKwlzdHJ1Y3QgZG1hX3Jlc3ZfY3Vyc29yIGN1cnNvcjsK
KwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAlpbnQgcmV0OwotCXN0cnVjdCBkbWFfZmVuY2Ug
KipmZW5jZXM7Ci0JdW5zaWduZWQgaW50IGksIGZlbmNlX2NvdW50OwotCi0JaWYgKCF3cml0ZSkg
ewotCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2Vk
KG9iai0+cmVzdik7CiAKLQkJcmV0dXJuIGRybV9zY2hlZF9qb2JfYWRkX2RlcGVuZGVuY3koam9i
LCBmZW5jZSk7Ci0JfQotCi0JcmV0ID0gZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhvYmotPnJlc3YsIE5V
TEwsICZmZW5jZV9jb3VudCwgJmZlbmNlcyk7Ci0JaWYgKHJldCB8fCAhZmVuY2VfY291bnQpCi0J
CXJldHVybiByZXQ7Ci0KLQlmb3IgKGkgPSAwOyBpIDwgZmVuY2VfY291bnQ7IGkrKykgewotCQly
ZXQgPSBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5KGpvYiwgZmVuY2VzW2ldKTsKLQkJaWYg
KHJldCkKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChvYmotPnJlc3YsICZjdXJz
b3IsIHdyaXRlLCBmZW5jZSkgeworCQlyZXQgPSBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5
KGpvYiwgZmVuY2UpOworCQlpZiAocmV0KSB7CisJCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKIAkJ
CWJyZWFrOworCQl9CiAJfQotCi0JZm9yICg7IGkgPCBmZW5jZV9jb3VudDsgaSsrKQotCQlkbWFf
ZmVuY2VfcHV0KGZlbmNlc1tpXSk7Ci0Ja2ZyZWUoZmVuY2VzKTsKIAlyZXR1cm4gcmV0OwogfQog
RVhQT1JUX1NZTUJPTChkcm1fc2NoZWRfam9iX2FkZF9pbXBsaWNpdF9kZXBlbmRlbmNpZXMpOwot
LSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
