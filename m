Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D8340F7E5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:36:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9165B69D50
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:36:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 02D6269CE0; Fri, 17 Sep 2021 12:36:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54C4769D1A;
	Fri, 17 Sep 2021 12:36:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C0B4869D09
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7671663538; Fri, 17 Sep 2021 12:35:37 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by lists.linaro.org (Postfix) with ESMTPS id C2C1F68641
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:31 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 192-20020a1c04c9000000b002f7a4ab0a49so7501815wme.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sw+MS6XteEXCpv8sKsyjs9ShzNFMcMc6sPLH9JOk0jI=;
 b=U31LlhZncd5tO2cW45QRi3rq9TCmIkt4nY6X7fcCPa7vfRLh04v/W/R34ftcc+RnLW
 zwnuGViVtar56E22SHre1HV2qH3m/hpv2Jux083/+ucvWQD/YiLNdQpuSluW7HbiFu2M
 IaONrwS3ZC3icPOBEbEUrEqdUmQB+burkje3wuRSYVTLCfmbK7oKfR0Rb6+w6YrvPKL/
 UKzEb466lwVCRLNz1H0R6auREPQ82I8rJPdzSUdqtpTFsEqGphdkGyDwmczQbp7mnFUe
 1Z2PUx1LLkja3DzAnO0dsFpSe2UlvNQkHhCaYgw+9eEX8wDT9odd5sL2d28mWVXaiUrn
 hi7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sw+MS6XteEXCpv8sKsyjs9ShzNFMcMc6sPLH9JOk0jI=;
 b=1fgovb4LrbS797jprPET5WozlJjB5mnDe8H+XxzuBiECkvXmBAXC373NQpmvq8mEs1
 J7hKdjX3XYzcEgcy7FSzw8ho3zsTXxxcKB28N1y8hYS2yySTbqBh4IUUxW1HS/2WFQE8
 y6T008FP9wqRCxoh4HVp3QRrwS+vRu8tnU27n+WRzw4vLaL4z07ukWxP66rtf3RQnOay
 0G/+tyIX2gQUu9vwLo9Trdt5SDUnbvcgsh7m3duugz/mBgQ7qeJI31UOgrV1DL6CoHP8
 5P8RT2uLP7FjQ2Qt05BW2GlC3LRQMJxq+LFKR+ooLkkdnFPs7spvYHQYp57GeGPAIZmL
 KfFA==
X-Gm-Message-State: AOAM531jTNBwmUCerU9AH1FvL+0MTegtMI+bXGwkZQ2oizIQl7P1QqJc
 Xcjlh77yinpQM5xaSjXE+QcoLpQu2/U=
X-Google-Smtp-Source: ABdhPJxhkEFsuKkLknoNrRxVOQijCepLFFhcg793t2v1pp6SYTYBtLT6kE3SwOvHHAB5lvDB9caSEg==
X-Received: by 2002:a05:600c:4f0b:: with SMTP id
 l11mr14772678wmq.0.1631882130695; 
 Fri, 17 Sep 2021 05:35:30 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:30 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:04 +0200
Message-Id: <20210917123513.1106-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 17/26] drm/i915: use new iterator in
 i915_gem_object_wait_priority v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1X3JlYWRfbG9j
aygpL3VubG9jaygpCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dh
aXQuYyB8IDM0ICsrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fd2FpdC5jCmluZGV4IGU0MTZjZjUyODYzNS4uZGU4MDg0YjZhZjQyIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKQEAgLTEyMiwzMiArMTIyLDE4IEBAIGk5
MTVfZ2VtX29iamVjdF93YWl0X3ByaW9yaXR5KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCiAJCQkgICAgICB1bnNpZ25lZCBpbnQgZmxhZ3MsCiAJCQkgICAgICBjb25zdCBzdHJ1Y3Qg
aTkxNV9zY2hlZF9hdHRyICphdHRyKQogewotCXN0cnVjdCBkbWFfZmVuY2UgKmV4Y2w7Ci0KLQlp
ZiAoZmxhZ3MgJiBJOTE1X1dBSVRfQUxMKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQ7
Ci0JCXVuc2lnbmVkIGludCBjb3VudCwgaTsKLQkJaW50IHJldDsKLQotCQlyZXQgPSBkbWFfcmVz
dl9nZXRfZmVuY2VzKG9iai0+YmFzZS5yZXN2LCAmZXhjbCwgJmNvdW50LAotCQkJCQkgICZzaGFy
ZWQpOwotCQlpZiAocmV0KQotCQkJcmV0dXJuIHJldDsKLQotCQlmb3IgKGkgPSAwOyBpIDwgY291
bnQ7IGkrKykgewotCQkJaTkxNV9nZW1fZmVuY2Vfd2FpdF9wcmlvcml0eShzaGFyZWRbaV0sIGF0
dHIpOwotCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwotCQl9Ci0KLQkJa2ZyZWUoc2hhcmVk
KTsKLQl9IGVsc2UgewotCQlleGNsID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5i
YXNlLnJlc3YpOwotCX0KKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2U7CiAKLQlpZiAoZXhjbCkgewotCQlpOTE1X2dlbV9mZW5jZV93YWl0X3By
aW9yaXR5KGV4Y2wsIGF0dHIpOwotCQlkbWFfZmVuY2VfcHV0KGV4Y2wpOworCXJjdV9yZWFkX2xv
Y2soKTsKKwlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+YmFzZS5yZXN2LCBmbGFn
cyAmIEk5MTVfV0FJVF9BTEwpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZj
dXJzb3IsIGZlbmNlKSB7CisJCXJjdV9yZWFkX3VubG9jaygpOworCQlpOTE1X2dlbV9mZW5jZV93
YWl0X3ByaW9yaXR5KGZlbmNlLCBhdHRyKTsKKwkJcmN1X3JlYWRfbG9jaygpOwogCX0KKwlkbWFf
cmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKKwlyY3VfcmVhZF91bmxvY2soKTsKIAlyZXR1cm4gMDsK
IH0KIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
