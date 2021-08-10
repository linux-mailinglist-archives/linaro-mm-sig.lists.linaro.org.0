Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1DA3E8055
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Aug 2021 19:49:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49BCF61731
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Aug 2021 17:49:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 04C2463514; Tue, 10 Aug 2021 17:49:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D14D261236;
	Tue, 10 Aug 2021 17:49:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 23C5F60AEB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 17:49:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1F5EE61236; Tue, 10 Aug 2021 17:49:06 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
 [209.85.219.178])
 by lists.linaro.org (Postfix) with ESMTPS id 1945260AEB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 17:49:04 +0000 (UTC)
Received: by mail-yb1-f178.google.com with SMTP id z18so37681838ybg.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 10:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Z9ITGSDMGYjHXB8OwNKC53Rfsb5yUN6vdvBe2OSuloA=;
 b=OZNF/dI0kLDLbyn3bsG/D44IWiklGxD6aKGryYNTGg3RhEOv3iUmlRTJ0N1fdVJMkL
 NeV4VitUPkU2mCH2gRyOZjw4SIp/7jhiBSA3mycw07zVKrO4AGsjkxW01R1NgqjtaWK7
 nMky3Pw4dAdJR30D58pyzbt2gyi8gxZ7etn67AwtWKnCbqqMnEWPFp1bKXSLwV7GTnzK
 ppNkLm+nEw7bAh316KFYIM/CTmlMGgmEiGD3Oo6Y0gT3IL2GT3g6jccTSjGZEUoNE6yN
 m3ckLQvhk8RZcKnzbhF6NGGbsUhzM2UrbMm1PrMZEyf/3LKgmw+Ig3P7ApBYFaPtEJdq
 q0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=Z9ITGSDMGYjHXB8OwNKC53Rfsb5yUN6vdvBe2OSuloA=;
 b=fWeqNcwt9HJVYXGP0Xqf96A0/4hzpC0OqWUXD+MZDncQIF46WAJ5W6ieXecBThHJDD
 gVM3iplP68o/Wf8uMLQWC8s7bRRFB9PGgY9qh+TKL0GLspf2DEsPoGpjw2Vl6PUsqOnC
 Qlx3PjTIYPzwcxDN0jmkf49A+K3kXyLJVXucYmIKPOyta5o1UwV0ghjio4JwuGFNq6gi
 Gvj/VmFwnO5HzLCL9YG9MFocVKqWYmSHRQKZ+YrmETVjcBebNw/7eDU+t8wis3KA5qp2
 VQzG8ZyQOjUzjKAz5voeAaCyBkuHcSxY9JlkZtzSxMaa9SoJ36m+NlA1jwqbGX2j/5LP
 KpbA==
X-Gm-Message-State: AOAM532uXNAdFXrm3gKnQZ5bRXaOOQsR1+lkINoBfnd98lmlWPg4Gjor
 /h09Vv5EWjnEDFqKszU+cUWIrlw5sY8+1EyE8to0dg==
X-Google-Smtp-Source: ABdhPJzd2I7k1QBDTQy1MGH+kx9CvoalTozNbFSwVTKYDUwCUiOOv4abwyJTARFepqxgasIV14yC9ahvSU4Ye8aodvw=
X-Received: by 2002:a25:4114:: with SMTP id o20mr42745132yba.330.1628617743255; 
 Tue, 10 Aug 2021 10:49:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210722190747.1986614-1-hridya@google.com>
 <CALAqxLVLMt7rbJBQtFBw-ikBAjKrVgfS8=Nu6NFQbp_gq1m22Q@mail.gmail.com>
 <CA+wgaPOQmY4H9n302YspKuLk9iq9vBzdWBTu19EUUsiQYTUOzQ@mail.gmail.com>
 <CAO_48GFS5SsdNCwOp6Jb+nmZJ+SdNkQkq628VhxXRGSLVeP0Yg@mail.gmail.com>
 <YRI7cqWXM545iMzO@phenom.ffwll.local>
