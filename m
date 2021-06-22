Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D14E3B0CBF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 20:20:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11DEB63290
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 18:20:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E927A631D2; Tue, 22 Jun 2021 18:20:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 934E9631AF;
	Tue, 22 Jun 2021 18:20:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BD5DE631AB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 18:20:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B0774631AF; Tue, 22 Jun 2021 18:20:10 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by lists.linaro.org (Postfix) with ESMTPS id A6486631AB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 18:20:08 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id w127so319114oig.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 11:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=29hikt8SUCNhjVnea4G3Tt6U2VKimPI9xOdyygn6y2o=;
 b=CZ9m2GCYl3/yRI7h1IWxxp6TOejM4xOmGC4KpzjeYdz81AHrXtUWyI89o0oJoZEqEO
 4M0lSdJJLM09L8Iu+QVRYMyvzCwO277e5L2CFRffawfY7hti2B+l01moMiqeK6VYIfMy
 xipBv2IcBYtsXCTXc4P0t6+b9PbMayyeC9h/Rtow4aXXkqlqUHIsJZ5rbH2IHoG0qNTV
 3i1Lg5Ep7aavjIc1coARhze9+h/4cP9P7IJTVr7PgXluFZ0cvGNPeb60iQu98O5T86PA
 wOUsSWE71SOtJEbFESRfEOs+Vh5hNmKwQjMMRE0HdP2wXKTosk4iXMis11i+oxQslA66
 dv0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=29hikt8SUCNhjVnea4G3Tt6U2VKimPI9xOdyygn6y2o=;
 b=Rst9C9F/RrN5SuTKz1+bYENm/lB4MnItYsHRo9PDMaJUfThOdjDZCYG48lOlLVdoh/
 IP44QVtqt3PpQVSUUJXLLsUlwYHbUx2kiUCNsU/oWnS3+eSgoKL+rTu+z1pgL/9zsU8c
 gDfK6XsecfvlU5zmHq59xud6B9DsycCfcDDp2C+86hJVW70jLKelOWrKM5xxHjIe3nlO
 XoA5EoZnQ7en0X0VsZL/JdbJQQF/LOPOc765Cq2ETdXqczAd8SL+mPjkxMpGg5/nUZ11
 U/+IxaOdkB+L55e72XhTmuLJO3G6mqGJcizoA+53a7Bh4ZCVVfyuTk9PxaAPi6zmGuit
 sQFg==
X-Gm-Message-State: AOAM531wxP+zEMiHrEEcRUGJ2m4AZaOYfH/24vb+neTbFsiYkZ7Hl7eJ
 lfCy9SLqLehN3G1jvsHaMlY0ATXR0jooEZdg7tI=
X-Google-Smtp-Source: ABdhPJyUgVQFlY0rBQR5TacbcyoHIMybYd5BiSysGFReHN0iSspTqQlRZ1YcySHqv8KLv5Rmbaa0C9Yyyx8ixm9qE9w=
X-Received: by 2002:a05:6808:c3:: with SMTP id t3mr71122oic.5.1624386008138;
 Tue, 22 Jun 2021 11:20:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
In-Reply-To: <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 22 Jun 2021 14:19:56 -0400
Message-ID: <CADnq5_N00p5VSqj3gEkFSEALOU2qbD=WkHMpsW0saz9iG_RZnA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/15] dma-resv: Fix kerneldoc
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgMTI6NTUgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cj4KPiBPdmVyc2lnaHQgZnJvbQo+Cj4gY29tbWl0IDZlZGJk
NmFiYjc4M2Q1NGY2YWM0YzNlZDVjZDllNTBjZmY2YzE1ZTkKPiBBdXRob3I6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBEYXRlOiAgIE1vbiBNYXkgMTAgMTY6
MTQ6MDkgMjAyMSArMDIwMAo+Cj4gICAgIGRtYS1idWY6IHJlbmFtZSBhbmQgY2xlYW51cCBkbWFf
cmVzdl9nZXRfZXhjbCB2Mwo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFy
by5vcmc+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pgo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCgpSZXZpZXdlZC1ieTogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1
Y2hlckBhbWQuY29tPgoKPiAtLS0KPiAgaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oIHwgMiArLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2
LmgKPiBpbmRleCA1NjJiODg1Y2Y5YzMuLmUxY2EyMDgwYTFmZiAxMDA2NDQKPiAtLS0gYS9pbmNs
dWRlL2xpbnV4L2RtYS1yZXN2LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKPiBA
QCAtMjEyLDcgKzIxMiw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBkbWFfcmVzdl91bmxvY2soc3Ry
dWN0IGRtYV9yZXN2ICpvYmopCj4gIH0KPgo+ICAvKioKPiAtICogZG1hX3Jlc3ZfZXhjbHVzaXZl
IC0gcmV0dXJuIHRoZSBvYmplY3QncyBleGNsdXNpdmUgZmVuY2UKPiArICogZG1hX3Jlc3ZfZXhj
bF9mZW5jZSAtIHJldHVybiB0aGUgb2JqZWN0J3MgZXhjbHVzaXZlIGZlbmNlCj4gICAqIEBvYmo6
IHRoZSByZXNlcnZhdGlvbiBvYmplY3QKPiAgICoKPiAgICogUmV0dXJucyB0aGUgZXhjbHVzaXZl
IGZlbmNlIChpZiBhbnkpLiBDYWxsZXIgbXVzdCBlaXRoZXIgaG9sZCB0aGUgb2JqZWN0cwo+IC0t
Cj4gMi4zMi4wLnJjMgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
