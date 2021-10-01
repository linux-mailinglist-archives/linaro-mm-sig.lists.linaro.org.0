Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B1C41EA9D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:08:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B74166C0A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:08:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AE46267E2F; Fri,  1 Oct 2021 10:07:59 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD711617DA;
	Fri,  1 Oct 2021 10:07:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F10CD629CD
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B164562D53; Fri,  1 Oct 2021 10:06:31 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id 806B76100A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:25 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 l18-20020a05600c4f1200b002f8cf606262so10788016wmq.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Ayg2vtlIruNC6YCBqNsxWyZiGKufnG6wJQHZ9LfwL8=;
 b=K00QXrgQxZygBJhqldjpdmwq0Z5FQMgADFlRfTssTKaJE3iovqCn0W1uWy/liFb27G
 sRmAAVDGt10vOqAJN0XqaYtC7FbPeUEetGV5wXz82aJ1DtKUYn9lbgVZn6BaKXJuKOML
 x8ozY++DPIsV7PPpHPTt9h9iinHbivfk3NL2ifluDQ8edJitoGOmN5bJPKiU1riKJqvU
 7rmcZWL3h1FqkMXqqcvTUv5ANiq3XXBvjTtN7DeD4CD1j1FcN6mW2FYMXurRwYJMibFk
 A3PYLakR7Nt52UVSXLXGwoSgLGCmH5XuwoUIEgI0I//exVwLlvDSMoIUatN/5zgo3MbS
 uPKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Ayg2vtlIruNC6YCBqNsxWyZiGKufnG6wJQHZ9LfwL8=;
 b=ty7ITbSz8K7g2fJptTanuAH24Yw0mpNrwc565WnndOa8+srh139+oVkbH22BUVQ8z4
 LsA72o7NSfERDIxX/1wzVF63ezdlnqIKd2aV/sU9CYa4CMm8i96VYdv8PQTGiUACskWU
 yrusj9woab9VMffi5Xv51DUAppW4Eo894fMvpRFWEcixVFQAMR+muSd9feHQo0ou2740
 ZYQYhwFbPvn1cg5hjwa0nPXAc9Ox55hIRhqwZINx5Of/q+QEXXp/NZCVc6jRUPwQK2EW
 57Q2WUlsCL1n2br/E7uYjyrWUT88rQrOqitzDi/n56Zkzw2xt2rom06aV/AjnCSjw9Cg
 whDw==
X-Gm-Message-State: AOAM531VqaE9qYfM4hf24dkSvIViAQlCswFQ7Xio9YiwTdV/k+icVdW6
 6w4QK+vClS0yFA6mEXs/0s5Jt7ZK/yU=
X-Google-Smtp-Source: ABdhPJzKkdtSodQ60XlSPJX3CpAQhUJ5wkBsX+8uyL9AlLN6Kemxmfa1pWO/5mr4TwWesK30VX9KFg==
X-Received: by 2002:a1c:7302:: with SMTP id d2mr3614174wmb.92.1633082782335;
 Fri, 01 Oct 2021 03:06:22 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:22 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:05:52 +0200
Message-Id: <20211001100610.2899-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
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
