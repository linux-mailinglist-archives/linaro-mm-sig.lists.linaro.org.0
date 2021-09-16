Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B710E40D8D7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB6BA6323B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AB02262EA6; Thu, 16 Sep 2021 11:31:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D499B69CD8;
	Thu, 16 Sep 2021 11:31:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A198463247
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 859B269D1C; Thu, 16 Sep 2021 11:31:03 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 5B1D369CD2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:59 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id d6so8876991wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2Rl5G26CInNXxZLgvUoDZCTBON+72/3XJ1+tj/YrIrs=;
 b=CeVtGW5uifD8DPQYhz9g74fUvxHL7oEWIpd7GUozoOG7t1vuk7DdXc+M4vjWOXiNwI
 0XPfn9xfsjjr92ZdavAWmmNdICg4F9taBVdanwzOdL7Q69j29fxmalNTVtV7tRpM0o9B
 pBS17PFP9WIBRzIt0OcOhZXF8T0ECvGq3qZVRkayJIV4dyeATceQjptkNhhd3/JPfypi
 HWr/I8SNVOL35qZmvpAPftYlKp7XMAw7UTTAg4PFlZ4HWtIIakyL3gpHFqpGoo3S14tE
 aKqKaF7DFeMWFZm5MUhsIyE6QWc/uUddk5KFHJxtEehXFN+axM5547ku/7Vv07KJKKgT
 IIcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2Rl5G26CInNXxZLgvUoDZCTBON+72/3XJ1+tj/YrIrs=;
 b=P8JkTNWufs5TIQyrvmX8Pvzs5s048neMKQjL2ntf2BrpFvJ80RLPyG/Kivb4L4Lszr
 8M2Qb+20Ev8UZHB2rbB97lwDTjR9kUKug5J+/izl1eMou863yiwVjRxMEcFcnWprQV2x
 qt+g7/a5eTYYzDwseAHF0XmTJUF1Jaoes0ZowMqNePFFdZ0K45Z/xURnhD1QcBWnhC27
 BMCzmthFJL/7Rq+V/TM9cQG+n5O5WLrrOhC7sXq7CYFmYHs6+vmyWU7DlgS0dda6GlON
 xwbGET9xsowmj/OYTC1CNTN/MKxoJv6GbaB4Qc4rt8jBPS0XDm73IWuAOA1Jcv4rYUGv
 cyXA==
X-Gm-Message-State: AOAM531kNSJzxss6TJCsgbvIOLNC+EK8zvXJhujzmqkxTdYHdmZ6BZt0
 F+eOYg6xiiXQIa8SOb5ndLMDXgX9ixeX7Y5/
X-Google-Smtp-Source: ABdhPJw76Q1+gK/xnyHMxR2askBULAluqYD2R0fcx3STYIH3VcbWODu5IsbrqSCKpX6TFtxL64BjoQ==
X-Received: by 2002:adf:9d4b:: with SMTP id o11mr5431338wre.29.1631791858513; 
 Thu, 16 Sep 2021 04:30:58 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:58 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:30 +0200
Message-Id: <20210916113042.3631-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 14/26] drm/i915: use the new iterator in
 i915_sw_fence_await_reservation v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogdXNlIGRtYV9yZXN2X2Zvcl9lYWNoX2Zl
bmNlIGluc3RlYWQsIGFjY29yZGluZyB0byBUdnJ0a28gdGhlIGxvY2sgaXMKICAgIGhlbGQgaGVy
ZSBhbnl3YXkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jIHwg
NTEgKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9zd19mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5j
CmluZGV4IGM1ODlhNjgxZGE3Ny4uODZlYjllY2U3MWUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9zd19mZW5jZS5jCkBAIC01NzIsNTYgKzU3MiwyMyBAQCBpbnQgaTkxNV9zd19mZW5jZV9hd2Fp
dF9yZXNlcnZhdGlvbihzdHJ1Y3QgaTkxNV9zd19mZW5jZSAqZmVuY2UsCiAJCQkJICAgIHVuc2ln
bmVkIGxvbmcgdGltZW91dCwKIAkJCQkgICAgZ2ZwX3QgZ2ZwKQogewotCXN0cnVjdCBkbWFfZmVu
Y2UgKmV4Y2w7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVu
Y2UgKmY7CiAJaW50IHJldCA9IDAsIHBlbmRpbmc7CiAKIAlkZWJ1Z19mZW5jZV9hc3NlcnQoZmVu
Y2UpOwogCW1pZ2h0X3NsZWVwX2lmKGdmcGZsYWdzX2FsbG93X2Jsb2NraW5nKGdmcCkpOwogCi0J
aWYgKHdyaXRlKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQ7Ci0JCXVuc2lnbmVkIGlu
dCBjb3VudCwgaTsKLQotCQlyZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKHJlc3YsICZleGNsLCAm
Y291bnQsICZzaGFyZWQpOwotCQlpZiAocmV0KQotCQkJcmV0dXJuIHJldDsKLQotCQlmb3IgKGkg
PSAwOyBpIDwgY291bnQ7IGkrKykgewotCQkJaWYgKHNoYXJlZFtpXS0+b3BzID09IGV4Y2x1ZGUp
Ci0JCQkJY29udGludWU7Ci0KLQkJCXBlbmRpbmcgPSBpOTE1X3N3X2ZlbmNlX2F3YWl0X2RtYV9m
ZW5jZShmZW5jZSwKLQkJCQkJCQkJc2hhcmVkW2ldLAotCQkJCQkJCQl0aW1lb3V0LAotCQkJCQkJ
CQlnZnApOwotCQkJaWYgKHBlbmRpbmcgPCAwKSB7Ci0JCQkJcmV0ID0gcGVuZGluZzsKLQkJCQli
cmVhazsKLQkJCX0KLQotCQkJcmV0IHw9IHBlbmRpbmc7Ci0JCX0KLQotCQlmb3IgKGkgPSAwOyBp
IDwgY291bnQ7IGkrKykKLQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKLQkJa2ZyZWUoc2hh
cmVkKTsKLQl9IGVsc2UgewotCQlleGNsID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQocmVz
dik7Ci0JfQotCi0JaWYgKHJldCA+PSAwICYmIGV4Y2wgJiYgZXhjbC0+b3BzICE9IGV4Y2x1ZGUp
IHsKLQkJcGVuZGluZyA9IGk5MTVfc3dfZmVuY2VfYXdhaXRfZG1hX2ZlbmNlKGZlbmNlLAotCQkJ
CQkJCWV4Y2wsCi0JCQkJCQkJdGltZW91dCwKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZShyZXN2
LCAmY3Vyc29yLCB3cml0ZSwgZikgeworCQlwZW5kaW5nID0gaTkxNV9zd19mZW5jZV9hd2FpdF9k
bWFfZmVuY2UoZmVuY2UsIGYsIHRpbWVvdXQsCiAJCQkJCQkJZ2ZwKTsKLQkJaWYgKHBlbmRpbmcg
PCAwKQorCQlpZiAocGVuZGluZyA8IDApIHsKIAkJCXJldCA9IHBlbmRpbmc7Ci0JCWVsc2UKLQkJ
CXJldCB8PSBwZW5kaW5nOwotCX0KLQotCWRtYV9mZW5jZV9wdXQoZXhjbCk7CisJCQlicmVhazsK
KwkJfQogCisJCXJldCB8PSBwZW5kaW5nOworCX0KIAlyZXR1cm4gcmV0OwogfQogCi0tIAoyLjI1
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
