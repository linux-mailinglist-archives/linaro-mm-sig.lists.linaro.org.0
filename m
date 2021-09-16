Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A7E40D8DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84EF762CF6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0CA4A63542; Thu, 16 Sep 2021 11:32:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78F4466BC1;
	Thu, 16 Sep 2021 11:32:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E537B667BF
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E279064AD6; Thu, 16 Sep 2021 11:31:04 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 45D3D6328C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:01 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id u15so8923327wru.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iq9h+maBGJJf9BVUbLIQUotRRugg6V58mN3q2rJ4PzA=;
 b=mOru/iz48nbXfiXpei533afpCC1JsV0f/WVHUBvqOIQxJg9YTQKNvYDgsO77hgOuiq
 +oqdLQODlKui2M+TrUZJaEyzjL9LVQ5sb6IYfYy+0qLYqUBNpT2pqkVkwBxth/BjSlkE
 9CHYgnFnmeO44nrVLxnGHKpxRnpP4YJhVmkyJq/CfXmH2H1/R2ZWaW4Lajcf8vMz7t8E
 Ak5y+SSZwYpCvzfj2PrePEtHgOutpGYBj89DoOIHYccDIeJ2Ag/fVg5lTs23/nmm2hOz
 m6oBkn8IUIllt68kOV7mptPr4LqIWjIcokU1Xqa27kq6YOIr6K6Nxrgf9rHS0ktSZU0d
 0ddQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iq9h+maBGJJf9BVUbLIQUotRRugg6V58mN3q2rJ4PzA=;
 b=2YyeZ5oVKFpuP8q5U0WvUtBRDE0EagG0HcOtXxTtzx8rdUIcF4nC64JUPwuSnm//kk
 RqWrCrpHAFuKsFAg0f845NNLH3cnnGJk7Y1zkuAZINZCwuU3yE3its5k89obvXxUwGp8
 tIaWBR4Oo/nCawPrKw4Gq0H2AGU+4T0VQjvDoVWUJPVC/V2oVwVsK0Qu0e5T2EoXPcyn
 Tmj3z1aLsTaGovw9K3R+5h13VJs+TgRNNmRzMoF/uGShB9vbd09urfkdlhzCqh2/xl6u
 Cbe+y3BEM1kJRBHzlNdTfNsU21Cx9FujpU010WSZveVSdEM7K/2ise9G4ih4f7FlJWuS
 uqiQ==
X-Gm-Message-State: AOAM532U4uY1Dqk3+hspU9PECuoakSqFlpOcK8Hps67m048X8A3nT+MB
 ndodM77jfG+Mr3iRAglClxAceXVVGzLOkdPa
X-Google-Smtp-Source: ABdhPJwC8BzcW6+gpF4ajMOfxRqmFsfm8ZOg7Wz/HkiRjhulX/A7jXMLckeH9NePCPqif17J8aoL7Q==
X-Received: by 2002:adf:cf10:: with SMTP id o16mr5452866wrj.12.1631791860200; 
 Thu, 16 Sep 2021 04:31:00 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:59 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:32 +0200
Message-Id: <20210916113042.3631-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 16/26] drm/i915: use new iterator in
 i915_gem_object_wait_reservation v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogYWRkIG1pc3NpbmcgcmN1IHJlYWQgdW5s
