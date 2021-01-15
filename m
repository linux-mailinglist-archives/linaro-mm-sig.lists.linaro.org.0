Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECE42F8029
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Jan 2021 16:59:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 736BB610D0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Jan 2021 15:59:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 64A3366722; Fri, 15 Jan 2021 15:59:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RDNS_NONE,SPF_HELO_SOFTFAIL autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39324664FE;
	Fri, 15 Jan 2021 15:59:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A08206073E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jan 2021 15:59:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 869D2664FE; Fri, 15 Jan 2021 15:59:17 +0000 (UTC)
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by lists.linaro.org (Postfix) with ESMTPS id A46926073E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jan 2021 15:59:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23608384-1500050 for multiple; Fri, 15 Jan 2021 15:59:10 +0000
MIME-Version: 1.0
In-Reply-To: <20210115155226.3943181-1-daniel.vetter@ffwll.ch>
References: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
 <20210115155226.3943181-1-daniel.vetter@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Fri, 15 Jan 2021 15:59:08 +0000
Message-ID: <161072634823.19482.13475673054687455694@build.alporthouse.com>
User-Agent: alot/0.9
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>, Christian König <christian.koenig@amd.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Add debug option
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

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDIxLTAxLTE1IDE1OjUyOjI2KQo+ICtzdGF0aWMgdm9p
ZCBtYW5nbGVfc2dfdGFibGUoc3RydWN0IHNnX3RhYmxlICpzZ190YWJsZSkKPiArewo+ICsjaWZk
ZWYgQ09ORklHX0RNQUJVRl9ERUJVRwo+ICsgICAgICAgaW50IGk7Cj4gKyAgICAgICBzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKnNnOwo+ICsKPiArICAgICAgIGlmICghc2dfdGFibGUpCgppZiAoIUlTX0VO
QUJMRUQoQ09ORklHX0RNQUJVRl9ERUJVRykgfHwgSVNfRVJSX09SX05VTEwoc2dfdGFibGUpKQo+
ICsgICAgICAgICAgICAgICByZXR1cm47CgpBbHRob3VnaCBOVUxMIGlzIG5vdCBtZWFudCB0byBi
ZSByZXR1cm5lZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
