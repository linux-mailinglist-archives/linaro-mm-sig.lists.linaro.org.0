Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F33623D7963
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 17:08:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82699634E6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 15:08:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 63473634E2; Tue, 27 Jul 2021 15:08:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A677261A44;
	Tue, 27 Jul 2021 15:08:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1D24061A3C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 15:08:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0DE4C61A44; Tue, 27 Jul 2021 15:08:40 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 0539C61A3C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 15:08:38 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 d131-20020a1c1d890000b02902516717f562so2567447wmd.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 08:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jcrbQyHbij430xaq02MbLiHj13M2J5t4Q3rA2r97S1M=;
 b=ePJAi2hbsieHla1MODd/uh8GFZVMnIlRscK3zkhUSDAUseRyYpSPaurjOwZmuhWBGO
 MVLE9fUHyMXt38vPDmeRkKhaXHcbOsKJPWXRAhyKmcE03F+3VylPtx87Fs6hlKFBwsGN
 ZQldGQHrQfR/QhlHKTR5J98f6um8tBLzTrOq26kC6v9/unY0IJjLyZRvx1fMOKwTo1c8
 kGQ75QJ9sHCE6+Pj6M0aPcLcaGILjjJlrWOOSluledtAN51fWnsi/3b9Y/GjSwiJleRa
 HFM9TAo5gLzMOIlXlRNOcdfTUoK+7JCdlv/FgSV4wHP0m5WcUD205WybKF592XZppJh+
 eIRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jcrbQyHbij430xaq02MbLiHj13M2J5t4Q3rA2r97S1M=;
 b=aHq2QyOwl5M9V/2654gyib63Vte7T/vUvHPI7Qu4TosWr+p8koXVvve8TmQI309PxN
 QLvSmK3SBpS3qrbtp/NjtcoHbl80RNtslmjuNSBXCu4qsYjOzVFdpmlclcXVhWh12n/z
 rb+/QA+eENC9dxc1yhbkPAZOionYRD7LrIf3bxr/evQpljDRnVe6bump7AmIN71kabLC
 KxBxcxnIWu2e4v7FMjsDJZufF7PPBzZK3y1DVdEiRj9w9uZ4DMD0UnuYQ9AaTVTxlHvD
 LCgeNmqnAi8izb1KD5vLOpR9kECKeD04KomYx5wXEMJbWK10GayNUTEPU1W7LkbIoim4
 4yRQ==
X-Gm-Message-State: AOAM531Wdad+nZPqxmScoJX1RvsVhr8n05i33Ygy10H0SIoUxFRlzzIH
 aw5GyBAMrH+OXvosRobSz809H0GwhNpaZEEUee4=
X-Google-Smtp-Source: ABdhPJyQHd8UqT9Ia3PL8c7l+eagsABe2zXZgvxuJGgX3d4FyLbIEBs//Pnd3H0g36dbX41lxRF0XyssNj+CA1b4ir4=
X-Received: by 2002:a7b:cc8b:: with SMTP id p11mr4622066wma.164.1627398516915; 
 Tue, 27 Jul 2021 08:08:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
In-Reply-To: <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 27 Jul 2021 08:12:45 -0700
Message-ID: <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>
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
Cc: Matthew Brost <matthew.brost@intel.com>, Rob Clark <robdclark@chromium.org>,
 Jack Zhang <Jack.Zhang1@amd.com>, open list <linux-kernel@vger.kernel.org>,
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

