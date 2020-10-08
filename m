Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C31287349
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 13:25:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 086A7617D8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 11:25:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EEB0666023; Thu,  8 Oct 2020 11:25:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C46566029;
	Thu,  8 Oct 2020 11:23:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9B57E616FC
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 11:23:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 80E5366029; Thu,  8 Oct 2020 11:23:48 +0000 (UTC)
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by lists.linaro.org (Postfix) with ESMTPS id 7BCCC616FC
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 11:23:46 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id l24so5431478edj.8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Oct 2020 04:23:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JsjjPHzjofiTjxIZU4zLpu7KElZkR0RdFNQVI4MgOuI=;
 b=gdgIQ4flwTDuQoLDNCMVslLHB00srAjRu8YvLchTM/W+1Np/Q4beqESFnnkXkzzViM
 L6bF6pcOwXTfbF+X0jzygFw6N4ujMAFBJrWrzCh3aFHEWJ9Os2YZReK6wPYWXraLPYLt
 lmW9pY+InzNgfUCE6uf/60DpQnRloBkXWIidlb4kQ+gl0qebKyQ6MymFAVqvrwJ0BOHG
 V66oxAKaZqzmcwr62peXm3urJN7lYdK8rDngD/NRpSdqLZU2nncf2xvNYwnf2wfKK+CO
 9rKapxVIw4RQUdlziDmkgRjqkuZ8Yuyy0zZXBYvmHPSVtHqWsWkoe4NGS4RawugwKDxj
 Z+ig==
X-Gm-Message-State: AOAM530dVBNUGvG6xHBvhotuquVsWX6wWkGe7zg0ZHeOymYLfW/o2EAy
 XIXPwUlyjxL+/kdQLVOWl50=
X-Google-Smtp-Source: ABdhPJwDRyJHE6THipTubGPFIEhicDT26J0ZkLEqMYptkgqx4YSyy8HXoku93odOoEECNMopX74sdQ==
X-Received: by 2002:aa7:c7c2:: with SMTP id o2mr8673537eds.366.1602156225590; 
 Thu, 08 Oct 2020 04:23:45 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:4c64:a9a0:5e0:905a])
 by smtp.gmail.com with ESMTPSA id i20sm3529030edv.96.2020.10.08.04.23.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 04:23:45 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, chris@chris-wilson.co.uk, airlied@redhat.com,
 akpm@linux-foundation.org, daniel@ffwll.ch, sumit.semwal@linaro.org
Date: Thu,  8 Oct 2020 13:23:40 +0200
Message-Id: <20201008112342.9394-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201008112342.9394-1-christian.koenig@amd.com>
References: <20201008112342.9394-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/4] drm/prime: document that use the page
	array is deprecated
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

V2UgaGF2ZSByZW9jY3VycmluZyByZXF1ZXN0cyBvbiB0aGlzIHNvIGJldHRlciBkb2N1bWVudCB0
aGF0CnRoaXMgYXBwcm9hY2ggZG9lc24ndCB3b3JrIGFuZCBkbWFfYnVmX21tYXAoKSBuZWVkcyB0
byBiZSB1c2VkIGluc3RlYWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jIHwg
NyArKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9wcmltZS5jCmluZGV4IDQ5MTBjNDQ2ZGI4My4uMTZmYTJiZmMyNzFlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9wcmltZS5jCkBAIC05NTYsNyArOTU2LDcgQEAgRVhQT1JUX1NZTUJPTChkcm1fZ2VtX3ByaW1l
X2ltcG9ydCk7CiAvKioKICAqIGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzIC0gY29u
dmVydCBhbiBzZyB0YWJsZSBpbnRvIGEgcGFnZSBhcnJheQogICogQHNndDogc2NhdHRlci1nYXRo
ZXIgdGFibGUgdG8gY29udmVydAotICogQHBhZ2VzOiBvcHRpb25hbCBhcnJheSBvZiBwYWdlIHBv
aW50ZXJzIHRvIHN0b3JlIHRoZSBwYWdlIGFycmF5IGluCisgKiBAcGFnZXM6IGRlcHJlY2F0ZWQg
YXJyYXkgb2YgcGFnZSBwb2ludGVycyB0byBzdG9yZSB0aGUgcGFnZSBhcnJheSBpbgogICogQGFk
ZHJzOiBvcHRpb25hbCBhcnJheSB0byBzdG9yZSB0aGUgZG1hIGJ1cyBhZGRyZXNzIG9mIGVhY2gg
cGFnZQogICogQG1heF9lbnRyaWVzOiBzaXplIG9mIGJvdGggdGhlIHBhc3NlZC1pbiBhcnJheXMK
ICAqCkBAIC05NjUsNiArOTY1LDExIEBAIEVYUE9SVF9TWU1CT0woZHJtX2dlbV9wcmltZV9pbXBv
cnQpOwogICoKICAqIERyaXZlcnMgY2FuIHVzZSB0aGlzIGluIHRoZWlyICZkcm1fZHJpdmVyLmdl
bV9wcmltZV9pbXBvcnRfc2dfdGFibGUKICAqIGltcGxlbWVudGF0aW9uLgorICoKKyAqIFNwZWNp
ZnlpbmcgdGhlIHBhZ2VzIGFycmF5IGlzIGRlcHJlY2F0ZWQgYW5kIHN0cm9uZ2x5IGRpc2NvdXJh
Z2VkIGZvciBuZXcKKyAqIGRyaXZlcnMuIFRoZSBwYWdlcyBhcnJheSBpcyBvbmx5IHVzZWZ1bCBm
b3IgcGFnZSBmYXVsdHMgYW5kIHRob3NlIGNhbgorICogY29ycnVwdCBmaWVsZHMgaW4gdGhlIHN0
cnVjdCBwYWdlIGlmIHRoZXkgYXJlIG5vdCBoYW5kbGVkIGJ5IHRoZSBleHBvcnRpbmcKKyAqIGRy
aXZlci4KICAqLwogaW50IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHN0cnVjdCBz
Z190YWJsZSAqc2d0LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzLAogCQkJCSAgICAgZG1hX2FkZHJfdCAq
YWRkcnMsIGludCBtYXhfZW50cmllcykKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
