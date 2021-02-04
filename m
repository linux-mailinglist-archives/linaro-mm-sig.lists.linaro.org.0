Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8875930F760
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 17:14:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA747607C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 16:14:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A759C60EE1; Thu,  4 Feb 2021 16:14:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 293E2609A8;
	Thu,  4 Feb 2021 16:13:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 116B8607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 16:13:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E3216609A8; Thu,  4 Feb 2021 16:13:41 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
 [209.85.219.46])
 by lists.linaro.org (Postfix) with ESMTPS id E8428607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 16:13:40 +0000 (UTC)
Received: by mail-qv1-f46.google.com with SMTP id l14so1965476qvp.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 08:13:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AdINSrul0jxHoqpecjG/aK/AQPWXH0qinrJ7WDX/N1E=;
 b=SQiWBXTYqhQ9FLTroskSFiba1qKmB86ZC0NdiJ6q2TqSVwnS6NoWlB+wLi8kOdbRPn
 OqP2u6eV4MNYyAYZlQdEZ+Q9xbqoFFxQ/BA/d10UTMevSJKGOgcCOv0aHNJu1NpQrrS7
 /fQ5BtNLZEvdUGDCdhsncDFd0Og/97wbXAwQym0wWzJgXtbsF6KHKE274+jGPRPWMKjG
 xlWDh5XKE9zg6VpTFh4AlEDvrPuiEnOey453S76ikkLzjc0TAb4jLY8leo87oCoowTbh
 CjzsBZucBJsek2hmUmts5FmsFBLqtnnHIKHp3+MHZ2qlqIAmgejn1rB6xyJRsT2b7sE+
 FUlA==
X-Gm-Message-State: AOAM531XJ853RPdJn6DvXOgYPITpOzhRA5Ozr+ZI7w91spmzljc3M2fW
 hd6RuytV4MSiuYredqrNdmkgGQ==
X-Google-Smtp-Source: ABdhPJxBWYsGlh0GFUj59qT9H98NmLKj9wdXTx1MMs/HM8XRMtGVSw+252D9rCVYiNi7Je0P31XC2w==
X-Received: by 2002:a0c:e442:: with SMTP id d2mr6605975qvm.43.1612455220609;
 Thu, 04 Feb 2021 08:13:40 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-162-115-133.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.115.133])
 by smtp.gmail.com with ESMTPSA id x74sm5226993qkb.55.2021.02.04.08.13.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Feb 2021 08:13:40 -0800 (PST)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1l7hGF-003Un7-HK; Thu, 04 Feb 2021 12:13:39 -0400
Date: Thu, 4 Feb 2021 12:13:39 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20210204161339.GX4718@ziepe.ca>
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>, linux-media@vger.kernel.org
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

T24gV2VkLCBGZWIgMDMsIDIwMjEgYXQgMTA6MTk6NDhQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiB0bGRyOyBETUEgYnVmZmVycyBhcmVuJ3Qgbm9ybWFsIG1lbW9yeSwgZXhwZWN0aW5n
IHRoYXQgeW91IGNhbiB1c2UKPiB0aGVtIGxpa2UgdGhhdCAobGlrZSBjYWxsaW5nIGdldF91c2Vy
X3BhZ2VzIHdvcmtzLCBvciB0aGF0IHRoZXkncmUKPiBhY2NvdW50aW5nIGxpa2UgYW55IG90aGVy
IG5vcm1hbCBtZW1vcnkpIGNhbm5vdCBiZSBndWFyYW50ZWVkLgo+IAo+IFNpbmNlIHNvbWUgdXNl
cnNwYWNlIG9ubHkgcnVucyBvbiBpbnRlZ3JhdGVkIGRldmljZXMsIHdoZXJlIGFsbAo+IGJ1ZmZl
cnMgYXJlIGFjdHVhbGx5IGFsbCByZXNpZGVudCBzeXN0ZW0gbWVtb3J5LCB0aGVyZSdzIGEgaHVn
ZQo+IHRlbXB0YXRpb24gdG8gYXNzdW1lIHRoYXQgYSBzdHJ1Y3QgcGFnZSBpcyBhbHdheXMgcHJl
c2VudCBhbmQgdXNlYWJsZQo+IGxpa2UgZm9yIGFueSBtb3JlIHBhZ2VjYWNoZSBiYWNrZWQgbW1h
cC4gVGhpcyBoYXMgdGhlIHBvdGVudGlhbCB0bwo+IHJlc3VsdCBpbiBhIHVhcGkgbmlnaHRtYXJl
Lgo+IAo+IFRvIHN0b3AgdGhpcyBnYXAgcmVxdWlyZSB0aGF0IERNQSBidWZmZXIgbW1hcHMgYXJl
IFZNX1NQRUNJQUwsIHdoaWNoCj4gYmxvY2tzIGdldF91c2VyX3BhZ2VzIGFuZCBhbGwgdGhlIG90
aGVyIHN0cnVjdCBwYWdlIGJhc2VkCj4gaW5mcmFzdHJ1Y3R1cmUgZm9yIGV2ZXJ5b25lLiBJbiBz
cGlyaXQgdGhpcyBpcyB0aGUgdWFwaSBjb3VudGVycGFydCB0bwo+IHRoZSBrZXJuZWwtaW50ZXJu
YWwgQ09ORklHX0RNQUJVRl9ERUJVRy4KCkZhc3QgZ3VwIG5lZWRzIHRoZSBzcGVjaWFsIGZsYWcg
c2V0IG9uIHRoZSBQVEUgYXMgd2VsbC4uIEZlZWxzIHdlaXJkCnRvIGhhdmUgYSBzcGVjaWFsIFZN
QSB3aXRob3V0IGFsc28gaGF2aW5nIHNwZWNpYWwgUFRFcz8KCkphc29uCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