In-Reply-To: <YRI7cqWXM545iMzO@phenom.ffwll.local>
From: Hridya Valsaraju <hridya@google.com>
Date: Tue, 10 Aug 2021 10:48:26 -0700
Message-ID: <CA+wgaPNQYMd8dyCcmHfHbCXKEqpF8i8nJQvb0cD1HEPG5hDMoA@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Hridya Valsaraju <hridya@google.com>, 
 John Stultz <john.stultz@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
 Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, 
 Brian Starkey <Brian.Starkey@arm.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 linux-media <linux-media@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, 
 Android Kernel Team <kernel-team@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Set allocation limit
 for system heap
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBBdWcgMTAsIDIwMjEgYXQgMTo0MCBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+Cj4gT24gVHVlLCBBdWcgMTAsIDIwMjEgYXQgMDE6NTQ6NDFQTSArMDUz
MCwgU3VtaXQgU2Vtd2FsIHdyb3RlOgo+ID4gSGkgSHJpZHlhLAo+ID4KPiA+IEFwb2xvZ2llcyBm
b3IgdGhlIGRlbGF5IGluIHJlc3BvbmRpbmcuCj4gPgo+ID4gT24gV2VkLCA0IEF1ZyAyMDIxIGF0
IDAzOjA5LCBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4gPgo+
ID4gPiBPbiBNb24sIEF1ZyAyLCAyMDIxIGF0IDc6MTggUE0gSm9obiBTdHVsdHogPGpvaG4uc3R1
bHR6QGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gVGh1LCBKdWwgMjIsIDIw
MjEgYXQgMTI6MDcgUE0gSHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+Cj4gPiA+
IHdyb3RlOgo+ID4gPiA+ID4gVGhpcyBwYXRjaCBsaW1pdHMgdGhlIHNpemUgb2YgdG90YWwgbWVt
b3J5IHRoYXQgY2FuIGJlIHJlcXVlc3RlZCBpbiBhCj4gPiA+ID4gPiBzaW5nbGUgYWxsb2NhdGlv
biBmcm9tIHRoZSBzeXN0ZW0gaGVhcC4gVGhpcyB3b3VsZCBwcmV2ZW50IGEKPiA+ID4gPiA+IGJ1
Z2d5L21hbGljaW91cyBjbGllbnQgZnJvbSBkZXBsZXRpbmcgc3lzdGVtIG1lbW9yeSBieSByZXF1
ZXN0aW5nIGZvcgo+ID4gPiBhbgo+ID4gPiA+ID4gZXh0cmVtZWx5IGxhcmdlIGFsbG9jYXRpb24g
d2hpY2ggbWlnaHQgZGVzdGFiaWxpemUgdGhlIHN5c3RlbS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBU
aGUgbGltaXQgaXMgc2V0IHRvIGhhbGYgdGhlIHNpemUgb2YgdGhlIGRldmljZSdzIHRvdGFsIFJB
TSB3aGljaCBpcwo+ID4gPiB0aGUKPiA+ID4gPiA+IHNhbWUgYXMgd2hhdCB3YXMgc2V0IGJ5IHRo
ZSBkZXByZWNhdGVkIElPTiBzeXN0ZW0gaGVhcC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4KPiA+ID4gPgo+ID4g
PiA+IFNlZW1zIHNhbmUgdG8gbWUsIHVubGVzcyBmb2xrcyBoYXZlIGJldHRlciBzdWdnZXN0aW9u
cyBmb3IgYWxsb2NhdGlvbgo+ID4gPiBsaW1pdHMuCj4gPiA+ID4KPiA+ID4gPiBSZXZpZXdlZC1i
eTogSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFyby5vcmc+Cj4gPiA+Cj4gPiA+IFRoYW5r
IHlvdSBmb3IgdGFraW5nIGEgbG9vayBKb2huIQo+ID4gPgo+ID4gTG9va3MgZ29vZCB0byBtZTsg
SSB3aWxsIGFwcGx5IGl0IHRvIGRybS1taXNjIHRvZGF5Lgo+Cj4gUGxlYXNlIGRvbid0LCB0aGlz
IGRvZXNuJ3QgcmVhbGx5IHNvbHZlIGFueXRoaW5nOgo+IC0gaXQncyBlYXN5IHRvIGJ5cGFzcywg
anVzdCBhbGxvY2F0ZSBtb3JlIGJ1ZmZlcnMgdG8gZ2V0IG92ZXIgdGhlIGxpbWl0Cj4gLSByZXNv
dXJjZSBsaW1pdCBwbGFuIGlzIGNncm91cHMsIG5vdCBoYW5kLXJvbGxlZCBsaW1pdHMgaW4gZXZl
cnkKPiAgIGFsbG9jYXRvcgo+IC0gdGhlIHR0bSAibWF4IGhhbGYgb2Ygc3lzdGVtIG1lbW9yeSIg
aXMgZm9yIHBpbm5lZCBtZW1vcnksIHRvIHdvcmsgYXJvdW5kCj4gICBsb2NraW5nIGludmVyc2lv
biBpc3N1ZXMgYmV0d2VlbiBkbWFfcmVzdl9sb2NrIGFuZCBjb3JlIG1tIHNocmlua2Vycy4gSXQK
PiAgIGRvZXMgbm90IGFjdHVhbGx5IGltcG9zZSBhbiBvdmVyYWxsIGFsbG9jYXRpb24gbGltaXQs
IHlvdSBjYW4gYWxsb2NhdGUKPiAgIHR0bSBibyB1bnRpbCB5b3VyIGVudGlyZSBtZW1vcnkgKGFu
ZCBzd2FwKSBhcmUgZnVsbC4gQ2hyaXN0aWFuIEvDtm5pZyBoYXMKPiAgIG1lcmdlZCBhIHBhdGNo
IHNldCB0byBsaWZ0IHRoaXMgYnkgcmV3b3JraW5nIHRoZSBzaHJpbmtlciBpbnRlcmFjdGlvbiwK
PiAgIGJ1dCBpdCBoYWQgdG8gYmUgcmV2ZXJ0ZWQgYWdhaW4gYmVjYXVzZSBvZiBzb21lIGZhbGxv
dXQgSSBjYW4ndCByZW1lbWJlcgo+ICAgb2ZmaGFuZC4gZG1hX3Jlc3ZfbG9jayB2cyBzaHJpbmtl
cnMgaXMgdmVyeSB0cmlja3kuCj4KPiBTbyBpZiB5b3Ugd2FudCByZXNvdXJjZSBsaW1pdHMgdGhl
biB5b3UgcmVhbGx5IHdhbnQgY2dyb3VwcyBoZXJlLgoKVGhhbmtzIERhbmllbCBhbmQgU3VtaXQs
IHRoYXQgbWFrZXMgc2Vuc2UuIE9uY2UgdGhlIEdQVSBtZW1vcnkKYWNjb3VudGluZyBjZ3JvdXBz
IGFyZSByZWFkeSwgd2Ugc2hvdWxkIGJlIGFibGUgdG8gc2V0IHRoZSBsaW1pdCB1c2luZwp0aGUg
c2FtZS4KClJlZ2FyZHMsCkhyaWR5YQoKPgo+IENoZWVycywgRGFuaWVsCj4KPiA+Cj4gPgo+ID4g
Pgo+ID4gPiBSZWdhcmRzLAo+ID4gPiBIcmlkeWEKPiA+ID4KPiA+ID4gPgo+ID4gPiA+IHRoYW5r
cwo+ID4gPiA+IC1qb2huCj4gPiA+Cj4gPiBCZXN0LAo+ID4gU3VtaXQuCj4gPgo+ID4gLS0KPiA+
IFRoYW5rcyBhbmQgcmVnYXJkcywKPiA+Cj4gPiBTdW1pdCBTZW13YWwgKGhlIC8gaGltKQo+ID4g
VGVjaCBMZWFkIC0gTENHLCBWZXJ0aWNhbCBUZWNobm9sb2dpZXMKPiA+IExpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29Dcwo+Cj4gLS0KPiBEYW5pZWwgVmV0dGVy
Cj4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gaHR0cDovL2Jsb2cuZmZ3
bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
