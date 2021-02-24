Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 296E43238E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Feb 2021 09:46:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6EFB665A0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Feb 2021 08:46:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CE7C9666EF; Wed, 24 Feb 2021 08:46:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD8E966018;
	Wed, 24 Feb 2021 08:46:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2E97A610E8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Feb 2021 08:46:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 10F7A66018; Wed, 24 Feb 2021 08:46:05 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by lists.linaro.org (Postfix) with ESMTPS id 0700B610E8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Feb 2021 08:46:03 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id q186so1628582oig.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Feb 2021 00:46:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UBVHQngHUZ0hFzyvhknW/+6mcD59iwnz+U3N7eapU0U=;
 b=nYjqOeUs42Pnx/l5LZDRioyN7JnliHrFK91WuH0s9Z83bRlbTUOybv9mOJA3eH/oqk
 NbpTVPmXqOsz/XW2QPM5sdmRzsSabiEkCZPpjFjRhjRfAu7DT62EmaSafIvWaoNTlvZ4
 26gB19+sB947WLQ9dbH8fGB63Jv4a+q9EMO88PXQptnP8w6obPYV+wXQaqBd1IN5J3ba
 jeiJPFi6L3xQ46nr4Qat2jH7lBmtFJMASaliB8LvplPF7paGmokv6rTAoc9MAWfhMOwJ
 3FxmjUwB/JiBooZWx8l/uBpLl6UzE+GqZsrO1TXej8cQXpLb4JYx4xUqZqfK7CEEJO/y
 2qgg==
X-Gm-Message-State: AOAM530MhzJ+x/YdrovDRqkixar3OQCBkSUAbM4HeAR0dQYSDCiKV0R4
 K2fraDMO+dP1cj9rCKbnIeDHDAzduICyycO1jD6KZw==
X-Google-Smtp-Source: ABdhPJxewnoE3OYdDmeQhWuC52aIvi5BFeizNLN4c4XvgIM4Jw2qTr5RP6gk6PNE/9VKREBJNnEYEHtedMcL+yttr5o=
X-Received: by 2002:a05:6808:4c9:: with SMTP id
 a9mr2005718oie.101.1614156362400; 
 Wed, 24 Feb 2021 00:46:02 -0800 (PST)
MIME-Version: 1.0
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
In-Reply-To: <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 24 Feb 2021 09:45:51 +0100
Message-ID: <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require VM_PFNMAP vma for
	mmap
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

