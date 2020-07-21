Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 082B9228B8F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 23:43:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D0B9665DA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 21:43:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 213B1665E3; Tue, 21 Jul 2020 21:43:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 940B7665DF;
	Tue, 21 Jul 2020 21:42:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 05611618D4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 21:42:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E433C665DF; Tue, 21 Jul 2020 21:42:42 +0000 (UTC)
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by lists.linaro.org (Postfix) with ESMTPS id B98EB618D4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 21:42:41 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id n22so42295ejy.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 14:42:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Dyi1MVLFGf/8/KPaE1swyyeNErOrv2bGUWjTcVj8gxM=;
 b=o7N1D5j62Ug4vWtdlUYrEx8MAD1DbQMMmFUc7b6D0aVIQwC4NvTMTbWTAo+aXNpm7M
 eMcJyDS6fRHv5PhagRzssc3swDrfnCPn3xj4V4MoIIBROAsaghrtHrfIOf/cqtDY55zs
 gIloIOV7WLHE1+4Bbu8Y+NM83xIVq2Fr3bmi9+GnNahuCSWjvmuXYYqvRtreMFqcH90T
 VwY+7vyILclRSgdgV4raDSHzunQo+i8+Y3f8tx4iyYQ4TMchy+D4x1xTEPBnv53m8IRw
 AqJs4IUWkaAaAXkne/fQf6JdFm7m5G0jOr/J9o2D9/lWzPtnkGU5uBa96cs95jp+cK7x
 pgKQ==
X-Gm-Message-State: AOAM532Gk+omMY+7/3Z9jn0ZvUwT7aw1JUOLrEzusEsCq1z3HUgi5YCv
 kt8xe1XGqhz8lsTqOjgCE/mW2fBcv02dLRT22MU=
X-Google-Smtp-Source: ABdhPJwxE240DtGwFEuhHkKMPvfhlukuGNteVSI0paUJJOmdu+Jb46VZVXI0n2iDUJjFfIzHzYH2PLSYSUaSvNNdruQ=
X-Received: by 2002:a17:906:f88a:: with SMTP id
 lg10mr26295104ejb.317.1595367760653; 
 Tue, 21 Jul 2020 14:42:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
 <2ca2c004-1e11-87f5-4bd8-761e1b44d21f@amd.com>
 <74727f17-b3a5-ca12-6db6-e47543797b72@shipmail.org>
 <CAKMK7uFfMi5M5EkCeG6=tjuDANH4=gDLnFpxCYU-E-xyrxwYUg@mail.gmail.com>
 <ae4e4188-39e6-ec41-c11d-91e9211b4d3a@shipmail.org>
 <f8f73b9f-ce8d-ea02-7caa-d50b75b72809@amd.com>
In-Reply-To: <f8f73b9f-ce8d-ea02-7caa-d50b75b72809@amd.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 22 Jul 2020 07:42:28 +1000
Message-ID: <CAPM=9tw7CBu7zm-N5JpjK_P49Td1E9REbBn=1KrK2nAVuX=xxg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Felix Kuehling <Felix.Kuehling@amd.com>,
 Daniel Stone <daniels@collabora.com>, linux-rdma <linux-rdma@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>, Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document why
 indefinite fences are a bad idea
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

Pgo+ID4+IFRoYXQncyBhbHNvIHdoeSBJJ20gbm90IHBvc2l0aXZlIG9uIHRoZSAibm8gaHcgcHJl
ZW1wdGlvbiwgb25seQo+ID4+IHNjaGVkdWxlciIgY2FzZTogWW91IHN0aWxsIGhhdmUgYSBkbWFf
ZmVuY2UgZm9yIHRoZSBiYXRjaCBpdHNlbGYsCj4gPj4gd2hpY2ggbWVhbnMgc3RpbGwgbm8gdXNl
cnNwYWNlIGNvbnRyb2xsZWQgc3luY2hyb25pemF0aW9uIG9yIG90aGVyCj4gPj4gZm9ybSBvZiBp
bmRlZmluaXRlIGJhdGNoZXMgYWxsb3dlZC4gU28gbm90IGdldHRpbmcgdXMgYW55IGNsb3NlciB0
bwo+ID4+IGVuYWJsaW5nIHRoZSBjb21wdXRlIHVzZSBjYXNlcyBwZW9wbGUgd2FudC4KPgo+IFdo
YXQgY29tcHV0ZSB1c2UgY2FzZSBhcmUgeW91IHRhbGtpbmcgYWJvdXQ/IEknbSBvbmx5IGF3YXJl
IGFib3V0IHRoZQo+IHdhaXQgYmVmb3JlIHNpZ25hbCBjYXNlIGZyb20gVnVsa2FuLCB0aGUgcGFn
ZSBmYXVsdCBjYXNlIGFuZCB0aGUgS0ZECj4gcHJlZW1wdGlvbiBmZW5jZSBjYXNlLgoKU28gc2xp
Z2h0IGFzaWRlLCBidXQgaXQgZG9lcyBhcHBlYXIgYXMgaWYgSW50ZWwncyBMZXZlbCAwIEFQSSBl
eHBvc2VzCnNvbWUgb2YgdGhlIHNhbWUgcHJvYmxlbXMgYXMgdnVsa2FuLgoKVGhleSBoYXZlIGZl
bmNlczoKIkEgZmVuY2UgY2Fubm90IGJlIHNoYXJlZCBhY3Jvc3MgcHJvY2Vzc2VzLiIKClRoZXkg
aGF2ZSBldmVudHMgKHVzZXJzcGFjZSBmZW5jZXMpIGxpa2UgVnVsa2FuIGJ1dCBzcGVjaWZ5Ogoi
U2lnbmFsZWQgZnJvbSB0aGUgaG9zdCwgYW5kIHdhaXRlZCB1cG9uIGZyb20gd2l0aGluIGEgZGV2
aWNl4oCZcyBjb21tYW5kIGxpc3QuIgoKIlRoZXJlIGFyZSBubyBwcm90ZWN0aW9ucyBhZ2FpbnN0
IGV2ZW50cyBjYXVzaW5nIGRlYWRsb2Nrcywgc3VjaCBhcwpjaXJjdWxhciB3YWl0cyBzY2VuYXJp
b3MuCgpUaGVzZSBwcm9ibGVtcyBhcmUgbGVmdCB0byB0aGUgYXBwbGljYXRpb24gdG8gYXZvaWQu
IgoKaHR0cHM6Ly9zcGVjLm9uZWFwaS5jb20vbGV2ZWwtemVyby9sYXRlc3QvY29yZS9QUk9HLmh0
bWwjc3luY2hyb25pemF0aW9uLXByaW1pdGl2ZXMKCkRhdmUuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
