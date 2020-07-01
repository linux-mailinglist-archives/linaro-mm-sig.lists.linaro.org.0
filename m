Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A726E210A8B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2020 13:51:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9B36618D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2020 11:51:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AF0D06654F; Wed,  1 Jul 2020 11:51:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 446B26653E;
	Wed,  1 Jul 2020 11:50:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9F5EA618D4
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2020 11:50:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8B31F6653E; Wed,  1 Jul 2020 11:50:54 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 6D4DD618D4
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2020 11:50:53 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 18so21157866otv.6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jul 2020 04:50:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NVob0ht+U8pNgfjDQrHBX34FcQW437wfU3ZeV7D0RuA=;
 b=bWMzBq4ueC8ZAusLtZrr3uEVKeGaMfy7SepANjZWPos2lGeaE5mguQNygvjYYCi/nT
 J4CVyUOSTpmwYJlkQHan7ky9/yKrhwDAQ7FOo/CqFOi8Ii5K7vNBbd1XYwqojxrErHJw
 uFdy4Yc+90a/AdIjaXjuqUo8kWSBF3X+RaPkdEMLkdw9dTCUW/EOSFXjpUgG7UV7AT13
 q6cKhfAjTRn6vnrlRRf7IDIJdyUsltitO+VDWTNLE2EtMCQjQmS+ZPs/V7HsXtds3Y/I
 Oc/CmsGHkyN5A4Iyr+M1OHTK0lqATF+OnWOPWwgag9BqPv9QOXuohM0ZLzey0NnGIgPa
 wbBQ==
X-Gm-Message-State: AOAM531GFDHNYCmSC7u7lj2f2gdJUJWtzMiElQchPW8+QI+CuiuUc0he
 rlekoXKhoD/c5S2pmaGlqVR0wKGg740lDnxQdckSBg==
X-Google-Smtp-Source: ABdhPJzuhUYDGzoVqw7VfT6QA2g0y9nFhCw6PsVYMQvjENJx18Q3x1ONVY7LMMFKkczWIhYx3VaIrBiizht+fmKEFm8=
X-Received: by 2002:a9d:d55:: with SMTP id 79mr22087629oti.281.1593604252854; 
 Wed, 01 Jul 2020 04:50:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200701112559.22669-1-christian.koenig@amd.com>
In-Reply-To: <20200701112559.22669-1-christian.koenig@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 1 Jul 2020 13:50:41 +0200
Message-ID: <CAKMK7uHqNaQPwATQf=Jfs6oQ=YEemHSHTEtC2=VqvNf+bMh_sQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] MAINTAINERS: Add myself as DMA-buf
	maintainer
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

T24gV2VkLCBKdWwgMSwgMjAyMCBhdCAxOjI2IFBNIENocmlzdGlhbiBLw7ZuaWcKPGNrb2VuaWcu
bGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKPgo+IEFzIGRpc2N1c3NlZCBvbiB0aGUg
bGlzdC4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KCkFja2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPgo+IC0tLQo+ICBNQUlOVEFJTkVSUyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4gaW5k
ZXggNDA0NzQ5ODJhMjFkLi41ZDcxMzBmOGQzNDIgMTAwNjQ0Cj4gLS0tIGEvTUFJTlRBSU5FUlMK
PiArKysgYi9NQUlOVEFJTkVSUwo+IEBAIC01MDg5LDYgKzUwODksNyBAQCBGOiAgICAgICAgZnMv
ZGxtLwo+Cj4gIERNQSBCVUZGRVIgU0hBUklORyBGUkFNRVdPUksKPiAgTTogICAgIFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gK006ICAgICBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gIEw6ICAgICBsaW51eC1tZWRpYUB2Z2VyLmtl
cm5lbC5vcmcKPiAgTDogICAgIGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiAgTDog
ICAgIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZyAobW9kZXJhdGVkIGZvciBub24tc3Vi
c2NyaWJlcnMpCj4gLS0KPiAyLjIwLjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdp
bmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
