Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBA338B788
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:26:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C5916141E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:26:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 920A861394; Thu, 20 May 2021 19:26:32 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E739861394;
	Thu, 20 May 2021 19:26:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3CDCC6137E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:26:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3AACF61394; Thu, 20 May 2021 19:26:27 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 by lists.linaro.org (Postfix) with ESMTPS id 354446137E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:26:25 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id
 i12-20020a05683033ecb02903346fa0f74dso5216819otu.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=L/aKDgdFp8azkNRPkBfwbGry+KpDDgeXnCjUZiXUHAk=;
 b=Iw2EOxuFQfHZ+eCHYMxU66KVGsltX5SDbaLnDelNONGLKRdnxrXhfh6GppGwh9hF03
 zNvDroo3j7IUMxWxmZItxH2vSffYWDPnXuVYVtLzvighVR1J1ro5K5lH4V4PSepWV0G4
 gvXSbivlFa1OnRM2D+IU6gdjLxPfcOtdfwX5/T6rhck+gIPtsOygu76ZuH1axb5/d0fc
 IBMpwixmy7uqUA5RhLSu+puEmdboK+4ah5hkBntYbSM0xU8NxvJmiwnGzmOfqMwPu1RB
 twbrTkQ+A+Dtnwhoe3AAYNOOdzIONhJ6vseidUA3CV9HPcPV0t6tz8Q/xDC7s7YVh947
 A1HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=L/aKDgdFp8azkNRPkBfwbGry+KpDDgeXnCjUZiXUHAk=;
 b=la4kwMffrwv6wq6/b1ymw7AUXWfjXIB8fJfdZXs+ERj3qLstgf/EYzFKvzXt9qIh0b
 1wXmvLPt/J99HrslGiEXP3iy+lBI1Z7sXDes3cpG5TXAOZYLXpE5VuSgwyatUU1QkZQ4
 qM3FUjnTdnWilkJ4/JGHoIsaHzos3tL109eT1wb1+VoRJwMsYufTU6XFp84srS2qR16c
 TOyEMQUADmnDsKacPoB3u1edlqeWQggIgS5QI74YcqHRk915DGWXNqQMYLFo13XtXPFg
 Qurtj28XnibNQUttSw1tz33jwuqSFlYcLsyrXbLuSvSd/FLNNwqkubmZObvMH6SkNEQy
 VX8g==
X-Gm-Message-State: AOAM532mzuDSzaNJ0ev4c5WmWQuf5iaOQxMNAxuBSG0ISXDJofpxGNER
 kcvs0dENw7FSJAK8GX2KXpX02epWLltyGWcL1HU=
X-Google-Smtp-Source: ABdhPJx0fYn3UtO85WnCHYo3oCG9Ca6arkIE1QlALKzujCj8PWSdmjcwps+puWxR/yT2HWQLUUkvJ/ALvmm3ZQZ3twg=
X-Received: by 2002:a9d:74c6:: with SMTP id a6mr5160706otl.132.1621538784761; 
 Thu, 20 May 2021 12:26:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-38-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-38-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:26:13 -0400
Message-ID: <CADnq5_OuzthTQOUkYRSPz0coL1-xgpfzMq57=9SzW3WDSrY_uA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 37/38] drm/amd/amdgpu/gfx_v10_0: Demote
 kernel-doc abuse
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

QXBwbGllZC4gIFRoYW5rcyEKCk9uIFRodSwgTWF5IDIwLCAyMDIxIGF0IDg6MDQgQU0gTGVlIEpv
bmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5n
IFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9nZnhfdjEwXzAuYzo1MTogd2FybmluZzogVGhpcyBjb21tZW50IHN0YXJ0cyB3aXRoICcv
KionLCBidXQgaXNuJ3QgYSBrZXJuZWwtZG9jIGNvbW1lbnQuIFJlZmVyIERvY3VtZW50YXRpb24v
ZG9jLWd1aWRlL2tlcm5lbC1kb2MucnN0Cj4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIu
ZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQu
c2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
Q2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdl
ci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25l
ZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92MTBfMC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjEwXzAuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2dmeF92MTBfMC5jCj4gaW5kZXggZmMxMmUzYzNlOWNhZS4uYzgzM2JlMzFlNGFlNiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjEwXzAuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92MTBfMC5jCj4gQEAgLTQ3LDcgKzQ3LDcg
QEAKPiAgI2luY2x1ZGUgImdmeF92MTBfMC5oIgo+ICAjaW5jbHVkZSAibmJpb192Ml8zLmgiCj4K
PiAtLyoqCj4gKy8qCj4gICAqIE5hdmkxMCBoYXMgdHdvIGdyYXBoaWMgcmluZ3MgdG8gc2hhcmUg
ZWFjaCBncmFwaGljIHBpcGUuCj4gICAqIDEuIFByaW1hcnkgcmluZwo+ICAgKiAyLiBBc3luYyBy
aW5nCj4gLS0KPiAyLjMxLjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
