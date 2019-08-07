Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA33850A9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 18:08:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7EA261772
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 16:08:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D59A06179D; Wed,  7 Aug 2019 16:08:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C04206176E;
	Wed,  7 Aug 2019 16:07:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0EDF160C21
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 16:07:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EA5B76176E; Wed,  7 Aug 2019 16:07:39 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id D81C660C21
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 16:07:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17920932-1500050 for multiple; Wed, 07 Aug 2019 17:07:33 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20190807135312.1730-1-christian.koenig@amd.com>
In-Reply-To: <20190807135312.1730-1-christian.koenig@amd.com>
Message-ID: <156519405123.6198.6783497946871457276@skylake-alporthouse-com>
Date: Wed, 07 Aug 2019 17:07:31 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/4] dma-buf: add
	reservation_object_fences helper
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA3IDE0OjUzOjA5KQo+IEFkZCBhIG5l
dyBoZWxwZXIgdG8gZ2V0IGEgY29uc2lzdGVudCBzZXQgb2YgcG9pbnRlcnMgZnJvbSB0aGUgcmVz
ZXJ2YXRpb24KPiBvYmplY3QuIFdoaWxlIGF0IGl0IGdyb3VwIGFsbCBhY2Nlc3MgaGVscGVycyB0
b2dldGhlciBpbiB0aGUgaGVhZGVyIGZpbGUuCj4gCj4gdjI6IGNvcnJlY3RseSByZXR1cm4gc2hh
cmVkX2NvdW50IGFzIHdlbGwKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
