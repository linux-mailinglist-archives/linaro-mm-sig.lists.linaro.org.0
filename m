Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9635030FD83
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 21:00:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C82EA609A8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 20:00:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BB1A36186A; Thu,  4 Feb 2021 20:00:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B579460EE1;
	Thu,  4 Feb 2021 20:00:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BA64A60B63
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 20:00:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A03EE609A8; Thu,  4 Feb 2021 20:00:13 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by lists.linaro.org (Postfix) with ESMTPS id 2ED67609A8
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 20:00:12 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id h192so5038602oib.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 12:00:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=90M/71bjC9CGs3ogusHe7Lln0a+4v/EBmrZ9cb/rWvE=;
 b=RwW41apYybVsLptAaSxZSENr08IVz7LiHI/XVjzYjs1OvL5XBiNAVZUYllVWOg2uVt
 NUlieyrdyUHwQ8gNxYVGV/9+xRxPLvJqpxAxBeSrhs8VeOKxhKkxcHjs95e/2EH6Fy/j
 L9m5sOMGhvlP1b9rkgrxqunE6qgiObKeezmffU3xhsW6d14waKf5UklmRFbdl48+uw2A
 OzhG20DAYB8obRX9irw/vQyZNHAg+t2/0BTFaCEWIOfKeWNX3kQC3TJ7zNYwkdypuV+h
 jNmohW89Ne3BdS999ZpuJEp1RBfAAnQPaZe/kwyn81a9VpUbnf+w4JliycPuAfj4P99C
 wXyw==
X-Gm-Message-State: AOAM5307MuNnGcXgus0p9/mD7njpJAgf0/5+YnzOyHRlEDPrOgfHO3PL
 4kb6zq79lG97tzkDAvql5eZk+bS2t9ColrqDOqhvUw==
X-Google-Smtp-Source: ABdhPJwTuzNhAKxR0BkOyvj49dEx6Ja/iHwKoMWy60qW2EMYu8xTXD6u0yZN04biYADL17T3361IvWxlLPIJipMbnB4=
X-Received: by 2002:aca:4ac5:: with SMTP id x188mr794397oia.14.1612468811660; 
 Thu, 04 Feb 2021 12:00:11 -0800 (PST)
MIME-Version: 1.0
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
 <20210204161339.GX4718@ziepe.ca>
 <CAKMK7uEZvEEQXQeM=t-7uZEvga2GMhctp=WQgeSetG0GKTRsHA@mail.gmail.com>
 <20210204183808.GY4718@ziepe.ca>
In-Reply-To: <20210204183808.GY4718@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 4 Feb 2021 20:59:59 +0100
Message-ID: <CAKMK7uFBzF00zTzAE5b7PJFUfmxp5ExbSQxfcOfd_P6dPm7k9A@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] RFC: dma-buf: Require VM_SPECIAL vma
	for mmap
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