b2NrLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgfCA1
NyArKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspLCA0MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fd2FpdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dh
aXQuYwppbmRleCBmOTA5YWFhMDlkOWMuLmE3NWRlZTlkNzc5MCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCkBAIC0zNyw1NSArMzcsMjggQEAgaTkxNV9nZW1fb2Jq
ZWN0X3dhaXRfcmVzZXJ2YXRpb24oc3RydWN0IGRtYV9yZXN2ICpyZXN2LAogCQkJCSB1bnNpZ25l
ZCBpbnQgZmxhZ3MsCiAJCQkJIGxvbmcgdGltZW91dCkKIHsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpl
eGNsOwotCWJvb2wgcHJ1bmVfZmVuY2VzID0gZmFsc2U7Ci0KLQlpZiAoZmxhZ3MgJiBJOTE1X1dB
SVRfQUxMKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQ7Ci0JCXVuc2lnbmVkIGludCBj
b3VudCwgaTsKLQkJaW50IHJldDsKLQotCQlyZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKHJlc3Ys
ICZleGNsLCAmY291bnQsICZzaGFyZWQpOwotCQlpZiAocmV0KQotCQkJcmV0dXJuIHJldDsKLQot
CQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgewotCQkJdGltZW91dCA9IGk5MTVfZ2VtX29i
amVjdF93YWl0X2ZlbmNlKHNoYXJlZFtpXSwKLQkJCQkJCQkgICAgIGZsYWdzLCB0aW1lb3V0KTsK
LQkJCWlmICh0aW1lb3V0IDwgMCkKLQkJCQlicmVhazsKLQotCQkJZG1hX2ZlbmNlX3B1dChzaGFy
ZWRbaV0pOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKKwlzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZTsKKworCXJjdV9yZWFkX2xvY2soKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91
bmxvY2tlZChyZXN2LCAmY3Vyc29yLCBmbGFncyAmIEk5MTVfV0FJVF9BTEwsCisJCQkJCSBmZW5j
ZSkgeworCisJCXJjdV9yZWFkX3VubG9jaygpOworCQl0aW1lb3V0ID0gaTkxNV9nZW1fb2JqZWN0
X3dhaXRfZmVuY2UoZmVuY2UsIGZsYWdzLCB0aW1lb3V0KTsKKwkJcmN1X3JlYWRfbG9jaygpOwor
CQlpZiAodGltZW91dCA8IDApIHsKKwkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOworCQkJYnJlYWs7
CiAJCX0KLQotCQlmb3IgKDsgaSA8IGNvdW50OyBpKyspCi0JCQlkbWFfZmVuY2VfcHV0KHNoYXJl
ZFtpXSk7Ci0JCWtmcmVlKHNoYXJlZCk7Ci0KLQkJLyoKLQkJICogSWYgYm90aCBzaGFyZWQgZmVu
Y2VzIGFuZCBhbiBleGNsdXNpdmUgZmVuY2UgZXhpc3QsCi0JCSAqIHRoZW4gYnkgY29uc3RydWN0
aW9uIHRoZSBzaGFyZWQgZmVuY2VzIG11c3QgYmUgbGF0ZXIKLQkJICogdGhhbiB0aGUgZXhjbHVz
aXZlIGZlbmNlLiBJZiB3ZSBzdWNjZXNzZnVsbHkgd2FpdCBmb3IKLQkJICogYWxsIHRoZSBzaGFy
ZWQgZmVuY2VzLCB3ZSBrbm93IHRoYXQgdGhlIGV4Y2x1c2l2ZSBmZW5jZQotCQkgKiBtdXN0IGFs
bCBiZSBzaWduYWxlZC4gSWYgYWxsIHRoZSBzaGFyZWQgZmVuY2VzIGFyZQotCQkgKiBzaWduYWxl
ZCwgd2UgY2FuIHBydW5lIHRoZSBhcnJheSBhbmQgcmVjb3ZlciB0aGUKLQkJICogZmxvYXRpbmcg
cmVmZXJlbmNlcyBvbiB0aGUgZmVuY2VzL3JlcXVlc3RzLgotCQkgKi8KLQkJcHJ1bmVfZmVuY2Vz
ID0gY291bnQgJiYgdGltZW91dCA+PSAwOwotCX0gZWxzZSB7Ci0JCWV4Y2wgPSBkbWFfcmVzdl9n
ZXRfZXhjbF91bmxvY2tlZChyZXN2KTsKIAl9Ci0KLQlpZiAoZXhjbCAmJiB0aW1lb3V0ID49IDAp
Ci0JCXRpbWVvdXQgPSBpOTE1X2dlbV9vYmplY3Rfd2FpdF9mZW5jZShleGNsLCBmbGFncywgdGlt
ZW91dCk7Ci0KLQlkbWFfZmVuY2VfcHV0KGV4Y2wpOworCXJjdV9yZWFkX3VubG9jaygpOwogCiAJ
LyoKIAkgKiBPcHBvcnR1bmlzdGljYWxseSBwcnVuZSB0aGUgZmVuY2VzIGlmZiB3ZSBrbm93IHRo
ZXkgaGF2ZSAqYWxsKiBiZWVuCiAJICogc2lnbmFsZWQuCiAJICovCi0JaWYgKHBydW5lX2ZlbmNl
cykKKwlpZiAodGltZW91dCA+IDApCiAJCWRtYV9yZXN2X3BydW5lKHJlc3YpOwogCiAJcmV0dXJu
IHRpbWVvdXQ7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
