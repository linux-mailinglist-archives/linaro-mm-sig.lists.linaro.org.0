Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3BF2F544D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 21:50:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E2A1617D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 20:50:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1AA1F6672F; Wed, 13 Jan 2021 20:50:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69372666E9;
	Wed, 13 Jan 2021 20:50:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 13D2A60813
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 20:50:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EB55A666E9; Wed, 13 Jan 2021 20:50:23 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by lists.linaro.org (Postfix) with ESMTPS id B205460813
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 20:50:22 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id q205so3545874oig.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 12:50:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rqFgc2dzKme0zr+aU1JENA4xdAtd9mmh2guoOC2yjew=;
 b=tEl6yP1c4j+gEZDv7q4KHRqkkqW29I9KIIztUXiC1MbVaio6J8t2aB6RV2+ibetIDV
 3jPf2rCGoSM0Bb23Uq5u8dsQeIv9vTwY6zQjrJh6DppqyDhFn83tfRPmoHNBaJE/H5k0
 F6c8WL4w+V8flvPGdSkWrBb/AMWRBnzppllPjBNuC8Dbi/YGFJo4wGgtlsEFVMPubTDc
 n1mPAIYtHawK1avphYquOEWaPOst3zHE6+UcTNfg/h+zwgWSkAmUgettUosRr2qoZpPO
 xKtwWgghGSnRosxgPZFz1zWND6uf8MIt6CORNmFlJLwTrUwvslwQm//jp71vL27I+4lp
 Yh/A==
X-Gm-Message-State: AOAM533AfhS/q0OYOiDNRP5QITHoZFAzUFAC2YSi7pCUiR6POaRiNfx7
 NZODxPvtNm14p/RNFtJLkX9jcoZjyP3HGuihVRqhBw==
X-Google-Smtp-Source: ABdhPJy67Q/SiF12KAy9W+l33TI2jHio6EqyjNUlwUVXtpcm2GTUEw2G9L6akaRObc+uz+7EkfYii6J6G5enil+o9lE=
X-Received: by 2002:aca:54d8:: with SMTP id i207mr651674oib.101.1610571022183; 
 Wed, 13 Jan 2021 12:50:22 -0800 (PST)
MIME-Version: 1.0
References: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
 <161055261490.6195.7986280621869334351@build.alporthouse.com>
In-Reply-To: <161055261490.6195.7986280621869334351@build.alporthouse.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 13 Jan 2021 21:50:11 +0100
Message-ID: <CAKMK7uEnnEj_YAR5Tm3jpS7MNPkqB43JBhQnY_K0YQ+LE9wL1g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
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

T24gV2VkLCBKYW4gMTMsIDIwMjEgYXQgNDo0MyBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIERhbmllbCBWZXR0ZXIgKDIwMjEtMDEt
MTMgMTQ6MDY6MDQpCj4gPiBXZSBoYXZlIHRvbyBtYW55IHBlb3BsZSBhYnVzaW5nIHRoZSBzdHJ1
Y3QgcGFnZSB0aGV5IGNhbiBnZXQgYXQgYnV0Cj4gPiByZWFsbHkgc2hvdWxkbid0IGluIGltcG9y
dGVycy4gQXNpZGUgZnJvbSB0aGF0IHRoZSBiYWNraW5nIHBhZ2UgbWlnaHQKPiA+IHNpbXBseSBu
b3QgZXhpc3QgKGZvciBkeW5hbWljIHAycCBtYXBwaW5ncykgbG9va2luZyBhdCBpdCBhbmQgdXNp
bmcgaXQKPiA+IGUuZy4gZm9yIG1tYXAgY2FuIGFsc28gd3JlYWsgdGhlIHBhZ2UgaGFuZGxpbmcg
b2YgdGhlIGV4cG9ydGVyCj4gPiBjb21wbGV0ZWx5LiBJbXBvcnRlcnMgcmVhbGx5IG11c3QgZ28g
dGhyb3VnaCB0aGUgcHJvcGVyIGludGVyZmFjZSBsaWtlCj4gPiBkbWFfYnVmX21tYXAgZm9yIGV2
ZXJ5dGhpbmcuCj4KPiBJZiB0aGUgZXhwb3J0ZXIgZG9lc24ndCB3YW50IHRvIGV4cG9zZSB0aGUg
c3RydWN0IHBhZ2UsIHdoeSBhcmUgdGhleQo+IHNldHRpbmcgaXQgaW4gdGhlIGV4cG9ydGVkIHNn
X3RhYmxlPwoKWW91IG5lZWQgdG8gc3RvcmUgaXQgc29tZXdoZXJlLCBvdGhlcndpc2UgdGhlIGRt
YS1hcGkgZG9lc24ndCB3b3JrLgpFc3NlbnRpYWxseSB0aGlzIGFjaGlldmVzIGNsZWFyaW5nL3Jl
c2V0dGluZyB0aGUgc3RydWN0IHBhZ2UgcG9pbnRlciwKd2l0aG91dCBhZGRpdGlvbmFsIGFsbG9j
YXRpb25zIHNvbWV3aGVyZSwgb3IgdG9ucyBvZiBkcml2ZXIgY2hhbmdlcwooc2luY2UgcHJlc3Vt
YWJseSB0aGUgZHJpdmVyIGRvZXMga2VlcCB0cmFjayBvZiB0aGUgc3RydWN0IHBhZ2UKc29tZXdo
ZXJlIHRvbykuCgpBbHNvIGFzIGxvbmcgYXMgd2UgaGF2ZSByYW5kb20gaW1wb3J0ZXJzIGxvb2tp
bmcgYXQgc3RydWN0IHBhZ2Ugd2UKY2FuJ3QganVzdCByZW1vdmUgaXQsIG9yIGNyYXNoZXMgZXZl
cnl3aGVyZS4gU28gaXQgaGFzIHRvIGJlIHNvbWUKZGVidWcgb3B0aW9uIHlvdSBjYW4gZGlzYWJs
ZS4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
