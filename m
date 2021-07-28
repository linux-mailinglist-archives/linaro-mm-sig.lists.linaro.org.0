Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB603D91C7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 17:23:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E67466350C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 15:23:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C692A63568; Wed, 28 Jul 2021 15:23:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4753563500;
	Wed, 28 Jul 2021 15:23:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 48FC86048D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 15:23:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4610063500; Wed, 28 Jul 2021 15:23:25 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 3BF276048D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 15:23:23 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id h14so3017830wrx.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 08:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gIJl6heK4Wu8LD+136XTBtnsYW2mvJjQU/D8Ms2H3as=;
 b=jmPs1tCUkBSl0nSXYR6gPia9DTZUsUuK6WuNawtSRaBMCEBxyDs7+QabJIoXdqZq/U
 ipyFUCHAbYE4ejN18peJE6bLtQ2Bi5RNYl8nKS6Tjj97CkA062FBKEmfWjDqKQgYK9EN
 3fZGAPjbfgcEnTQ2Ujrt4z3pi69aXGmnmeFMWo2wJdXup9LLrxLbA9G20eikcAjxV+Zm
 av3H6Os8s+gr10pPR3+ISY5lhp9rY5uSyGZCWkWk9iyUoOQiaflz7mC6JcfImucPIXmd
 fuYSCACdcYk3G4rFYcy0vppFGoGuG7uFFuQT+OruTr/oXEunbEXPHUXYUFT6vnnfcMUG
 HPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gIJl6heK4Wu8LD+136XTBtnsYW2mvJjQU/D8Ms2H3as=;
 b=tQFK3D8+eOxFLXQHLQmSzz4pYTDdiximDtNYjSY4JLP6rU+lX7TlHMMs5YtK6PrnOn
 3MPtbMEYe4+dxe8tRz/Ymv4qrqEtPoqCslg1PE7vp2cWSQiUfpQzKADeHlW2eFwTUOTj
 svYcYhHGF0yB525vdIuNdIXcZyENmf7YT9C2NHGhiVDxu+0Csw3Qihpwp1zLZyhI/y0S
 Tsr3zhNd8G2i0FyqiRCfzoW+mTWPjFzbX08ouyWUT3xzgoP0zEd9jfHHmFdwatsPt9LX
 kJ2u/JUT1q6mdnSwwlPl//VfCt2GXxNyLcma6gu7yt9wQU+y0KqrngXbsDmPACLZgrvZ
 UzLw==
X-Gm-Message-State: AOAM531gK9f93nrA1ar9VYwVfCyLJUQdOLenATBnEcqOeZ0DTIiyGIP7
 LKMeB5Ed6yFKFPsBlM0i0CKkouxYRXjtzlZdJn8=
X-Google-Smtp-Source: ABdhPJztwMYMMPn6WPsHQkFz9OCw5D0yFU47cnfG0RLy4751ge1lVIRHbL2Nmyofslpb5wRcwFRa181hDEG1sC6o0cs=
X-Received: by 2002:adf:ea41:: with SMTP id j1mr17628736wrn.147.1627485802309; 
 Wed, 28 Jul 2021 08:23:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
 <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
 <eedfdc75-72f8-9150-584b-c5e9d16db180@amd.com>
 <20210728165700.38c39cf8@eldfell>
