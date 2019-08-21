Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 032C997995
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 14:37:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F6756182D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 12:37:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 09CA961849; Wed, 21 Aug 2019 12:37:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 498BC61831;
	Wed, 21 Aug 2019 12:35:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6AA006181C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:35:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 581E661841; Wed, 21 Aug 2019 12:35:24 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 1EAB36181C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:31:51 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id c5so1756036wmb.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 05:31:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vRxenyuPXTsYnahqRGyH5Yj5fC/fTi1KqSFOQ4JZ9Gw=;
 b=P2kalZO7m3CfiOeVDspHpKZKGhWRYWHPn0Qlrw5z6nAXIrzdK1tGxswewD/7FgiwZD
 2c/VzSjxXyA3Kf78AJ7qldcfulvHsJgHjmFdKrS6lAgr8MxwnJyVfwFq6Z9fCCn20XBn
 5ZZ6JIh3YwHz50JQEM2w8dlL26h6+7kEBhlVoGHMzh6gN8vKRD3SSNXqTUHTbVAU+arM
 okDAXxeA0UXr1RPb8SgcLIyhFqt5ru9GwSXhZuRNoV+Cb0VKYISqDfhnoPXQCF4TT9+A
 nh5iA1rNk7gIzVMGiHbx7+H1YjYnVaGywEfRge0+DzPSjBPlz3recQASq3aTT3gCCqFC
 uaSA==
X-Gm-Message-State: APjAAAVyr79IjvLOTy64A9OJ24ny/8cr5w9FNdks8VkbT6UXUGXwjIDs
 jYsRFXpp6cMRe21Q8WNbfcE=
X-Google-Smtp-Source: APXvYqytx4jIhEs5N7wdzTIPC5/5YonglEmhFRoN8cVyNZfDM3u68wy5ntVWhBf7ISyXWk0v2rofoQ==
X-Received: by 2002:a1c:1d4f:: with SMTP id d76mr6199693wmd.127.1566390710289; 
 Wed, 21 Aug 2019 05:31:50 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8189:dd33:a934:c4fa])
 by smtp.gmail.com with ESMTPSA id v3sm23084571wrq.34.2019.08.21.05.31.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 05:31:49 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Wed, 21 Aug 2019 14:31:38 +0200
Message-Id: <20190821123147.110736-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821123147.110736-1-christian.koenig@amd.com>
References: <20190821123147.110736-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 01/10] dma-buf: make to_dma_fence_array NULL
	safe
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

QSBiaXQgc3VycHJpc2luZyB0aGF0IHRoaXMgd2Fzbid0IGFscmVhZHkgdGhlIGNhc2UuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0t
LQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvZG1hLWZlbmNlLWFycmF5LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oCmlu
ZGV4IDMwM2RkNzEyMjIwZi4uZjk5Y2Q3ZWIyNGUwIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS1hcnJheS5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgK
QEAgLTY4LDcgKzY4LDcgQEAgc3RhdGljIGlubGluZSBib29sIGRtYV9mZW5jZV9pc19hcnJheShz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRtYV9mZW5jZV9h
cnJheSAqCiB0b19kbWFfZmVuY2VfYXJyYXkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCiB7Ci0J
aWYgKGZlbmNlLT5vcHMgIT0gJmRtYV9mZW5jZV9hcnJheV9vcHMpCisJaWYgKCFmZW5jZSB8fCBm
ZW5jZS0+b3BzICE9ICZkbWFfZmVuY2VfYXJyYXlfb3BzKQogCQlyZXR1cm4gTlVMTDsKIAogCXJl
dHVybiBjb250YWluZXJfb2YoZmVuY2UsIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXksIGJhc2UpOwot
LSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
