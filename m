Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B50D8233E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 18:54:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33DF66088B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 16:54:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 294AB6099C; Mon,  5 Aug 2019 16:54:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F151060956;
	Mon,  5 Aug 2019 16:54:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A92316079C
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 16:54:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8DE1D60956; Mon,  5 Aug 2019 16:54:30 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 2B9256079C
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 16:54:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17895348-1500050 for multiple; Mon, 05 Aug 2019 17:54:21 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20190805154554.3476-1-christian.koenig@amd.com>
 <156502073694.28464.1595909334726483969@skylake-alporthouse-com>
In-Reply-To: <156502073694.28464.1595909334726483969@skylake-alporthouse-com>
Message-ID: <156502405985.28464.7514823669359337891@skylake-alporthouse-com>
Date: Mon, 05 Aug 2019 17:54:19 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/5] drm/i915: stop pruning reservation
	object after wait
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMDUgMTY6NTg6NTYpCj4gUXVvdGluZyBDaHJp
c3RpYW4gS8O2bmlnICgyMDE5LTA4LTA1IDE2OjQ1OjUwKQo+ID4gVGhlIHJlc2VydmF0aW9uIG9i
amVjdCBzaG91bGQgYmUgY2FwYWJsZSBvZiBoYW5kbGluZyBpdHMgaW50ZXJuYWwgbWVtb3J5Cj4g
PiBtYW5hZ2VtZW50IGl0c2VsZi4gQW5kIHNpbmNlIHdlIHNlYXJjaCBmb3IgYSBmcmVlIHNsb3Qg
dG8gYWRkIHRoZSBmZW5jZQo+ID4gZnJvbSB0aGUgYmVnaW5uaW5nIHRoaXMgaXMgYWN0dWFsbHkg
YSB3YXN0ZSBvZiB0aW1lIGFuZCBvbmx5IG1pbmltYWwgaGVscGZ1bC4KPiAKPiAiRnJvbSB0aGUg
YmVnaW5uaW5nPyIgQXR0ZW1wdGluZyB0byBwcnVuZSBzaWduYWxlZCBmZW5jZXMgb24gaW5zZXJ0
aW9uIGlzCj4gcXVpdGUgcmVjZW50Lgo+IAo+IEhvd2V2ZXIsIHRoYXQgZG9lc24ndCBoZWxwIHRo
ZSBjYXNlcyB3aGVyZSByZXNlcnZhdGlvbl9vYmplY3Qga2VlcHMgb24KPiBob2xkaW5nIGEgcmVm
ZXJlbmNlIHRvIHRoZSBmZW5jZXMgZm9yIGlkbGUgb2JqZWN0cy4gSXQncyBhbiBhYnNvbHV0ZQo+
IG5pZ2h0bWFyZSBvZiBhIHJlZmVyZW5jZSB0cmFwLgoKRndpdywgaXQncyBhIHBldCBwZWV2ZSwg
YW5kIG5vdCBhIGZ1bmRhbWVudGFsIG9iamVjdCB0byByZW1vdmluZyBzb21lCmxvb3BzIGluc2lk
ZSByZXNlcnZhdGlvbl9vYmplY3QuIEhlcmUsIHRoZSBzZXFubyBpcyBiZWluZyB1c2VkIGFzIGEK
Z3VpZGUgdG8gYXZvaWQgdHJ5aW5nIHRvIHRha2UgdGhlIGxvY2sgaWYgaXQncyBiZWVuIGV4dGVy
bmFsbHkgbW9kaWZpZWQsCmJ1dCBpdCB3b3VsZCBlcXVhbGx5IHdvcmsgd2l0aCBqdXN0IGEgcGxh
aW4gdHJ5bG9jayArIHRlc3RfcmN1LgoKQmV0dGVyIHlldCB3b3VsZCBiZSBhdXRvcHJ1bmluZywg
YnV0IHRoYXQgc3VnZ2VzdHMgYSBzbGlnaHRseSBkaWZmZXJlbnQKZGF0YSBzdHJ1Y3R1cmUgYW4g
cmJ0cmVlIGluc3RlYWQgb2YgYW4gYXJyYXkgYW5kIHNwaW5sb2NrZWQgY2JfbGlzdAptYW5pcHVs
YXRpb24gaW5zdGVhZCBvZiBhIHBsYWluIHJlZmNvdW50LgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