T24gV2VkLCBGZWIgMjQsIDIwMjEgYXQgODo0NiBBTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
Cjx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPgo+Cj4gT24gMi8yMy8yMSAxMTo1OSBB
TSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IHRsZHI7IERNQSBidWZmZXJzIGFyZW4ndCBub3Jt
YWwgbWVtb3J5LCBleHBlY3RpbmcgdGhhdCB5b3UgY2FuIHVzZQo+ID4gdGhlbSBsaWtlIHRoYXQg
KGxpa2UgY2FsbGluZyBnZXRfdXNlcl9wYWdlcyB3b3Jrcywgb3IgdGhhdCB0aGV5J3JlCj4gPiBh
Y2NvdW50aW5nIGxpa2UgYW55IG90aGVyIG5vcm1hbCBtZW1vcnkpIGNhbm5vdCBiZSBndWFyYW50
ZWVkLgo+ID4KPiA+IFNpbmNlIHNvbWUgdXNlcnNwYWNlIG9ubHkgcnVucyBvbiBpbnRlZ3JhdGVk
IGRldmljZXMsIHdoZXJlIGFsbAo+ID4gYnVmZmVycyBhcmUgYWN0dWFsbHkgYWxsIHJlc2lkZW50
IHN5c3RlbSBtZW1vcnksIHRoZXJlJ3MgYSBodWdlCj4gPiB0ZW1wdGF0aW9uIHRvIGFzc3VtZSB0
aGF0IGEgc3RydWN0IHBhZ2UgaXMgYWx3YXlzIHByZXNlbnQgYW5kIHVzZWFibGUKPiA+IGxpa2Ug
Zm9yIGFueSBtb3JlIHBhZ2VjYWNoZSBiYWNrZWQgbW1hcC4gVGhpcyBoYXMgdGhlIHBvdGVudGlh
bCB0bwo+ID4gcmVzdWx0IGluIGEgdWFwaSBuaWdodG1hcmUuCj4gPgo+ID4gVG8gc3RvcCB0aGlz
IGdhcCByZXF1aXJlIHRoYXQgRE1BIGJ1ZmZlciBtbWFwcyBhcmUgVk1fUEZOTUFQLCB3aGljaAo+
ID4gYmxvY2tzIGdldF91c2VyX3BhZ2VzIGFuZCBhbGwgdGhlIG90aGVyIHN0cnVjdCBwYWdlIGJh
c2VkCj4gPiBpbmZyYXN0cnVjdHVyZSBmb3IgZXZlcnlvbmUuIEluIHNwaXJpdCB0aGlzIGlzIHRo
ZSB1YXBpIGNvdW50ZXJwYXJ0IHRvCj4gPiB0aGUga2VybmVsLWludGVybmFsIENPTkZJR19ETUFC
VUZfREVCVUcuCj4gPgo+ID4gTW90aXZhdGVkIGJ5IGEgcmVjZW50IHBhdGNoIHdoaWNoIHdhbnRl
ZCB0byBzd2ljaCB0aGUgc3lzdGVtIGRtYS1idWYKPiA+IGhlYXAgdG8gdm1faW5zZXJ0X3BhZ2Ug
aW5zdGVhZCBvZiB2bV9pbnNlcnRfcGZuLgo+ID4KPiA+IHYyOgo+ID4KPiA+IEphc29uIGJyb3Vn
aHQgdXAgdGhhdCB3ZSBhbHNvIHdhbnQgdG8gZ3VhcmFudGVlIHRoYXQgYWxsIHB0ZXMgaGF2ZSB0
aGUKPiA+IHB0ZV9zcGVjaWFsIGZsYWcgc2V0LCB0byBjYXRjaCBmYXN0IGdldF91c2VyX3BhZ2Vz
IChvbiBhcmNoaXRlY3R1cmVzCj4gPiB0aGF0IHN1cHBvcnQgdGhpcykuIEFsbG93aW5nIFZNX01J
WEVETUFQIChsaWtlIFZNX1NQRUNJQUwgZG9lcykgd291bGQKPiA+IHN0aWxsIGFsbG93IHZtX2lu
c2VydF9wYWdlLCBidXQgbGltaXRpbmcgdG8gVk1fUEZOTUFQIHdpbGwgY2F0Y2ggdGhhdC4KPiA+
Cj4gPiAgRnJvbSBhdWRpdGluZyB0aGUgdmFyaW91cyBmdW5jdGlvbnMgdG8gaW5zZXJ0IHBmbiBw
dGUgZW50aXJlcwo+ID4gKHZtX2luc2VydF9wZm5fcHJvdCwgcmVtYXBfcGZuX3JhbmdlIGFuZCBh
bGwgaXQncyBjYWxsZXJzIGxpa2UKPiA+IGRtYV9tbWFwX3djKSBpdCBsb29rcyBsaWtlIFZNX1BG
Tk1BUCBpcyBhbHJlYWR5IHJlcXVpcmVkIGFueXdheSwgc28KPiA+IHRoaXMgc2hvdWxkIGJlIHRo
ZSBjb3JyZWN0IGZsYWcgdG8gY2hlY2sgZm9yLgo+ID4KPiBJZiB3ZSByZXF1aXJlIFZNX1BGTk1B
UCwgZm9yIG9yZGluYXJ5IHBhZ2UgbWFwcGluZ3MsIHdlIGFsc28gbmVlZCB0bwo+IGRpc2FsbG93
IENPVyBtYXBwaW5ncywgc2luY2UgaXQgd2lsbCBub3Qgd29yayBvbiBhcmNoaXRlY3R1cmVzIHRo
YXQKPiBkb24ndCBoYXZlIENPTkZJR19BUkNIX0hBU19QVEVfU1BFQ0lBTCwgKHNlZSB0aGUgZG9j
cyBmb3Igdm1fbm9ybWFsX3BhZ2UoKSkuCgpIbSBJIGZpZ3VyZWQgZXZlcnlvbmUganVzdCB1c2Vz
IE1BUF9TSEFSRUQgZm9yIGJ1ZmZlciBvYmplY3RzIHNpbmNlCkNPVyByZWFsbHkgbWFrZXMgYWJz
b2x1dGVseSBubyBzZW5zZS4gSG93IHdvdWxkIHdlIGVuZm9yY2UgdGhpcz8KCj4gQWxzbyB3b3J0
aCBub3RpbmcgaXMgdGhlIGNvbW1lbnQgaW4gIHR0bV9ib19tbWFwX3ZtYV9zZXR1cCgpIHdpdGgK
PiBwb3NzaWJsZSBwZXJmb3JtYW5jZSBpbXBsaWNhdGlvbnMgd2l0aCB4ODYgKyBQQVQgKyBWTV9Q
Rk5NQVAgKyBub3JtYWwKPiBwYWdlcy4gVGhhdCdzIGEgdmVyeSBvbGQgY29tbWVudCwgdGhvdWdo
LCBhbmQgbWlnaHQgbm90IGJlIHZhbGlkIGFueW1vcmUuCgpJIHRoaW5rIHRoYXQncyB3aHkgdHRt
IGhhcyBhIHBhZ2UgY2FjaGUgZm9yIHRoZXNlLCBiZWNhdXNlIGl0IGluZGVlZApzdWNrcy4gVGhl
IFBBVCBjaGFuZ2VzIG9uIHBhZ2VzIGFyZSByYXRoZXIgZXhwZW5zaXZlLgoKVGhlcmUgaXMgc3Rp
bGwgYW4gaXNzdWUgZm9yIGlvbWVtIG1hcHBpbmdzLCBiZWNhdXNlIHRoZSBQQVQgdmFsaWRhdGlv
bgpkb2VzIGEgbGluZWFyIHdhbGsgb2YgdGhlIHJlc291cmNlIHRyZWUgKGxvbCkgZm9yIGV2ZXJ5
IHZtX2luc2VydF9wZm4uCkJ1dCBmb3IgaTkxNSBhdCBsZWFzdCB0aGlzIGlzIGZpeGVkIGJ5IHVz
aW5nIHRoZSBpb19tYXBwaW5nCmluZnJhc3RydWN0dXJlLCB3aGljaCBkb2VzIHRoZSBQQVQgcmVz
ZXJ2YXRpb24gb25seSBvbmNlIHdoZW4geW91IHNldAp1cCB0aGUgbWFwcGluZyBhcmVhIGF0IGRy
aXZlciBsb2FkLgoKQWxzbyBUVE0gdXNlcyBWTV9QRk5NQVAgcmlnaHQgbm93IGZvciBldmVyeXRo
aW5nLCBzbyBpdCBjYW4ndCBiZSBhCnByb2JsZW0gdGhhdCBodXJ0cyBtdWNoIDotKQotRGFuaWVs
Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
