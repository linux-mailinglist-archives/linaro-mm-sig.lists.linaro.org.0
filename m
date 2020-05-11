Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED841CD588
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2020 11:41:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FC0B61839
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2020 09:41:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 90CF36183D; Mon, 11 May 2020 09:41:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C70C617CC;
	Mon, 11 May 2020 09:41:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 77E3F6179D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 09:41:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 696E460696; Mon, 11 May 2020 09:41:17 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 5EE6260696
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 09:41:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21157987-1500050 for multiple; Mon, 11 May 2020 10:41:05 +0100
MIME-Version: 1.0
In-Reply-To: <20200511091142.208787-2-daniel.vetter@ffwll.ch>
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
 <20200511091142.208787-2-daniel.vetter@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>
Message-ID: <158919006380.1729.6928823811672806738@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 11 May 2020 10:41:03 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/3] dma-fence: use default wait
	function for mock fences
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

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDIwLTA1LTExIDEwOjExOjQxKQo+IE5vIG5lZWQgdG8g
bWljcm8tb3B0bWl6ZSB3aGVuIHdlJ3JlIHdhaXRpbmcgaW4gYSBtb2NrZWQgb2JqZWN0IC4uLgoK
SXQncyBzZXR0aW5nIHVwIHRoZSBleHBlY3RlZCByZXR1cm4gdmFsdWVzIGZvciB0aGUgdGVzdC4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
