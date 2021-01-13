Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 458472F4F31
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 16:51:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7749366736
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 15:51:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 660D166737; Wed, 13 Jan 2021 15:51:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RDNS_NONE,SPF_HELO_SOFTFAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9FA266745;
	Wed, 13 Jan 2021 15:49:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DB6156672D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 15:45:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2C0CC66767; Wed, 13 Jan 2021 15:44:46 +0000 (UTC)
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by lists.linaro.org (Postfix) with ESMTPS id 212D066762
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 15:44:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23586395-1500050 for multiple; Wed, 13 Jan 2021 15:43:36 +0000
MIME-Version: 1.0
In-Reply-To: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
References: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 13 Jan 2021 15:43:34 +0000
Message-ID: <161055261490.6195.7986280621869334351@build.alporthouse.com>
User-Agent: alot/0.9
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Christian König <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH] drm-buf: Add debug option
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

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDIxLTAxLTEzIDE0OjA2OjA0KQo+IFdlIGhhdmUgdG9v
IG1hbnkgcGVvcGxlIGFidXNpbmcgdGhlIHN0cnVjdCBwYWdlIHRoZXkgY2FuIGdldCBhdCBidXQK
PiByZWFsbHkgc2hvdWxkbid0IGluIGltcG9ydGVycy4gQXNpZGUgZnJvbSB0aGF0IHRoZSBiYWNr
aW5nIHBhZ2UgbWlnaHQKPiBzaW1wbHkgbm90IGV4aXN0IChmb3IgZHluYW1pYyBwMnAgbWFwcGlu
Z3MpIGxvb2tpbmcgYXQgaXQgYW5kIHVzaW5nIGl0Cj4gZS5nLiBmb3IgbW1hcCBjYW4gYWxzbyB3
cmVhayB0aGUgcGFnZSBoYW5kbGluZyBvZiB0aGUgZXhwb3J0ZXIKPiBjb21wbGV0ZWx5LiBJbXBv
cnRlcnMgcmVhbGx5IG11c3QgZ28gdGhyb3VnaCB0aGUgcHJvcGVyIGludGVyZmFjZSBsaWtlCj4g
ZG1hX2J1Zl9tbWFwIGZvciBldmVyeXRoaW5nLgoKSWYgdGhlIGV4cG9ydGVyIGRvZXNuJ3Qgd2Fu
dCB0byBleHBvc2UgdGhlIHN0cnVjdCBwYWdlLCB3aHkgYXJlIHRoZXkKc2V0dGluZyBpdCBpbiB0
aGUgZXhwb3J0ZWQgc2dfdGFibGU/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
