Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EE25E4144B9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:11:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C14EE6197A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:11:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A74FD63523; Wed, 22 Sep 2021 09:11:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 794CA6323D;
	Wed, 22 Sep 2021 09:11:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 790946048D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:10:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6612861ECD; Wed, 22 Sep 2021 09:10:58 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 9D0C561E96
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:10:54 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id d6so4581882wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=12q+kmLcqrOLQ+PRaX5+iil+oP7YjLgyfMuSdQvd75Y=;
 b=Wmjw1pDUM1dPsRsh0ipZiHtkzQcaJwOirp0OO1edNKKgMQlQbPcuJEaERE1B3p1B3t
 9qHPdmBFLHrytpz7DgGFrq72Vkl4cPAKVfPbF53x+9uiYUhdkt0iUeq66KI9FL1Mkw9S
 Appom2ELN7oFpsPdhN04gy7VhUpYbVUobMkJfTljsfdoNb0RkMYi/akbeqf7OZEBTA2D
 OCnjiKqybrMjS6kTW0A0naVyd/xiGXEK4lE3UZXT661BJY+rOzuAT+eS2Rb5dqVXsne2
 aVLDjnLAUpL/fMOrxs3tIE1axZG4kioyNnrM/0qZf6YKMliPqIqMiLudZjJ4r4rkDD3j
 d6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=12q+kmLcqrOLQ+PRaX5+iil+oP7YjLgyfMuSdQvd75Y=;
 b=2M2k61QK/qZAD9jjNxZf0sk7Kr+SKiyV7oJJv6By1RH1ytFEAJTya6lc5OO3iaf/KV
 rdO7Y4Mcw5/4LE6CiMyTK3yFHuv64whsFWx7fr2GxlTdgwqq6VXwcLYGChOrTIYvS3lC
 /IRDimtMW17vQrqxfkxrB2MzP4nI+NDda2g0NgmrEkZUAMo3PfOm2AAY88lebYKN3TY3
 6W8gZBniBZrwzjp4Y7PL3V8QN/i5D8nkGZRDyq2oVLwLWrhIdSZkbrPTu4tnNaEAv5ii
 nUzmEg353vsEuVyNj3RFw9ojDSCq3Uy4qLNTD4OgpSYm7B3g2jrDm1GQcglwwz2s8JUW
 qZ+g==
X-Gm-Message-State: AOAM532flfl+YL4pL2d3ZNJaQrnWDTPyaslBMSVYY8iQmgU/L81X1XNj
 AAUNjURx/ZWw+ngO3NVXr+1CFTnBd1Y=
X-Google-Smtp-Source: ABdhPJxLtnVBL2qGTr0DJS7EpEFnWd/DL8VH9t8rWHlTnKyhTQmOFa7YQHWgMljEzUTSmd1Rd0gKeg==
X-Received: by 2002:a1c:2246:: with SMTP id i67mr9111559wmi.157.1632301853482; 
 Wed, 22 Sep 2021 02:10:53 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.10.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:10:53 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:25 +0200
Message-Id: <20210922091044.2612-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 07/26] drm/ttm: use the new iterator in
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
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCmluZGV4IDNiMjJjMDAxM2RiZi4uMzAxYjBiNGIw
ODJlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCisrKyBiL2RyaXZl
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