In-Reply-To: <20210728165700.38c39cf8@eldfell>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 28 Jul 2021 08:27:31 -0700
Message-ID: <CAF6AEGs_tG4A=_gs7KLB0WeWQq8xyJuiY2CmRkXHnN7iyhUCqQ@mail.gmail.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
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
Cc: Rob Clark <robdclark@chromium.org>, Matthew Brost <matthew.brost@intel.com>,
 Jack Zhang <Jack.Zhang1@amd.com>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gV2VkLCBKdWwgMjgsIDIwMjEgYXQgNjo1NyBBTSBQZWtrYSBQYWFsYW5lbiA8cHBhYWxhbmVu
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIDI4IEp1bCAyMDIxIDE1OjMxOjQxICswMjAw
Cj4gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+
ID4gQW0gMjguMDcuMjEgdW0gMTU6MjQgc2NocmllYiBNaWNoZWwgRMOkbnplcjoKPiA+ID4gT24g
MjAyMS0wNy0yOCAzOjEzIHAubS4sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gPiA+PiBBbSAy
OC4wNy4yMSB1bSAxNTowOCBzY2hyaWViIE1pY2hlbCBEw6RuemVyOgo+ID4gPj4+IE9uIDIwMjEt
MDctMjggMTozNiBwLm0uLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Cj4gPiA+Pj4+IEF0IGxl
YXN0IEFNRCBoYXJkd2FyZSBpcyBhbHJlYWR5IGNhcGFibGUgb2YgZmxpcHBpbmcgZnJhbWVzIG9u
IEdQVSBldmVudHMgbGlrZSBmaW5pc2hpbmcgcmVuZGVyaW5nIChvciB1cGxvYWRpbmcgZXRjKS4K
PiA+ID4+Pj4KPiA+ID4+Pj4gQnkgd2FpdGluZyBpbiB1c2Vyc3BhY2Ugb24gdGhlIENQVSBiZWZv
cmUgc2VuZCB0aGUgZnJhbWUgdG8gdGhlIGhhcmR3YXJlIHlvdSBhcmUgY29tcGxldGVseSBraWxs
aW5nIG9mIHN1Y2ggZmVhdHVyZXMuCj4gPiA+Pj4+Cj4gPiA+Pj4+IEZvciBjb21wb3NpbmcgdXNl
IGNhc2VzIHRoYXQgbWFrZXMgc2Vuc2UsIGJ1dCBjZXJ0YWlubHkgbm90IGZvciBmdWxsIHNjcmVl
biBhcHBsaWNhdGlvbnMgYXMgZmFyIGFzIEkgY2FuIHNlZS4KPiA+ID4+PiBFdmVuIGZvciBmdWxs
c2NyZWVuLCB0aGUgY3VycmVudCBLTVMgQVBJIG9ubHkgYWxsb3dzIHF1ZXVpbmcgYSBzaW5nbGUg
cGFnZSBmbGlwIHBlciBDUlRDLCB3aXRoIG5vIHdheSB0byBjYW5jZWwgb3Igb3RoZXJ3aXNlIG1v
ZGlmeSBpdC4gVGhlcmVmb3JlLCBhIFdheWxhbmQgY29tcG9zaXRvciBoYXMgdG8gc2V0IGEgZGVh
ZGxpbmUgZm9yIHRoZSBuZXh0IHJlZnJlc2ggY3ljbGUsIGFuZCB3aGVuIHRoZSBkZWFkbGluZSBw
YXNzZXMsIGl0IGhhcyB0byBzZWxlY3QgdGhlIGJlc3QgYnVmZmVyIGF2YWlsYWJsZSBmb3IgdGhl
IGZ1bGxzY3JlZW4gc3VyZmFjZS4gVG8gbWFrZSBzdXJlIHRoZSBmbGlwIHdpbGwgbm90IG1pc3Mg
dGhlIG5leHQgcmVmcmVzaCBjeWNsZSwgdGhlIGNvbXBvc2l0b3IgaGFzIHRvIHBpY2sgYW4gaWRs
ZSBidWZmZXIuIElmIGl0IHBpY2tzIGEgbm9uLWlkbGUgYnVmZmVyLCBhbmQgdGhlIHBlbmRpbmcg
cmVuZGVyaW5nIGRvZXMgbm90IGZpbmlzaCBpbiB0aW1lIGZvciB2ZXJ0aWNhbCBibGFuaywgdGhl
IGZsaXAgd2lsbCBiZSBkZWxheWVkIGJ5IGF0IGxlYXN0IG9uZSByZWZyZXNoIGN5Y2xlLCB3aGlj
aCByZXN1bHRzIGluIHZpc2libGUgc3R1dHRlcmluZy4KPiA+ID4+Pgo+ID4gPj4+IChVbnRpbCB0
aGUgZGVhZGxpbmUgcGFzc2VzLCB0aGUgV2F5bGFuZCBjb21wb3NpdG9yIGNhbid0IGV2ZW4ga25v
dyBpZiBhIHByZXZpb3VzbHkgZnVsbHNjcmVlbiBzdXJmYWNlIHdpbGwgc3RpbGwgYmUgZnVsbHNj
cmVlbiBmb3IgdGhlIG5leHQgcmVmcmVzaCBjeWNsZSkKPiA+ID4+IFdlbGwgdGhlbiBsZXQncyBl
eHRlbmQgdGhlIEtNUyBBUEkgaW5zdGVhZCBvZiBoYWNraW5nIHRvZ2V0aGVyIHdvcmthcm91bmRz
IGluIHVzZXJzcGFjZS4KPiA+ID4gVGhhdCdzIGluZGVlZCBhIHBvc3NpYmxlIHNvbHV0aW9uIGZv
ciB0aGUgZnVsbHNjcmVlbiAvIGRpcmVjdCBzY2Fub3V0IGNhc2UuCj4gPiA+Cj4gPiA+IE5vdCBm
b3IgdGhlIGdlbmVyYWwgY29tcG9zaXRpbmcgY2FzZSB0aG91Z2gsIHNpbmNlIGEgY29tcG9zaXRv
ciBkb2VzIG5vdCB3YW50IHRvIGNvbXBvc2l0ZSBtdWx0aXBsZSBvdXRwdXQgZnJhbWVzIHBlciBk
aXNwbGF5IHJlZnJlc2ggY3ljbGUsIHNvIGl0IGhhcyB0byBtYWtlIHN1cmUgdGhlIG9uZSBmcmFt
ZSBoaXRzIHRoZSB0YXJnZXQuCj4gPgo+ID4gWWVhaCwgdGhhdCdzIHRydWUgYXMgd2VsbC4KPiA+
Cj4gPiBBdCBsZWFzdCBhcyBsb25nIGFzIG5vYm9keSBpbnZlbnRzIGEgbWVjaGFuaXNtIHRvIGRv
IHRoaXMgZGVjaXNpb24gb24KPiA+IHRoZSBHUFUgaW5zdGVhZC4KPgo+IFRoYXQgd291bGQgbWVh
biBwdXR0aW5nIHRoZSB3aG9sZSB3aW5kb3cgbWFuYWdlciBpbnRvIHRoZSBHUFUuCj4KCkhtbSwg
c2VlbXMgbGlrZSB3ZSBjb3VsZCBjb21lIHVwIHdpdGggYSB3YXkgZm9yIGEgc2hhZGVyIHRvIGZp
Z3VyZSBvdXQKaWYgYSBmZW5jZSBoYXMgc2lnbmFsZWQgb3Igbm90IG9uIHRoZSBHUFUsIGFuZCB0
aGVuIGVpdGhlciBzYW1wbGUgZnJvbQp0aGUgY3VycmVudCBvciBwcmV2aW91cyB3aW5kb3cgc3Vy
ZmFjZT8KCkJSLAotUgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
