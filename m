Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F2289310778
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 10:15:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B38A366764
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 09:15:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A08B766765; Fri,  5 Feb 2021 09:15:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45D1A6675C;
	Fri,  5 Feb 2021 09:15:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C32C866759
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 09:15:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A115261726; Fri,  5 Feb 2021 09:15:09 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by lists.linaro.org (Postfix) with ESMTPS id 3E4DB61726
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 09:15:07 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id d20so6737691oiw.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Feb 2021 01:15:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bXNMzkZKAQHAIrPBhbAfZJ1F8VP6J4t5+TSc68lOL4Y=;
 b=LHIE1DBIIuT8MYCRZNDatLZIG3rqOVd45v78N6NnbPrUdqebzP/a6nA7LpDo/tklAP
 kFLhBpdWbEmJ3W3dz8LUT+3GwsE8grnQACBJnO7C6vPy2uOYfHirJyu3wdrAjwEYtbOY
 +e/yEduApESuV1jvGbzClBCJAUjDN9AG2gSlCDUdUb6+C4/va1PFgosB0aUb1vRDgN9d
 xRJ9hKFhhTyUu7WEANQ6csPtA2rDjzkPc4QX2Q7T7TuZX682GNY9Ox1WvIaLYkBtC+qQ
 pHr3bHFzTn17QjfYC9EAqFOC8bIisJKfGUDsOWcOnOOfsItLtziZwTB5Uejf1CmtTHaX
 Ho8w==
X-Gm-Message-State: AOAM532cdN52VjdbND0VNsjYr7m+l3K17QzQ/PqnDbhFp48xFCeRLV2E
 Iv4hActey9SlJjQ6AJtB+1NxuVWIgnwQ400qf3g91g==
X-Google-Smtp-Source: ABdhPJxEMaYu1JXRr4pq0v6xG4RV1wNpt4QeaMRtr7VxclNNU/6kd9mpU8CVuZPrSywCRKR/06lHELNic7Bm/GFyf1k=
X-Received: by 2002:aca:df42:: with SMTP id w63mr2473363oig.128.1612516506743; 
 Fri, 05 Feb 2021 01:15:06 -0800 (PST)
MIME-Version: 1.0
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
 <20210204161339.GX4718@ziepe.ca>
 <CAKMK7uEZvEEQXQeM=t-7uZEvga2GMhctp=WQgeSetG0GKTRsHA@mail.gmail.com>
 <20210204183808.GY4718@ziepe.ca>
 <CAKMK7uFBzF00zTzAE5b7PJFUfmxp5ExbSQxfcOfd_P6dPm7k9A@mail.gmail.com>
 <20210204200918.GA4718@ziepe.ca>
 <CAKMK7uEU_TJEUF2go6WRuVn+=-DSD5kRw1beJhC_1Y4HTXbYVQ@mail.gmail.com>
 <20210204205927.GD4718@ziepe.ca>
In-Reply-To: <20210204205927.GD4718@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 5 Feb 2021 10:14:55 +0100
Message-ID: <CAKMK7uH8yLtdzZkSLEfmbooDJSxaKPLXcHP_-xssJbDZz-eHMw@mail.gmail.com>
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

