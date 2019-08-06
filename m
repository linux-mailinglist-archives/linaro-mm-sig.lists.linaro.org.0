Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDBD8395E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 21:07:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 104F6617B5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 19:07:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F3FD6617C8; Tue,  6 Aug 2019 19:07:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85CE3617C3;
	Tue,  6 Aug 2019 19:07:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0AF00617B0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 19:07:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F0CBE617C3; Tue,  6 Aug 2019 19:07:32 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 1147D617B0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 19:07:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17909680-1500050 for multiple; Tue, 06 Aug 2019 20:07:28 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20190806150134.104222-1-christian.koenig@amd.com>
 <20190806150134.104222-3-christian.koenig@amd.com>
In-Reply-To: <20190806150134.104222-3-christian.koenig@amd.com>
Message-ID: <156511844626.6198.5922314990162379870@skylake-alporthouse-com>
Date: Tue, 06 Aug 2019 20:07:26 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 3/8] drm/i915: stop using seqcount for
	fenc pruning
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA2IDE2OjAxOjI5KQo+IEFmdGVyIHdh
aXRpbmcgZm9yIGEgcmVzZXJ2YXRpb24gb2JqZWN0IHVzZSByZXNlcnZhdGlvbl9vYmplY3RfdGVz
dF9zaWduYWxlZF9yY3UKPiB0byBvcHBvcnR1bmlzdGljYWxseSBwcnVuZSB0aGUgZmVuY2VzIG9u
IHRoZSBvYmplY3QuCj4gCj4gVGhpcyBhbGxvd3MgcmVtb3ZhbCBvZiB0aGUgc2VxY291bnQgaGFu
ZGxpbmcgaW4gdGhlIHJlc2VydmF0aW9uIG9iamVjdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkkgbGlrZSBrZWVwaW5nIHRoZSBy
ZW1pbmRlciBhYm91dCB0aGUgbGFjayBvZiBwcnVuaW5nIG9uIGlkbGUgb2JqZWN0cyA6KQotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
