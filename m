Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E589D22C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 16:59:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE0DF60756
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Aug 2019 14:59:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BEE5C607EC; Mon, 26 Aug 2019 14:59:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6560B61895;
	Mon, 26 Aug 2019 14:57:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4CD1361836
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 28F9260B64; Mon, 26 Aug 2019 14:57:38 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id E2CA260B64
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 14:57:35 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id j16so15624001wrr.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Aug 2019 07:57:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vRxenyuPXTsYnahqRGyH5Yj5fC/fTi1KqSFOQ4JZ9Gw=;
 b=tM7k8rg+FocBU93DSmznux7t6yNSbOXLoiXrqzB08vDvcRE4Za2MlD39e4qPAw4xt3
 t155ZE1CXkYkBrvLQtZQGONLUTHFUuc58O7rWk+DNAb14/HR7j/fTov7nYOsNObo97ad
 kc3jNo7tMQH6hoxVfkJD5wA0JanS0IfkP0pJuT6HfPY4bqAZvte21ECS7/Eri7bX6ahW
 zS7V+1lEk4a7thkgwJXD453noaXtL9hJdXO/Pl5qZakbp9CvAvc/RLSXY4lnfUexP5D/
 OCAZr6+phDJQ4jACTXuw1g0n/2GQMm2TKwYOz/mAoiEEZwx8Zxr1YSwwqDIBaO/plC/1
 YWyg==
X-Gm-Message-State: APjAAAUjSc/4kVl+jnD9mBR6ZGcVKTUi1y5xSTXss0lQOgMkp/IK5njf
 E0wx5XprQaOumiUIZ+fU/Mw=
X-Google-Smtp-Source: APXvYqwyavJtqHKKFG9/Pq0hDSbK0sjA/XLM8TXsnzlM+VWfYqXqebeBxy61gjNb6QCvvBU9C7spAg==
X-Received: by 2002:a5d:4f81:: with SMTP id d1mr23121481wru.177.1566831455056; 
 Mon, 26 Aug 2019 07:57:35 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:b0e3:7a12:98e5:ca6])
 by smtp.gmail.com with ESMTPSA id z8sm9865624wmi.7.2019.08.26.07.57.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 07:57:34 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Mon, 26 Aug 2019 16:57:24 +0200
Message-Id: <20190826145731.1725-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826145731.1725-1-christian.koenig@amd.com>
References: <20190826145731.1725-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/9] dma-buf: make to_dma_fence_array NULL
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
