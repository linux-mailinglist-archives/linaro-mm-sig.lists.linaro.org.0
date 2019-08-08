Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9274286306
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Aug 2019 15:23:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD51C617D1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Aug 2019 13:23:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AD2D3617DA; Thu,  8 Aug 2019 13:23:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3AAC61786;
	Thu,  8 Aug 2019 13:22:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BCA62608DE
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Aug 2019 13:22:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B157961786; Thu,  8 Aug 2019 13:22:46 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 87182608DE
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Aug 2019 13:22:45 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id q12so4653597wrj.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Aug 2019 06:22:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sVwVfjzRRycoraZYR1eOD8IrhXOmA6ZHD0oG9OO+JDo=;
 b=tRIwrBjWLmeKSxes85f6aDsC0i6sbKg5T4W7COtEwH7cjmFF7l4ddSWJ7Wi/8932Cp
 R1HVIOa5XHhPfATEvi8wm8teKauSpBEsxXfh3vGB9qx7auMJ9x/y90leWqZWTAVnFzm4
 t6lQr8GM+WOpr70F5JBozU52UjA4cn41LdCTnH/YbUDnlewsbzkmh/4tYCMuXnvKzRE3
 aNwpLa80s1XbxcvXAEppYfBtK8vrhZ1qBdta/9TVrL0mWQCN9UCX+e7QMovTEllAbUE5
 uJ0+Ktpf1oGtlJoouNfUv4aEUWLluIo6Z5eS5YuyQILqZ5q5w07meMf9wqiA1sf/oJIV
 MP4A==
X-Gm-Message-State: APjAAAUfO0LkHVZ8wWEbMkIUQB+D+Qo+YUIbN1ZQqWvcPGGgSd2v/3TQ
 3kLUpLMN9rwDymsbnvUBWV7GGx0v
X-Google-Smtp-Source: APXvYqxe5UDrur+I80kg75qILxnX6soEqoUOPUMrSNEMWBE9Kaoj1PbStABq6MzLB4ecBxkc3Lu9FA==
X-Received: by 2002:adf:fc81:: with SMTP id g1mr12942295wrr.78.1565270564778; 
 Thu, 08 Aug 2019 06:22:44 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:9969:2269:d9b7:abda])
 by smtp.gmail.com with ESMTPSA id o5sm3905225wrv.20.2019.08.08.06.22.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 06:22:44 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Date: Thu,  8 Aug 2019 15:22:43 +0200
Message-Id: <20190808132243.23632-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] dma-buf: make dma_fence structure a bit
	smaller v2
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
Y3R1cmUgMTYlIHNtYWxsZXIuCgp2MjogYWRkIHRoZSBjb21tZW50IHRvIHRoZSBjb2RlIGFzIHdl
bGwuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIHwgMTAgKysrKysrKystLQogMSBmaWxl
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaAppbmRl
eCAwNWQyOWRiYzdlNjIuLmJlYTFkMDVjZjUxZSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaAorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCkBAIC02NSw4ICs2NSwx
NCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX2NiOwogc3RydWN0IGRtYV9mZW5jZSB7CiAJc3RydWN0IGty
ZWYgcmVmY291bnQ7CiAJY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wczsKLQlzdHJ1Y3Qg
cmN1X2hlYWQgcmN1OwotCXN0cnVjdCBsaXN0X2hlYWQgY2JfbGlzdDsKKwkvKiBXZSBjbGVhciB0
aGUgY2FsbGJhY2sgbGlzdCBvbiBrcmVmX3B1dCBzbyB0aGF0IGJ5IHRoZSB0aW1lIHdlCisJICog
cmVsZWFzZSB0aGUgZmVuY2UgaXQgaXMgdW51c2VkLiBObyBvbmUgc2hvdWxkIGJlIGFkZGluZyB0
byB0aGUgY2JfbGlzdAorCSAqIHRoYXQgdGhleSBkb24ndCB0aGVtc2VsdmVzIGhvbGQgYSByZWZl
cmVuY2UgZm9yLgorCSAqLworCXVuaW9uIHsKKwkJc3RydWN0IHJjdV9oZWFkIHJjdTsKKwkJc3Ry
dWN0IGxpc3RfaGVhZCBjYl9saXN0OworCX07CiAJc3BpbmxvY2tfdCAqbG9jazsKIAl1NjQgY29u
dGV4dDsKIAl1NjQgc2Vxbm87Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
