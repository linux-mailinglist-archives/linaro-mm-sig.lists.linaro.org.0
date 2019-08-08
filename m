Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD33862BC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Aug 2019 15:15:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3D64617D1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Aug 2019 13:15:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A127C617DA; Thu,  8 Aug 2019 13:15:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AA1461786;
	Thu,  8 Aug 2019 13:14:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5816C608DE
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Aug 2019 13:14:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 399E361786; Thu,  8 Aug 2019 13:14:49 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 372DE608DE
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Aug 2019 13:14:48 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id l2so2402314wmg.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Aug 2019 06:14:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QXg8/50/m0qICIMMrj9BArF0ioly+QuNwMno0BPcCis=;
 b=SmcclgNk1RDFzCQLbbqZAL+pgHt3y15I5eGnlkOVXo635YxoGAC8jeIzVpRN9ljH4X
 u76LTwYUTlQjGuG7p4nt5jPQMBqd/vBnwcu70re1QsTNIlPrqKKIhCPI/On4aW1F3bDd
 rI6YkBVxBWPTa0RHWqIA9GqX/TFuwo1nBDhYVEwSRKIdlsscUyqcjKoSSoqBXvhU64xC
 0uty0inm2QGdLbF2WoYK+Ln8U/Vb2RPF2gSyja8eq3GuofWcuvt1zunqUMQ5rXEYsLC2
 c1EgyOVszXOvI5iDcDJiXS1BD8mKuHNcUvaQW4j5LQsPk7VbW4J0xCwsUeWYSuEMStB+
 3/xQ==
X-Gm-Message-State: APjAAAXN67Zpz39nMEBOJgCRWM6B3O7PAWMrBefd24A6gxLGrtZlJufl
 2oXrv9jiv8WVf/5qeGcMFRo=
X-Google-Smtp-Source: APXvYqz4v7jvW8SeZLxgBZRe+Mur+zKiJsaWpJ/cyemYxpSuefyIwH4qfitJX9wD39m7n7u7ebgGZg==
X-Received: by 2002:a7b:cb51:: with SMTP id v17mr4379575wmj.20.1565270087414; 
 Thu, 08 Aug 2019 06:14:47 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:9969:2269:d9b7:abda])
 by smtp.gmail.com with ESMTPSA id b8sm82907518wrr.43.2019.08.08.06.14.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 06:14:46 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Date: Thu,  8 Aug 2019 15:14:45 +0200
Message-Id: <20190808131445.23372-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] dma-buf: make dma_fence structure a bit
	smaller
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

V2UgY2xlYXIgdGhlIGNhbGxiYWNrIGxpc3Qgb24ga3JlZl9wdXQgc28gdGhhdCBieSB0aGUgdGlt
ZSB3ZQpyZWxlYXNlIHRoZSBmZW5jZSBpdCBpcyB1bnVzZWQuIE5vIG9uZSBzaG91bGQgYmUgYWRk
aW5nIHRvIHRoZSBjYl9saXN0CnRoYXQgdGhleSBkb24ndCB0aGVtc2VsdmVzIGhvbGQgYSByZWZl
cmVuY2UgZm9yLgoKVGhpcyBzbWFsbCBjaGFuZ2UgaXMgYWN0dWFsbHkgbWFraW5nIHRoZSBzdHJ1
Y3R1cmUgMTYlIHNtYWxsZXIuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLS0tCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIHwgNiArKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmgKaW5kZXggMDVkMjlkYmM3ZTYyLi4zOTg1YzcyY2QwYzIgMTAwNjQ0Ci0tLSBhL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLmgKKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaApAQCAt
NjUsOCArNjUsMTAgQEAgc3RydWN0IGRtYV9mZW5jZV9jYjsKIHN0cnVjdCBkbWFfZmVuY2Ugewog
CXN0cnVjdCBrcmVmIHJlZmNvdW50OwogCWNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHM7
Ci0Jc3RydWN0IHJjdV9oZWFkIHJjdTsKLQlzdHJ1Y3QgbGlzdF9oZWFkIGNiX2xpc3Q7CisJdW5p
b24geworCQlzdHJ1Y3QgcmN1X2hlYWQgcmN1OworCQlzdHJ1Y3QgbGlzdF9oZWFkIGNiX2xpc3Q7
CisJfTsKIAlzcGlubG9ja190ICpsb2NrOwogCXU2NCBjb250ZXh0OwogCXU2NCBzZXFubzsKLS0g
CjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
