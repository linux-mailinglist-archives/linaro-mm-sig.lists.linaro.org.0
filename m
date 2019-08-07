Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F16854FA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 23:12:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CAB06090A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 21:12:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4C22A61778; Wed,  7 Aug 2019 21:12:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 749C46176E;
	Wed,  7 Aug 2019 21:11:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C76F76090A
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 21:11:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A020A6176E; Wed,  7 Aug 2019 21:11:53 +0000 (UTC)
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by lists.linaro.org (Postfix) with ESMTPS id 6ABEC6090A
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 21:11:52 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id k8so87844857edr.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Aug 2019 14:11:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=SrcvGHIWjR3UMpKaSZ1PlaWITL+0CA5WgkaZwfXKnCk=;
 b=IJ/0ErFW/XBH/V4SDwcD9dMC614ui7ejQTog0uQrX0EfyzNi734SVD0JdB0AU5ngtj
 pFWmZBsm8FMyl4JuYBfrrSyBEM5je9YO+F7zTbG/JX+LDdeATnYugNNmljeGCPF1u1sT
 5bAt3aka7vhFm1k6JlB80z++YIhDnRZz6zxfuPEQSP+X37dbfMdpTfz7YL6Sc8phdlOD
 ldipgKjCmGnPhR71GhygPLwpkehyjQw/825Bctuu30G+L6nxnruLuI5moE3LylDUzs6X
 4VG4FjADlAgqaJ7PZ2GhMDdXdfwykoBEXkj+n04YC9CZkrHWlHR8Zb7CskFrXmO9HQ24
 vL9w==
X-Gm-Message-State: APjAAAUO1UxugpK5m57pWL1WuA4fmXdZDK65fjCGCOeCTlVQhB6mVZue
 Ah30ZYPChC9v5+yTGgA3zTkS4g==
X-Google-Smtp-Source: APXvYqwIVP89EwQJCiRFSNbzl6EOWLP2I1EfqtqZreHaxUGQAzuSQ4sgcohuF7//kz8bNQIt1yFIVA==
X-Received: by 2002:a17:906:d78d:: with SMTP id
 pj13mr10075645ejb.301.1565212311417; 
 Wed, 07 Aug 2019 14:11:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id h10sm21627534edh.64.2019.08.07.14.11.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 14:11:50 -0700 (PDT)
Date: Wed, 7 Aug 2019 23:11:48 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190807211148.GI7444@phenom.ffwll.local>
References: <20190807135405.2036-1-christian.koenig@amd.com>
 <156518651926.6198.3556429609794523741@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156518651926.6198.3556429609794523741@skylake-alporthouse-com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH] dma-buf: make dma_fence
 structure a bit smaller
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

T24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDM6MDE6NTlQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgQ2hyaXN0aWFuIEvDtm5pZyAoMjAxOS0wOC0wNyAxNDo1NDowNSkKPiA+
IFRoZSBydWMgYW5kIGNiX2xpc3QgYXJlIG5ldmVyIHVzZWQgYXQgdGhlIHNhbWUgdGltZS4KPiA+
IFRoaXMgc21hbCBjaGFuZ2UgaXMgYWN0dWFsbHkgbWFraW5nIHRoZSBzdHJ1Y3R1cmUgMTYlIHNt
YWxsZXIuCj4gKFRyaXZpYWwgcGFpciBvZiB0eXBvcykKPiAKPiBZZXMuIFdlIGNsZWFyIHRoZSBj
YWxsYmFjayBsaXN0IG9uIGtyZWZfcHV0IHNvIHRoYXQgYnkgdGhlIHRpbWUgd2UKPiByZWxlYXNl
IHRoZSBmZW5jZSBpdCBpcyB1bnVzZWQuIE5vIG9uZSBzaG91bGQgYmUgYWRkaW5nIHRvIHRoZSBj
Yl9saXN0Cj4gdGhhdCB0aGV5IGRvbid0IHRoZW1zZWx2ZXMgaG9sZCBhIHJlZmVyZW5jZSBmb3Is
IHRoaXMgb25seSBub3cgbWFrZXMgZm9yCj4gYSBtdWNoIG1vcmUgc3BlY3RhY3VsYXIgdXNlLWFm
dGVyLWZyZWUuIDopCgpeXiBzdHVmZiB0aGUgYWJvdmUgYXMgYW4gaW5saW5lIGtlcm5lbGRvYyBj
b21tZW50IGludG8gdGhlIHBhdGNoPyBBbmQgaW50bwp0aGUgY29tbWl0IG1lc3NhZ2UgdG9vIHBs
cy4gV2UgbmVlZCBiZXR0ZXIgZG9jcyBmb3IgYWxsIHRoaXMgc2NvcmNlcnkgOi0pCgpUaGFua3Ms
IERhbmllbAoKPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gLUNocmlzCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVl
ciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
