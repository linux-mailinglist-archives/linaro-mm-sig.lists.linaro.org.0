Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A47B7C169
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2019 14:34:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8105B60795
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2019 12:34:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 74EB560BEF; Wed, 31 Jul 2019 12:34:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE4ED608D3;
	Wed, 31 Jul 2019 12:33:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E4D2260795
 for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2019 12:33:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D766C608D3; Wed, 31 Jul 2019 12:33:46 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id D646E60795
 for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2019 12:33:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17759077-1500050 for multiple; Wed, 31 Jul 2019 13:33:31 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, sumit.semwal@linaro.org
References: <20190731113853.51779-1-christian.koenig@amd.com>
In-Reply-To: <20190731113853.51779-1-christian.koenig@amd.com>
Message-ID: <156457641010.6373.7515721920178088211@skylake-alporthouse-com>
Date: Wed, 31 Jul 2019 13:33:30 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: add more reservation object
	locking wrappers
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA3LTMxIDEyOjM4OjUzKQo+IENvbXBsZXRl
IHRoZSBhYnN0cmFjdGlvbiBvZiB0aGUgd3dfbXV0ZXggaW5zaWRlIHRoZSByZXNlcnZhdGlvbiBv
YmplY3QuCj4gCj4gVGhpcyBhbGxvd3MgdXMgdG8gYWRkIG1vcmUgaGFuZGxpbmcgYW5kIGRlYnVn
Z2luZyB0byB0aGUgcmVzZXJ2YXRpb24KPiBvYmplY3QgaW4gdGhlIGZ1dHVyZS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CgpM
b29rcyBlbnRpcmVseSBtZWNoYW5pY2FsLApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CgpRdWlldGx5IG9waW5lcyBmb3Igcy9yZXNlcnZhdGlvbl9v
YmplY3QvZG1hX3Jlc2VydmF0aW9uLwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
