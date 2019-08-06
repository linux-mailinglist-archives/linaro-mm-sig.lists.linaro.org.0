Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8205E8392D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 20:58:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4357617CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 18:58:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A1973617CC; Tue,  6 Aug 2019 18:58:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3224617C3;
	Tue,  6 Aug 2019 18:57:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9C7BB617B0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 18:57:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 895B6617C3; Tue,  6 Aug 2019 18:57:41 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 10A4E617B0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 18:57:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17909567-1500050 for multiple; Tue, 06 Aug 2019 19:57:34 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20190806150134.104222-1-christian.koenig@amd.com>
In-Reply-To: <20190806150134.104222-1-christian.koenig@amd.com>
Message-ID: <156511785146.6198.12664699085110516720@skylake-alporthouse-com>
Date: Tue, 06 Aug 2019 19:57:31 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/8] dma-buf: fix busy wait for new
	shared fences
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA2IDE2OjAxOjI3KQo+IFdoZW4gcmVz
ZXJ2YXRpb25fb2JqZWN0X2FkZF9zaGFyZWRfZmVuY2UgaXMgcmVwbGFjaW5nIGFuIG9sZCBmZW5j
ZSB3aXRoIGEgbmV3Cj4gb25lIHdlIHNob3VsZCBub3QgZHJvcCB0aGUgb2xkIG9uZSBiZWZvcmUg
dGhlIG5ldyBvbmUgaXMgaW4gcGxhY2UuCj4gCj4gT3RoZXJ3aXNlIG90aGVyIGNvcmVzIGNhbiBi
dXN5IHdhaXQgZm9yIHRoZSBuZXcgb25lIHRvIGFwcGVhci4KCkkgc2VlLiBUaGUgcmVhZGVyIHdp
bGwgc2VlIGEgcmVmY291bnQ9PTAgZmVuY2UgYW5kIHJlc3RhcnQsIHdoZXJlYXMgYnkKZHJvcHBp
bmcgdGhlIHJlZiBsYXRlciwgdGhhdCByZWFkZXIgaGFzIGEgYmV0dGVyIGNoYW5jZSBvZiBnZXR0
aW5nIHRvCnRoZSBlbmQgYmVmb3JlIG5vdGljaW5nIHRoZSBjaGFuZ2UuCgo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
