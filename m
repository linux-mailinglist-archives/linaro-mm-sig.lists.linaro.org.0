Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CF73F34AF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Aug 2021 21:33:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12A496171E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Aug 2021 19:33:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AAC82611B2; Fri, 20 Aug 2021 19:33:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0486A611AF;
	Fri, 20 Aug 2021 19:33:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 560BD6117A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Aug 2021 19:33:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 469E3611AF; Fri, 20 Aug 2021 19:33:30 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 by lists.linaro.org (Postfix) with ESMTPS id 1E613604FF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Aug 2021 19:33:28 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id
 r17-20020a0568302371b0290504f3f418fbso16238893oth.12
 for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Aug 2021 12:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vpEpEAnRO5OhbDhkoFuR51uK3vu5AmUud1jH9OOxpC4=;
 b=GdDYWfb10COlYODDXcc0zylWkXc2rxMun8JAXaoC/ZrxQjCl2w+3RaF9krZBDUudon
 NWHT1EP3L6XT4ApBhRzsNvjs2FJLEUg3Hep98S2hqZGTVlEWPyKdahlV2gFJBRILjyRZ
 +forMwtXQIq08jbAsbIQx+KENLPuElcgrxWn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vpEpEAnRO5OhbDhkoFuR51uK3vu5AmUud1jH9OOxpC4=;
 b=RtU6T21wsvTbrXTpfjCBr8mk+AvxFNpuun9NZTRKCOTY+jnJTt7yiygMqCQRXXJXDv
 OTQ40xXuHyv1ZhYk/JbW/L1a8wFKlKB9f70OoRxkSYzeoSkPZxP3NM/goJC88RSJkrf0
 jIcucbl9m+rYKaPgpYEiScWHohNgiV1Wi2zHcijZiFLKDxLDOPlIvIzllRkomBY5jeMv
 3gMGDTQy4e96C7f3lOyGiT1rCrD6BwTCxKJ8AUmcj+Md2aCzecGOWv2jjFLj5ukXycGf
 C5WkO8gVfHsj9oIRpPHREykhkM0pyGk1CS+PKjeE6x48jo970RmDWr/UZlxab9kWJ5+/
 yutg==
X-Gm-Message-State: AOAM530t3h9ijTQ6oxFyXX3VZhTWrGGdvI9uLiuURPsjbAByZ7yHKfsJ
 NoSy6UPL1fkildWkpSBQna/fp4pMPcWH7WI6k8MeCg==
X-Google-Smtp-Source: ABdhPJxrwulEjRlwLSovn0Rx4m5+J2jGaVIAi94Nt/8kUQLzom6zkQ6NxRZ6Vd4KvrH/lkIt6Ef06XBgfLgVRzw432w=
X-Received: by 2002:a9d:65da:: with SMTP id z26mr17825398oth.303.1629488007383; 
 Fri, 20 Aug 2021 12:33:27 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000047b52b05c9ff8d0b@google.com>
 <dc7ca5ae-afc1-f840-8dfc-3f2361cd4360@suse.de>
In-Reply-To: <dc7ca5ae-afc1-f840-8dfc-3f2361cd4360@suse.de>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 20 Aug 2021 21:33:16 +0200
Message-ID: <CAKMK7uEP_PNr1uDV_FeH2-Q9oGGsr3ux2rpkXHrJpPG=hOaf=Q@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [syzbot] WARNING in drm_gem_shmem_vm_open
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
Cc: syzbot <syzbot+91525b2bd4b5dff71619@syzkaller.appspotmail.com>,
 Melissa Wen <melissa.srw@gmail.com>, linaro-mm-sig-owner@lists.linaro.org,
 Dave Airlie <airlied@linux.ie>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gRnJpLCBBdWcgMjAsIDIwMjEgYXQgOToyMyBQTSBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4gd3JvdGU6Cj4gSGkKPgo+IEFtIDIwLjA4LjIxIHVtIDE3OjQ1IHNjaHJp