T24gVHVlLCBKdWwgMjcsIDIwMjEgYXQgNzo1MCBBTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRh
ZW56ZXIubmV0PiB3cm90ZToKPgo+IE9uIDIwMjEtMDctMjcgMTozOCBhLm0uLCBSb2IgQ2xhcmsg
d3JvdGU6Cj4gPiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4gPgo+
ID4gQmFzZWQgb24gZGlzY3Vzc2lvbiBmcm9tIGEgcHJldmlvdXMgc2VyaWVzWzFdIHRvIGFkZCBh
ICJib29zdCIgbWVjaGFuaXNtCj4gPiB3aGVuLCBmb3IgZXhhbXBsZSwgdmJsYW5rIGRlYWRsaW5l
cyBhcmUgbWlzc2VkLiAgSW5zdGVhZCBvZiBhIGJvb3N0Cj4gPiBjYWxsYmFjaywgdGhpcyBhcHBy
b2FjaCBhZGRzIGEgd2F5IHRvIHNldCBhIGRlYWRsaW5lIG9uIHRoZSBmZW5jZSwgYnkKPiA+IHdo
aWNoIHRoZSB3YWl0ZXIgd291bGQgbGlrZSB0byBzZWUgdGhlIGZlbmNlIHNpZ25hbGxlZC4KPiA+
Cj4gPiBJJ3ZlIG5vdCB5ZXQgaGFkIGEgY2hhbmNlIHRvIHJlLXdvcmsgdGhlIGRybS9tc20gcGFy
dCBvZiB0aGlzLCBidXQKPiA+IHdhbnRlZCB0byBzZW5kIHRoaXMgb3V0IGFzIGFuIFJGQyBpbiBj
YXNlIEkgZG9uJ3QgaGF2ZSBhIGNoYW5jZSB0bwo+ID4gZmluaXNoIHRoZSBkcm0vbXNtIHBhcnQg
dGhpcyB3ZWVrLgo+ID4KPiA+IE9yaWdpbmFsIGRlc2NyaXB0aW9uOgo+ID4KPiA+IEluIHNvbWUg
Y2FzZXMsIGxpa2UgZG91YmxlLWJ1ZmZlcmVkIHJlbmRlcmluZywgbWlzc2luZyB2YmxhbmtzIGNh
bgo+ID4gdHJpY2sgdGhlIEdQVSBpbnRvIHJ1bm5pbmcgYXQgYSBsb3dlciBmcmVxdWVuY2UsIHdo
ZW4gcmVhbGx5IHdlCj4gPiB3YW50IHRvIGJlIHJ1bm5pbmcgYXQgYSBoaWdoZXIgZnJlcXVlbmN5
IHRvIG5vdCBtaXNzIHRoZSB2YmxhbmtzCj4gPiBpbiB0aGUgZmlyc3QgcGxhY2UuCj4gPgo+ID4g
VGhpcyBpcyBwYXJ0aWFsbHkgaW5zcGlyZWQgYnkgYSB0cmljayBpOTE1IGRvZXMsIGJ1dCBpbXBs
ZW1lbnRlZAo+ID4gdmlhIGRtYS1mZW5jZSBmb3IgYSBjb3VwbGUgb2YgcmVhc29uczoKPiA+Cj4g
PiAxKSBUbyBjb250aW51ZSB0byBiZSBhYmxlIHRvIHVzZSB0aGUgYXRvbWljIGhlbHBlcnMKPiA+
IDIpIFRvIHN1cHBvcnQgY2FzZXMgd2hlcmUgZGlzcGxheSBhbmQgZ3B1IGFyZSBkaWZmZXJlbnQg
ZHJpdmVycwo+ID4KPiA+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzkwMzMxLwo+Cj4gVW5mb3J0dW5hdGVseSwgbm9uZSBvZiB0aGVzZSBhcHByb2FjaGVzIHdp
bGwgaGF2ZSB0aGUgZnVsbCBpbnRlbmRlZCBlZmZlY3Qgb25jZSBXYXlsYW5kIGNvbXBvc2l0b3Jz
IHN0YXJ0IHdhaXRpbmcgZm9yIGNsaWVudCBidWZmZXJzIHRvIGJlY29tZSBpZGxlIGJlZm9yZSB1
c2luZyB0aGVtIGZvciBhbiBvdXRwdXQgZnJhbWUgKHRvIHByZXZlbnQgb3V0cHV0IGZyYW1lcyBm
cm9tIGdldHRpbmcgZGVsYXllZCBieSBjbGllbnQgd29yaykuIFNlZSBodHRwczovL2dpdGxhYi5n
bm9tZS5vcmcvR05PTUUvbXV0dGVyLy0vbWVyZ2VfcmVxdWVzdHMvMTg4MCAoc2hhbWVsZXNzIHBs
dWcgOikgZm9yIGEgcHJvb2Ygb2YgY29uY2VwdCBvZiB0aGlzIGZvciBtdXR0ZXIuIFRoZSBib29z
dCB3aWxsIG9ubHkgYWZmZWN0IHRoZSBjb21wb3NpdG9yJ3Mgb3duIEdQVSB3b3JrLCBub3QgdGhl
IGNsaWVudCB3b3JrICh3aGljaCBtZWFucyBubyBlZmZlY3QgYXQgYWxsIGZvciBmdWxsc2NyZWVu
IGFwcHMgd2hlcmUgdGhlIGNvbXBvc2l0b3IgY2FuIHNjYW4gb3V0IHRoZSBjbGllbnQgYnVmZmVy
cyBkaXJlY3RseSkuCj4KCkkgZ3Vlc3MgeW91IG1lYW4gIm5vIGVmZmVjdCBhdCBhbGwgKmV4Y2Vw
dCogZm9yIGZ1bGxzY3JlZW4uLi4iPyAgR2FtZXMKYXJlIHVzdWFsbHkgcnVubmluZyBmdWxsc2Ny
ZWVuLCBpdCBpcyBhIGNhc2UgSSBjYXJlIGFib3V0IGEgbG90IDstKQoKSSdkIHBlcmhhcHMgcmVj
b21tZW5kIHRoYXQgd2F5bGFuZCBjb21wb3NpdG9ycywgaW4gY2FzZXMgd2hlcmUgb25seSBhCnNp
bmdsZSBsYXllciBpcyBjaGFuZ2luZywgbm90IHRyeSB0byBiZSBjbGV2ZXIgYW5kIGp1c3QgcHVz
aCB0aGUKdXBkYXRlIGRvd24gdG8gdGhlIGtlcm5lbC4KCkJSLAotUgoKPgo+IC0tCj4gRWFydGhs
aW5nIE1pY2hlbCBEw6RuemVyICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgIGh0dHBzOi8v
cmVkaGF0LmNvbQo+IExpYnJlIHNvZnR3YXJlIGVudGh1c2lhc3QgICAgICAgICAgICAgfCAgICAg
ICAgICAgICBNZXNhIGFuZCBYIGRldmVsb3BlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
