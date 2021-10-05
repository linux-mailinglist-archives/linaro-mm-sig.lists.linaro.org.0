Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBC3422557
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:39:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B207D6093B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:39:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AE7A2631D5; Tue,  5 Oct 2021 11:38:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E32B6610C2;
	Tue,  5 Oct 2021 11:38:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A27B66068A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AD45B60A86; Tue,  5 Oct 2021 11:37:57 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 4BAAB606E1
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:55 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id o20so18737232wro.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Ayg2vtlIruNC6YCBqNsxWyZiGKufnG6wJQHZ9LfwL8=;
 b=k0XwzTVpq/0gbekSSpKyRcQbF2TyRteAqlNXXqMvrUUPSR7lMN4LqgJy1eKA8McOUb
 NrWtH18QzzKHO+jYzqQhDKVMfd28kdoO3FwSEjeB043Gq9olTXDHLDTVFYIKSEbwoTHx
 v56SHz08Qa7OxWaeHm3TqJ3fKnLOCSkngrdF43DZCCZcrUzykxZ0ufSdOFNxeNO1hqRn
 iqtCBhw+K/qssAiLXsBYJ0aSzRZyXqVPCIurJCc6mOq/uFIBsy7G93HzmeR0VDeAbBmL
 4LpjcPjYsgk9PpLOjxCl9rd1H1E4NNPnwBcSMFEXA4u6mxExDWXVqXFAhhyw0Yy+sggl
 qNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Ayg2vtlIruNC6YCBqNsxWyZiGKufnG6wJQHZ9LfwL8=;
 b=OKswh5gMPHNFFM0dmyI/rqoNV+uvD1lvBrE2/WXdeUDDc9AOR/NlNHhIgPKMk3893F
 3Qdiw8iE4ebx4DniVSK1dllClscHQHE3j/BkdYCzmxJinWVTk5Re4Qlx0JpPh6wv2v3C
 kRybBr5OdeiX5ozWA/PVIChIP8vLqLHVlfS4tLrG1P+Zhaa+ZG8ySec2YXKuHV/DJhne
 etY1yuVkyxm6EDb1NKQ3wqFAyQOgBd1GF0f8BzfByQSBliw2vKHRXqdWAU8VxjhC94Cg
 KgHTaZUFHa/Zeh8aqEYBHnL/V0Sio5bdzqPKAVgelkAA1/9Er19XjEIihKKrSFmcbSCf
 AEog==
X-Gm-Message-State: AOAM5318zjbhwG3RmVh2dXvKr59M2RoR9O0D0g43Eo1Ir7hRN0NdxyhK
 o0qmDIaBY7VMFLKS08uaGo41DdDRu0c=
X-Google-Smtp-Source: ABdhPJyFUca4kEvnBulZg25MJLUsViqrz2cxyYESwTcJJxEAQzJy717ramJFMMoYJYI6vKzn+nbNmA==
X-Received: by 2002:a5d:4cca:: with SMTP id c10mr17828316wrt.188.1633433874061; 
 Tue, 05 Oct 2021 04:37:54 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:53 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:24 +0200
Message-Id: <20211005113742.1101-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/28] drm/ttm: use the new iterator in
 ttm_bo_flush_all_fences
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

VGhpcyBpcyBwcm9iYWJseSBhIGZpeCBzaW5jZSB3ZSBkaWRuJ3QgZXZlbiBncmFiZWQgYSByZWZl
cmVuY2UgdG8gdGhlCmZlbmNlcy4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyB8IDE2
ICsrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgYi9k
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCmluZGV4IGQ2MmIyMDEzYzM2Ny4uMzkzNGVlMjI1
Yzc4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKQEAgLTI2OSwyMyArMjY5LDE1IEBAIHN0YXRpYyBpbnQg
dHRtX2JvX2luZGl2aWR1YWxpemVfcmVzdihzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQog
c3RhdGljIHZvaWQgdHRtX2JvX2ZsdXNoX2FsbF9mZW5jZXMoc3RydWN0IHR0bV9idWZmZXJfb2Jq
ZWN0ICpibykKIHsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YgPSAmYm8tPmJhc2UuX3Jlc3Y7Ci0J
c3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmo7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29y
OwogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCWludCBpOwotCi0JcmN1X3JlYWRfbG9jaygp
OwotCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChyZXN2KTsKLQlmZW5jZSA9IGRtYV9yZXN2
X2V4Y2xfZmVuY2UocmVzdik7Ci0JaWYgKGZlbmNlICYmICFmZW5jZS0+b3BzLT5zaWduYWxlZCkK
LQkJZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcoZmVuY2UpOwotCi0JZm9yIChpID0gMDsg
Zm9iaiAmJiBpIDwgZm9iai0+c2hhcmVkX2NvdW50OyArK2kpIHsKLQkJZmVuY2UgPSByY3VfZGVy
ZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKIAorCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNv
ciwgcmVzdiwgdHJ1ZSk7CisJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNv
ciwgZmVuY2UpIHsKIAkJaWYgKCFmZW5jZS0+b3BzLT5zaWduYWxlZCkKIAkJCWRtYV9mZW5jZV9l
bmFibGVfc3dfc2lnbmFsaW5nKGZlbmNlKTsKIAl9Ci0JcmN1X3JlYWRfdW5sb2NrKCk7CisJZG1h
X3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CiB9CiAKIC8qKgotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
