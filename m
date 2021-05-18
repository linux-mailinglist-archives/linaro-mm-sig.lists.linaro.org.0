Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E6B3879E6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 May 2021 15:26:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 086E6610E7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 May 2021 13:26:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E3B21610F9; Tue, 18 May 2021 13:26:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF74460A12;
	Tue, 18 May 2021 13:26:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1675E60694
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 13:26:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0B09160A12; Tue, 18 May 2021 13:26:31 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id F01C360694
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 13:26:28 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id h4so10197975wrt.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 06:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RZR12pmWkFF7y/GidJZX8Aqwjr4ypoDTXEhoFqtAeZw=;
 b=i29oK3D096bW5jdcbTkpaP4VjCZwHJMNjAcFLwBSrDoUeC9W9M3KcVOQ0GpzQxBIM5
 5jw8CTfFDoH+fV6sS+YuzVWpWc1U7QnZGy75u1htqZCH1UoaQBFlAA+9aElnAFOvyw8c
 7bl+151wYX7upklWNYfqiAVAEU/Y6CQ5CoVqnEHiIYNKZRCW68AU5dp1w63y4G5cogy3
 TUC0KF+2LlgZquC/60sfzQ1A7TAZ0ASMro5Z5Mp/aTHuX4NZa8NKHioepOKcQ15LS3tR
 iYiYXqB+bRs/ajvPh3kjPQqNRMaG2iGvgmf1jF2Ak6sYoQkfPQkgU75vrtBIt4gOHR2k
 yZ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RZR12pmWkFF7y/GidJZX8Aqwjr4ypoDTXEhoFqtAeZw=;
 b=iMRDjWeJxIxOjNyyDsK0U1up8E5uaoHVblREF1dZ4n6pOiva6uAs7hK5I0El5iFC7E
 +xlIBxZFZQawv03lDvB+t3FDw3aBVi3N8MsLRzPV2+cPiBqeVmY6OGCUYsGmYDfz4atc
 s7MRBHyqZE+9OlgJD54xlGlPRBL5qgvhb0T05Yc8uc4QXu5ZAtQNhMmLu4QJ3kuaXqmV
 FsZZ4Iv2UcuimDeDil2XrptQmts4eMd2q53OrjuYwEYKQChRI974FkTSNonJzhHdMHLf
 Dus/tnnl1XuaQBV59QliUEonfinRjP1xPCfRWFRjoYLx8nAZ7TrcdIxoZF8SbabqKFQN
 3yww==
X-Gm-Message-State: AOAM531vtr9yVjzJVHxSqzabj2pZ2UKTUcfIHIbtLh29O+KmjBTJOt3r
 BRbfnL/xyzzOBPy9HPiGDzn3rW/yIxGQ2USXwIwgQurGyeI1DQ==
X-Google-Smtp-Source: ABdhPJyyDliqj+Oau3C6HT8ksGUHtReIqT/JnxifuK+PO/Jlqb8MuszItOMy97raaW1Ovbgz4/XvrgkKn/Y2kgJWPsU=
X-Received: by 2002:a05:6000:184a:: with SMTP id
 c10mr7398351wri.244.1621344388039; 
 Tue, 18 May 2021 06:26:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210517141129.2225-1-christian.koenig@amd.com>
 <YKKF4jOvM4gJT6a4@phenom.ffwll.local>
 <5a3e9500-9d6b-a865-5385-fde43da2bf66@gmail.com>
 <CAKMK7uF=y44e9-0-4MBj3jRBdCqMaLgKutTMeBWCbySRnPR4KQ@mail.gmail.com>
 <CAOFGe960UMe4=Xxcoha9R2Y74ma3Pp4Z0DF6PM+SJ2sjq2DBXg@mail.gmail.com>
 <CAKMK7uGtTT+59hRi3PB1WHPES3YJAPYBvbT74vo9PApNE0i7MQ@mail.gmail.com>
 <fee06c2d-27fb-1af4-6222-8f277b36c951@gmail.com>
In-Reply-To: <fee06c2d-27fb-1af4-6222-8f277b36c951@gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 18 May 2021 14:26:15 +0100
Message-ID: <CAPj87rN-1ST_wvnobEaeNNiOYdM9yAOvfZ+8_tcxbrFof3L-yA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC] Add DMA_RESV_USAGE flags
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
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCAxOCBNYXkgMjAyMSBhdCAxMzo0OSwgQ2hyaXN0aWFuIEvDtm5pZwo8Y2tvZW5pZy5s
ZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+IEFtIDE4LjA1LjIxIHVtIDA3OjU5IHNj
aHJpZWIgRGFuaWVsIFZldHRlcjoKPiA+IEZpcnN0IHN0ZXAgaW4gZml4aW5nIHRoYXQgaXMgKGFu
ZCBmcmFua2x5IHdhcyBzaW5jZSB5ZWFycykgdG8gZml4IHRoZQo+ID4gYW1kZ3B1IENTIHNvIHdp
bnN5cyBjYW4gcGFzcyBhbG9uZyBhIGJ1bmNoIG9mIGZsYWdzIGFib3V0IHdoaWNoIENTCj4gPiBz
aG91bGQgYWN0dWFsbHkgc2V0IHRoZSBleGNsdXNpdmUgZmVuY2UsIHNvIHRoYXQgeW91IHN0b3Ag
b3ZlcnN5bmNpbmcKPiA+IHNvIGJhZGx5LiBPZmMgb2xkIHVzZXJzcGFjZSBuZWVkcyB0byBrZWVw
IG92ZXJzeW5jaW5nIGZvcmV2ZXIsIG5vIHdheQo+ID4gdG8gZml4IHRoYXQuCj4KPiBFeGFjdGx5
IHRoYXQgaXMgd2hhdCB3ZSBkb24ndCB3YW50IHRvIGRvIGJlY2F1c2UgdGhlIHdpbnN5cyBoYXMg
bm8gaWRlYQo+IHdoZW4gdG8gc3luYyBhbmQgd2hlbiBub3QgdG8gc3luYy4KCkhleSwgd2UncmUg
dHlwaW5nIHRoYXQgb3V0IGFzIGZhc3QgYXMgd2UgY2FuIC4uLiBpdCdzIGp1c3QgdGhhdCB5b3UK
a2VlcCByZWludmVudGluZyBzeW5jIHByaW1pdGl2ZXMgZmFzdGVyIHRoYW4gd2UgY2FuIHNoaXAg
c3VwcG9ydCBmb3IKdGhlbSA6UApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
