Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D22A84E21
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 16:02:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CABA617F2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 14:02:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2FED4617F5; Wed,  7 Aug 2019 14:02:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F7B3617DA;
	Wed,  7 Aug 2019 14:02:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EA13E60BD7
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 14:02:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D7588617DA; Wed,  7 Aug 2019 14:02:07 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 7215760BD7
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 14:02:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17919253-1500050 for multiple; Wed, 07 Aug 2019 15:02:01 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20190807135405.2036-1-christian.koenig@amd.com>
In-Reply-To: <20190807135405.2036-1-christian.koenig@amd.com>
Message-ID: <156518651926.6198.3556429609794523741@skylake-alporthouse-com>
Date: Wed, 07 Aug 2019 15:01:59 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: make dma_fence structure a bit
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA3IDE0OjU0OjA1KQo+IFRoZSBydWMg
YW5kIGNiX2xpc3QgYXJlIG5ldmVyIHVzZWQgYXQgdGhlIHNhbWUgdGltZS4KPiBUaGlzIHNtYWwg
Y2hhbmdlIGlzIGFjdHVhbGx5IG1ha2luZyB0aGUgc3RydWN0dXJlIDE2JSBzbWFsbGVyLgooVHJp
dmlhbCBwYWlyIG9mIHR5cG9zKQoKWWVzLiBXZSBjbGVhciB0aGUgY2FsbGJhY2sgbGlzdCBvbiBr
cmVmX3B1dCBzbyB0aGF0IGJ5IHRoZSB0aW1lIHdlCnJlbGVhc2UgdGhlIGZlbmNlIGl0IGlzIHVu
dXNlZC4gTm8gb25lIHNob3VsZCBiZSBhZGRpbmcgdG8gdGhlIGNiX2xpc3QKdGhhdCB0aGV5IGRv
bid0IHRoZW1zZWx2ZXMgaG9sZCBhIHJlZmVyZW5jZSBmb3IsIHRoaXMgb25seSBub3cgbWFrZXMg
Zm9yCmEgbXVjaCBtb3JlIHNwZWN0YWN1bGFyIHVzZS1hZnRlci1mcmVlLiA6KQoKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClJldmll
d2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