ZWIgc3l6Ym90Ogo+ID4gc3l6Ym90IGhhcyBiaXNlY3RlZCB0aGlzIGlzc3VlIHRvOgo+Cj4gR29v
ZCBib3QhCj4KPiA+Cj4gPiBjb21taXQgZWE0MGQ3ODU3ZDUyNTBlNTQwMGYzOGM2OWVmOWUxNzMy
MWU5YzRhMgo+ID4gQXV0aG9yOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
Pgo+ID4gRGF0ZTogICBGcmkgT2N0IDkgMjM6MjE6NTYgMjAyMCArMDAwMAo+ID4KPiA+ICAgICAg
ZHJtL3ZrbXM6IGZiZGV2IGVtdWxhdGlvbiBzdXBwb3J0Cj4KPiBIZXJlJ3MgYSBndWVzcy4KPgo+
IEdFTSBTSE1FTSArIGZiZGV2IGVtdWxhdGlvbiByZXF1aXJlcyB0aGF0Cj4gKGRybV9tb2RlX2Nv
bmZpZy5wcmVmZXJfc2hhZG93X2ZiZGV2ID0gdHJ1ZSkuIE90aGVyd2lzZSwgZGVmZXJyZWQgSS9P
Cj4gYW5kIFNITUVNIGNvbmZsaWN0IG92ZXIgdGhlIHVzZSBvZiBwYWdlIGZsYWdzIElJUkMuCgpC
dXQgd2Ugc2hvdWxkIG9ubHkgc2V0IHVwIGRlZmlvIGlmIGZiLT5kaXJ0eSBpcyBzZXQsIHdoaWNo
IHZrbXMKZG9lc24ndCBkby4gU28gdGhlcmUncyBzb21ldGhpbmcgZWxzZSBnb2luZyBvbj8gU28g
dGhlcmUgbXVzdCBiZQpzb21ldGhpbmcgZWxzZSBmdW5ueSBnb2luZyBvbiBoZXJlIEkgdGhpbmsg
Li4uIE5vIGlkZWEgd2hhdCdzIGdvaW5nIG9uCnJlYWxseS4KLURhbmllbAoKPiAgRnJvbSBhIHF1
aWNrIGdyZXAsIHZrbXMgZG9lc24ndCBzZXQgcHJlZmVyX3NoYWRvd19mYmRldiBhbmQgYW4gYWxh
cm1pbmcKPiBhbW91bnQgb2YgU0hNRU0tYmFzZWQgZHJpdmVycyBkb24ndCBkbyBlaXRoZXIuCj4K
PiBCZXN0IHJlZ2FyZHMKPiBUaG9tYXMKPgo+ID4KPiA+IGJpc2VjdGlvbiBsb2c6ICBodHRwczov
L3N5emthbGxlci5hcHBzcG90LmNvbS94L2Jpc2VjdC50eHQ/eD0xMWMzMWQ1NTMwMDAwMAo+ID4g
c3RhcnQgY29tbWl0OiAgIDYxNGNiMjc1MWQzMSBNZXJnZSB0YWcgJ3RyYWNlLXY1LjE0LXJjNicg
b2YgZ2l0Oi8vZ2l0Lmtlcm4uLgo+ID4gZ2l0IHRyZWU6ICAgICAgIHVwc3RyZWFtCj4gPiBmaW5h
bCBvb3BzOiAgICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXBvcnQudHh0P3g9
MTNjMzFkNTUzMDAwMDAKPiA+IGNvbnNvbGUgb3V0cHV0OiBodHRwczovL3N5emthbGxlci5hcHBz
cG90LmNvbS94L2xvZy50eHQ/eD0xNWMzMWQ1NTMwMDAwMAo+ID4ga2VybmVsIGNvbmZpZzogIGh0
dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvLmNvbmZpZz94PTk2ZjA2MDIyMDMyNTA3NTMK
PiA+IGRhc2hib2FyZCBsaW5rOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0
aWQ9OTE1MjViMmJkNGI1ZGZmNzE2MTkKPiA+IHN5eiByZXBybzogICAgICBodHRwczovL3N5emth
bGxlci5hcHBzcG90LmNvbS94L3JlcHJvLnN5ej94PTEyMmJjZTBlMzAwMDAwCj4gPgo+ID4gUmVw
b3J0ZWQtYnk6IHN5emJvdCs5MTUyNWIyYmQ0YjVkZmY3MTYxOUBzeXprYWxsZXIuYXBwc3BvdG1h
aWwuY29tCj4gPiBGaXhlczogZWE0MGQ3ODU3ZDUyICgiZHJtL3ZrbXM6IGZiZGV2IGVtdWxhdGlv
biBzdXBwb3J0IikKPiA+Cj4gPiBGb3IgaW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0aW9uIHByb2Nl
c3Mgc2VlOiBodHRwczovL2dvby5nbC90cHNtRUojYmlzZWN0aW9uCj4gPgo+Cj4gLS0KPiBUaG9t
YXMgWmltbWVybWFubgo+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKPiBTVVNFIFNvZnR3YXJl
IFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKPiBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcs
IEdlcm1hbnkKPiAoSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpCj4gR2VzY2jDpGZ0c2bDvGhyZXI6
IEZlbGl4IEltZW5kw7ZyZmZlcgo+CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5l
ZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
