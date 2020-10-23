Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C746296F0B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 14:26:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E1EB666ED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Oct 2020 12:26:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 70D08666EF; Fri, 23 Oct 2020 12:26:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF66C65FE5;
	Fri, 23 Oct 2020 12:24:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A7F8866009
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 12:24:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 977C0665AB; Fri, 23 Oct 2020 12:24:04 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 684AE665E9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 12:22:42 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id q5so1304962wmq.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Oct 2020 05:22:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Oo+WCqNcRY4hz8ARHU44AzglCk3LcvfnVh+Q+d4r9RU=;
 b=NmhNhhu8/GfJ5RX8FJTp19f075+iX+2JqkpxYrjDmmH6yEm7/uhUWiczYIs1SahiyG
 pSxlUdPOP5j+DKfhGTNLIBeszj1J9mV5srUeGx1hNZplMZEihJ2m+A2NEkzymX/Stspk
 a+NDAtSdHwQx+JarU4y1aj69u3DkM8hn+DXm3yLi3Qt1k5XaH0EPYJL+IczhrJLsRzpE
 mS4qrq7bsvPhM0cMHBsFKn57CmFvXAnw/Popw6+RtCdG6XKEMtHodb+LcXi4fIJsbqE3
 zR0jaeB7tRWaz8OGIuG2jmuRMRJ2jouAfygB7UGQGDReyEHWMdf21ZBnUAO3e4KH7Z2t
 3c8g==
X-Gm-Message-State: AOAM532JBHwJf/spMqBQIzwMiT51EGtnV2yqo7vCgiGzYj0b/AD7Wf83
 J7OkYYgUnP6rKxYQ6FmBVjvrSg==
X-Google-Smtp-Source: ABdhPJxmIrYyotlMUykKvZ8yFRoXhmXv4OuqQiJQL/V4ipGjIXJX6Lq0IMzK4dvfWtQS6XzUEHIJNg==
X-Received: by 2002:a7b:c401:: with SMTP id k1mr2023294wmi.120.1603455761598; 
 Fri, 23 Oct 2020 05:22:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:41 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:28 +0200
Message-Id: <20201023122216.2373294-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 17/65] drm/scheduler: use dma-fence
	annotations in main thread
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

SWYgdGhlIHNjaGVkdWxlciBydCB0aHJlYWQgZ2V0cyBzdHVjayBvbiBhIG11dGV4IHRoYXQgd2Un
cmUgaG9sZGluZwp3aGlsZSB3YWl0aW5nIGZvciBncHUgd29ya2xvYWRzIHRvIGNvbXBsZXRlLCB3
ZSBoYXZlIGEgcHJvYmxlbS4KCkFkZCBkbWEtZmVuY2UgYW5ub3RhdGlvbnMgc28gdGhhdCBsb2Nr
ZGVwIGNhbiBjaGVjayB0aGlzIGZvciB1cy4KCkkndmUgdHJpZWQgdG8gcXVpdGUgY2FyZWZ1bGx5
IHJldmlldyB0aGlzLCBhbmQgSSB0aGluayBpdCdzIGF0IHRoZQpyaWdodCBzcG90LiBCdXQgb2J2
aW9zbHkgbm8gZXhwZXJ0IG9uIGRybSBzY2hlZHVsZXIuCgpDYzogbGludXgtbWVkaWFAdmdlci5r
ZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKQ2M6IGxpbnV4LXJk
bWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDYg
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX21haW4uYwppbmRleCA5YTBkNzdhNjgwMTguLmY2OWFiYzRlNzBkMyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKQEAgLTc2NCw5ICs3NjQsMTIgQEAg
c3RhdGljIGludCBkcm1fc2NoZWRfbWFpbih2b2lkICpwYXJhbSkKIHsKIAlzdHJ1Y3QgZHJtX2dw
dV9zY2hlZHVsZXIgKnNjaGVkID0gKHN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqKXBhcmFtOwog
CWludCByOworCWJvb2wgZmVuY2VfY29va2llOwogCiAJc2NoZWRfc2V0X2ZpZm9fbG93KGN1cnJl
bnQpOwogCisJZmVuY2VfY29va2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsKKwog
CXdoaWxlICgha3RocmVhZF9zaG91bGRfc3RvcCgpKSB7CiAJCXN0cnVjdCBkcm1fc2NoZWRfZW50
aXR5ICplbnRpdHkgPSBOVUxMOwogCQlzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpzX2ZlbmNlOwpA
QCAtODI0LDYgKzgyNyw5IEBAIHN0YXRpYyBpbnQgZHJtX3NjaGVkX21haW4odm9pZCAqcGFyYW0p
CiAKIAkJd2FrZV91cCgmc2NoZWQtPmpvYl9zY2hlZHVsZWQpOwogCX0KKworCWRtYV9mZW5jZV9l
bmRfc2lnbmFsbGluZyhmZW5jZV9jb29raWUpOworCiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjgu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
