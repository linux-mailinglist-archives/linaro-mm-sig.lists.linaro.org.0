Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2CA38B758
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:20:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E9A3613C8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:20:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D384C613E6; Thu, 20 May 2021 19:20:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 952A56138C;
	Thu, 20 May 2021 19:20:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 20AD361376
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:20:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1E9956137E; Thu, 20 May 2021 19:20:21 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by lists.linaro.org (Postfix) with ESMTPS id 191F861376
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:20:19 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id x15so17388713oic.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PfgwTVkMgiwTa2ZUJi4Rqpy4DzXkVzihsc1UndFlxZA=;
 b=NKXl/O4Ah4nhqRZkqVf7JWT06B7xn241Wl6InCIzbJbLIuLi4vfTnaDrtlDTjxDQVi
 n30NCGYnAoGxnSG/VWuWTQ+YK7PcX9F9m5Xpy8FvszrYZNU3ITT17+QkEfw/+eCQ+Pkt
 mLk4rneTHZwhebapO0piSnDF2/cEBjYQY/NbDQitSmHZSiZ11NWAPqW8C3iOPpcFafJN
 qCP9cMoArj2JNtrRctLNjX6fyLtrTmYEkwu0AHzbJOi4N+RnXc2su55cSnse9MAWxLBJ
 z0h7NrAKCgvhrjjYExJ3ftsS1HKoD+9OnT8mPmjAez+Vncw+mZOevxqJhe1TsUGEAEbS
 mq9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PfgwTVkMgiwTa2ZUJi4Rqpy4DzXkVzihsc1UndFlxZA=;
 b=pzJJa6yjAIXivQFziWBKTN4CKvaTWegjqkqs98STbjSVb5A6naz5rBqWO5fUmlf3dI
 H1iG8pQP8Y/0kj2Q6t6PZsRDZA8pu1iue3CMsUarxlj4Q68TzUjnTdpmtsMgR6m0IOvG
 PAqXnuKew7odPLz6CSEkd80SXBtyWZ7+vcO01nRrrQfIkjI44AUE4Pa3j5cevk4JwLDz
 33Id9hXgSQ/Pmdk6yrwmquUlu+iCPPUOEKC/AVA0DgY5bEYNPu3SXx8yPnMWau0e1bqc
 QlP56wsS1vI9UsYjhhhLF9t7MFIsxjYLtIZ1eYidSGB0wgT5DcgVjiLVNqlyyKnoKREs
 VnXQ==
X-Gm-Message-State: AOAM533eXBAZtbYn4hPXSXbN2xezm7k8iY/u7N0fiiTLUl4TABvU+Nfk
 Oazfzg0qgDWvyUl9ws6d/tvgR8zJpxtrFrEV8fc=
X-Google-Smtp-Source: ABdhPJwvc46ikCv5xL8krtN+XasKLQNxgGwSb0z9zUHEbeOTG8SunshtMqXtCUQ8+ULgPYLiJCxGyKV39ZYg0zNwFbc=
X-Received: by 2002:a05:6808:249:: with SMTP id
 m9mr4203881oie.120.1621538418645; 
 Thu, 20 May 2021 12:20:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-27-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-27-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:20:07 -0400
Message-ID: <CADnq5_PaefTWkWnOPTJMTgL-zocXtB9wGnK30PiZG2iNAA=oOw@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 26/38] drm/amd/amdgpu/gmc_v10_0: Fix
 potential copy/paste issue
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIFRodSwgTWF5IDIwLCAyMDIxIGF0IDg6MDMgQU0g
TGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9s
bG93aW5nIFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9nbWNfdjEwXzAuYzo5NTU6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUg
Zm9yIGdtY192OF8wX2dhcnRfZmluaSgpLiBQcm90b3R5cGUgd2FzIGZvciBnbWNfdjEwXzBfZ2Fy
dF9maW5pKCkgaW5zdGVhZAo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJA
YW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBs
aW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVs
Lm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5
OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9nbWNfdjEwXzAuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvZ21jX3YxMF8wLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nbWNf
djEwXzAuYwo+IGluZGV4IGYwMmRjOTA0ZTRjZmUuLjEwNWVkMWJmNGE4OGMgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ21jX3YxMF8wLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9nbWNfdjEwXzAuYwo+IEBAIC05NDcsNyArOTQ3LDcgQEAgc3Rh
dGljIGludCBnbWNfdjEwXzBfc3dfaW5pdCh2b2lkICpoYW5kbGUpCj4gIH0KPgo+ICAvKioKPiAt
ICogZ21jX3Y4XzBfZ2FydF9maW5pIC0gdm0gZmluaSBjYWxsYmFjawo+ICsgKiBnbWNfdjEwXzBf
Z2FydF9maW5pIC0gdm0gZmluaSBjYWxsYmFjawo+ICAgKgo+ICAgKiBAYWRldjogYW1kZ3B1X2Rl
dmljZSBwb2ludGVyCj4gICAqCj4gLS0KPiAyLjMxLjEKPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