T24gVGh1LCBGZWIgNCwgMjAyMSBhdCA3OjM4IFBNIEphc29uIEd1bnRob3JwZSA8amdnQHppZXBl
LmNhPiB3cm90ZToKPgo+IE9uIFRodSwgRmViIDA0LCAyMDIxIGF0IDA2OjE2OjI3UE0gKzAxMDAs
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBPbiBUaHUsIEZlYiA0LCAyMDIxIGF0IDU6MTMgUE0g
SmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUuY2E+IHdyb3RlOgo+ID4gPiBPbiBXZWQsIEZlYiAw
MywgMjAyMSBhdCAxMDoxOTo0OFBNICswMTAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gPiA+
IHRsZHI7IERNQSBidWZmZXJzIGFyZW4ndCBub3JtYWwgbWVtb3J5LCBleHBlY3RpbmcgdGhhdCB5
b3UgY2FuIHVzZQo+ID4gPiA+IHRoZW0gbGlrZSB0aGF0IChsaWtlIGNhbGxpbmcgZ2V0X3VzZXJf
cGFnZXMgd29ya3MsIG9yIHRoYXQgdGhleSdyZQo+ID4gPiA+IGFjY291bnRpbmcgbGlrZSBhbnkg
b3RoZXIgbm9ybWFsIG1lbW9yeSkgY2Fubm90IGJlIGd1YXJhbnRlZWQuCj4gPiA+ID4KPiA+ID4g
PiBTaW5jZSBzb21lIHVzZXJzcGFjZSBvbmx5IHJ1bnMgb24gaW50ZWdyYXRlZCBkZXZpY2VzLCB3
aGVyZSBhbGwKPiA+ID4gPiBidWZmZXJzIGFyZSBhY3R1YWxseSBhbGwgcmVzaWRlbnQgc3lzdGVt
IG1lbW9yeSwgdGhlcmUncyBhIGh1Z2UKPiA+ID4gPiB0ZW1wdGF0aW9uIHRvIGFzc3VtZSB0aGF0
IGEgc3RydWN0IHBhZ2UgaXMgYWx3YXlzIHByZXNlbnQgYW5kIHVzZWFibGUKPiA+ID4gPiBsaWtl
IGZvciBhbnkgbW9yZSBwYWdlY2FjaGUgYmFja2VkIG1tYXAuIFRoaXMgaGFzIHRoZSBwb3RlbnRp
YWwgdG8KPiA+ID4gPiByZXN1bHQgaW4gYSB1YXBpIG5pZ2h0bWFyZS4KPiA+ID4gPgo+ID4gPiA+
IFRvIHN0b3AgdGhpcyBnYXAgcmVxdWlyZSB0aGF0IERNQSBidWZmZXIgbW1hcHMgYXJlIFZNX1NQ
RUNJQUwsIHdoaWNoCj4gPiA+ID4gYmxvY2tzIGdldF91c2VyX3BhZ2VzIGFuZCBhbGwgdGhlIG90
aGVyIHN0cnVjdCBwYWdlIGJhc2VkCj4gPiA+ID4gaW5mcmFzdHJ1Y3R1cmUgZm9yIGV2ZXJ5b25l
LiBJbiBzcGlyaXQgdGhpcyBpcyB0aGUgdWFwaSBjb3VudGVycGFydCB0bwo+ID4gPiA+IHRoZSBr
ZXJuZWwtaW50ZXJuYWwgQ09ORklHX0RNQUJVRl9ERUJVRy4KPiA+ID4KPiA+ID4gRmFzdCBndXAg
bmVlZHMgdGhlIHNwZWNpYWwgZmxhZyBzZXQgb24gdGhlIFBURSBhcyB3ZWxsLi4gRmVlbHMgd2Vp
cmQKPiA+ID4gdG8gaGF2ZSBhIHNwZWNpYWwgVk1BIHdpdGhvdXQgYWxzbyBoYXZpbmcgc3BlY2lh
bCBQVEVzPwo+ID4KPiA+IFRoZXJlJ3Mga2luZGEgbm8gY29udmVuaWVudCAmIGNoZWFwIHdheSB0
byBjaGVjayBmb3IgdGhlIHB0ZV9zcGVjaWFsCj4gPiBmbGFnLiBUaGlzIGhlcmUgc2hvdWxkIGF0
IGxlYXN0IGNhdGNoIGFjY2lkZW50YWwgbWlzdXNlLCBwZW9wbGUKPiA+IGJ1aWxkaW5nIHRoZWly
IG93biBwdGVzIHdlIGNhbid0IHN0b3AuIE1heWJlIHdlIHNob3VsZCBleGNsdWRlCj4gPiBWTV9N
SVhFRE1BUCB0byBjYXRjaCB2bV9pbnNlcnRfcGFnZSBpbiBvbmUgb2YgdGhlc2UuCj4gPgo+ID4g
SG0gbG9va2luZyBhdCBjb2RlIEkgdGhpbmsgd2UgbmVlZCB0byByZXF1aXJlIFZNX1BGTk1BUCBo
ZXJlIHRvIHN0b3AKPiA+IHZtX2luc2VydF9wYWdlLiBBbmQgbG9va2luZyBhdCB0aGUgdmFyaW91
cyBmdW5jdGlvbnMsIHRoYXQgc2VlbXMgdG8gYmUKPiA+IHJlcXVpcmVkIChhbmQgSSBndWVzcyBW
TV9JTyBpcyBtb3JlIGZvciByZWFsbHkgZnVua3kgYXJjaGl0ZWN0dXJlcwo+ID4gd2hlcmUgaW8t
c3BhY2UgaXMgc29tZXdoZXJlIGVsc2U/KS4gSSBndWVzcyBJIHNob3VsZCBjaGVjayBmb3IKPiA+
IFZNX1BGTk1BUCBpbnN0ZWFkIG9mIFZNX1NQRUNJQUw/Cj4KPiBXZWxsLCB5b3Ugc2FpZCB0aGUg
Z29hbCB3YXMgdG8gYmxvY2sgR1VQIHVzYWdlLCB0aGF0IHdvbid0IGhhcHBlbgo+IHdpdGhvdXQg
dGhlIFBURSBzcGVjaWFsIGZsYWcsIGF0IGxlYXN0IG9uIHg4Ngo+Cj4gU28sIHJlYWxseSwgd2hh
dCB5b3UgYXJlIHNheWluZyBpcyBhbGwgZG1hYnVmIHVzZXJzIHNob3VsZCBhbHdheXMgdXNlCj4g
dm1mX2luc2VydF9wZm5fcHJvdCgpIG9yIHNvbWV0aGluZyBzaW1pbGFyIC0gYW5kIG5ldmVyIGlu
c2VydF9wYWdlL2V0Yz8KPgo+IEl0IG1pZ2h0IG1ha2Ugc2Vuc2UgdG8gY2hlY2sgdGhlIHZtYSBm
bGFncyBpbiBhbGwgdGhlIGluc2VydCBwYXRocywgZWcKPiB2bV9pbnNlcnRfcGFnZSgpIGNhbid0
IHdvcmsgd2l0aCBWTUFzIHRoYXQgc2hvdWxkIG5vdCBoYXZlIHN0cnVjdAo+IHBhZ2VzIGluIHRo
ZW0gKGVnIFZNX1NQRUNJQWwsIFZNX1BGTk1BUCwgIVZNX01JWEVNQVAgaWYgSSB1bmRlcnN0YW5k
Cj4gaXQgcmlnaHQpCgpXZWxsIHRoYXQncyB3aGF0IEkndmUgZG9uZSwgYW5kIGl0IC9sb29rcy8g
bGlrZSBhbGwgdGhlIGNoZWNrcyBhcmUKdGhlcmUgYWxyZWFkeSwgYXMgbG9uZyBhcyB3ZSB1c2Ug
Vk1fUEZOTUFQLiB2bV9pbnNlcnRfcGFnZSB0cmllcyB0bwphdXRvLWFkZCBWTV9NSVhFRE1BUCwg
YnV0IGJhaWxzIG91dCB3aXRoIGEgQlVHX09OIGlmIFZNX1BGTk1BUCBpcyBzZXQuCkFuZCBhbGwg
dGhlIHZtX2luc2VydF9wZm5fcHJvdC9yZW1hcF9wZm5fcmFuZ2UgZnVuY3Rpb25zIHJlcXVpcmUg
KG9yCnNldCkgVk1fUEZOTUFQLgoKU28gSSB0aGluayBqdXN0IGNoZWNraW5nIGZvciBWTV9QRk5N
QVAgYWZ0ZXIgdGhlIHZtYSBpcyBzZXQgdXAgc2hvdWxkCmJlIGVub3VnaCB0byBndWFyYW50ZWUg
d2UnbGwgb25seSBoYXZlIHB0ZV9zcGVjaWFsIHB0ZXMgaW4gdGhlcmUsCmV2ZXIuIEJ1dCBJJ20g
bm90IHN1cmUsIHRoaXMgc3R1ZmYgYWxsIGlzbid0IHJlYWxseSBkb2N1bWVudGVkIG11Y2gKYW5k
IHRoZSBjb2RlIGlzIHNvbWV0aW1lcyBhIG1hemUgKHRvIG1lIGF0IGxlYXN0KS4KCj4gQXQgbGVh
c3QgYXMgc29tZSBWTSBkZWJ1ZyBvcHRpb24KClNlZW1zIHRvIGJlIHRoZXJlIGFscmVhZHkgdW5j
b25kaXRpb25hbGx5LgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVy
LCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