T24gVGh1LCBGZWIgNCwgMjAyMSBhdCA5OjU5IFBNIEphc29uIEd1bnRob3JwZSA8amdnQHppZXBl
LmNhPiB3cm90ZToKPgo+IE9uIFRodSwgRmViIDA0LCAyMDIxIGF0IDA5OjE5OjU3UE0gKzAxMDAs
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBPbiBUaHUsIEZlYiA0LCAyMDIxIGF0IDk6MDkgUE0g
SmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUuY2E+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBUaHUs
IEZlYiAwNCwgMjAyMSBhdCAwODo1OTo1OVBNICswMTAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+
ID4gPgo+ID4gPiA+IFNvIEkgdGhpbmsganVzdCBjaGVja2luZyBmb3IgVk1fUEZOTUFQIGFmdGVy
IHRoZSB2bWEgaXMgc2V0IHVwIHNob3VsZAo+ID4gPiA+IGJlIGVub3VnaCB0byBndWFyYW50ZWUg
d2UnbGwgb25seSBoYXZlIHB0ZV9zcGVjaWFsIHB0ZXMgaW4gdGhlcmUsCj4gPiA+ID4gZXZlci4g
QnV0IEknbSBub3Qgc3VyZSwgdGhpcyBzdHVmZiBhbGwgaXNuJ3QgcmVhbGx5IGRvY3VtZW50ZWQg
bXVjaAo+ID4gPiA+IGFuZCB0aGUgY29kZSBpcyBzb21ldGltZXMgYSBtYXplICh0byBtZSBhdCBs
ZWFzdCkuCj4gPiA+Cj4gPiA+IFllcywgdGhhdCBtYWtlcyBzZW5zZS4gVk1fUEZOTUFQIGFuZCAh
Vk1fTUlYRURNQVAgc2VlbXMgbGlrZSB0aGUgcmlnaHQKPiA+ID4gY2hlY2sgYWZ0ZXIgdGhlIFZN
QSBpcyBwb3B1bGF0ZWQKPiA+ID4KPiA+ID4gQnV0IGhvdyBkbyB5b3Ugc3R1ZmYgc3BlY2lhbCBw
Zm5zIGludG8gYSBWTUEgb3V0c2lkZSB0aGUgZmF1bHQKPiA+ID4gaGFuZGxlcj8KPiA+Cj4gPiBN
YW55IGRyaXZlcnMgd2UgaGF2ZSBkb24ndCBoYXZlIGR5bmFtaWMgYnVmZmVyIG1hbmFnZW1lbnQg
KGtpbmRhCj4gPiBvdmVya2lsbCBmb3IgYSBmZXcgZnJhbWVidWZmZXJzIG9uIGEgZGlzcGxheS1v
bmx5IElQIGJsb2NrKSwgc28gdGhlCj4gPiBqdXN0IHJlbWFwX3Bmbl9yYW5nZSBvbiAtPm1tYXAs
IGFuZCBkb24ndCBoYXZlIGEgZmF1bHQgaGFuZGxlciBhdCBhbGwuCj4KPiByZW1hcF9wZm5fcmFu
Z2UoKSBtYWtlcyBzZW5zZSwgZG8geW91IGV4cGVjdCBkcml2ZXJzIHVzaW5nIHN0cnVjdCBwYWdl
Cj4gYmFja2VkIG1lbW9yeSB0byBjYWxsIHRoYXQgYXMgd2VsbD8KCkFsbCB0aGUgb25lcyB1c2lu
ZyBDTUEgdGhyb3VnaCBkbWFfYWxsb2NfY29oZXJlbnQgZW5kIHVwIGluIHRoZXJlIHdpdGgKdGhl
IGRtYV9tbWFwX3djIGZ1bmN0aW9uLiBTbyB5ZWFoIHdlIGhhdmUgdG9ucyBhbHJlYWR5LgoKVGhl
IGRyaXZlcnMgd2l0aCBkeW5hbWljIG1lbW9yeSBtYW5hZ2VtZW50IGFsbCB1c2Ugdm1faW5zZXJ0
X3BmbiwgZXZlbgp3aGVuIHRoZSBidWZmZXIgaXMgaW4gc3lzdGVtIG1lbW9yeSBhbmQgc3RydWN0
IHBhZ2UgYmFja2VkLiBJIHRoaW5rCnRob3NlIGFyZSB0aGUgdHdvIGNhc2VzLiBUaGVyZSdzIGFu
b3RoZXIgbW1hcCBpbiBkcm0vaTkxNSwgYnV0IHRoYXQKc2hvdWxkIG5ldmVyIGxlYXZlIGludGVs
LXNwZWNpZmljIHVzZXJzcGFjZSwgYW5kIEkgdGhpbmsgd2UncmUgYWxzbwpwaGFzaW5nIGl0IG91
dCBzb21ld2hhdC4gRWl0aGVyIHdheSwgc2hvdWxkIG5ldmVyIHNob3cgdXAgaW4gYSBzaGFyZWQK
YnVmZmVyIHVzZWNhc2UsIGV2ZXIsIHNvIEkgdGhpbmsgd2UgY2FuIGlnbm9yZSBpdC4KLURhbmll
bAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24K
aHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
