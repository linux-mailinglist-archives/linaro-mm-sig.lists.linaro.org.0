Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AE630FBA7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 19:38:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6A9B6087D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 18:38:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A90A760EE1; Thu,  4 Feb 2021 18:38:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4FDB609A8;
	Thu,  4 Feb 2021 18:38:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CF459607B9
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 18:38:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AF251609A8; Thu,  4 Feb 2021 18:38:10 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 by lists.linaro.org (Postfix) with ESMTPS id BDDD2607B9
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 18:38:09 +0000 (UTC)
Received: by mail-qt1-f178.google.com with SMTP id r20so3158859qtm.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 10:38:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2fIZukpi2sIkAo6dCSdzu+YLGU4yBN0ZS259eTftrmo=;
 b=E2YZrPGgv/aYvxzkn6ZkCbgc9Xaqt7h3834FbCGUMCXDt2VTa3YMtyw0nAQc+zcapI
 IJoqL6Q2RxS/urZFts5eekOLf86kJPyClW7QPG9tImD6KRuSj3JngPkjLDvfTIApJsO3
 NSpwblSVy2ZWO0Yo6Tkpo5XyuapakxbkUqD8+EbT7vYEdjotYWYGrHWSmAQEzH1c0y+x
 +rVGI9f8zQkykZGZDEwPiGtb5Usd7/Dg9mdo8ar4gsd+wQJCNi0ZA0LkTutNO+sTZKSN
 RWFRcxqyFuQSbbwpHL6h5Ip6JWep5w4l3eiR+gb1lHHI5NxfI8YiWVCA4/l6DVSO3Ugi
 BxBA==
X-Gm-Message-State: AOAM5311/eqHJY0Xi5py8NfcGixHu9ohaHtvQQbxoD1IlvjrGeFmrKMf
 4q4aL1w0kzKosD2G4n7PIn2tWQ==
X-Google-Smtp-Source: ABdhPJyswAPCEbvkwu8uoUdREU+JcFm5YBJnWbEhEdYe1zXUwlPWir/3dhSNStZTV+xow3F8NOw2ZA==
X-Received: by 2002:ac8:7768:: with SMTP id h8mr860973qtu.331.1612463889312;
 Thu, 04 Feb 2021 10:38:09 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-162-115-133.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.115.133])
 by smtp.gmail.com with ESMTPSA id r64sm6041832qkf.121.2021.02.04.10.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Feb 2021 10:38:08 -0800 (PST)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1l7jW4-003Xte-3o; Thu, 04 Feb 2021 14:38:08 -0400
Date: Thu, 4 Feb 2021 14:38:08 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20210204183808.GY4718@ziepe.ca>
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
 <20210204161339.GX4718@ziepe.ca>
 <CAKMK7uEZvEEQXQeM=t-7uZEvga2GMhctp=WQgeSetG0GKTRsHA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uEZvEEQXQeM=t-7uZEvga2GMhctp=WQgeSetG0GKTRsHA@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
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

T24gVGh1LCBGZWIgMDQsIDIwMjEgYXQgMDY6MTY6MjdQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUaHUsIEZlYiA0LCAyMDIxIGF0IDU6MTMgUE0gSmFzb24gR3VudGhvcnBlIDxq
Z2dAemllcGUuY2E+IHdyb3RlOgo+ID4gT24gV2VkLCBGZWIgMDMsIDIwMjEgYXQgMTA6MTk6NDhQ
TSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4gdGxkcjsgRE1BIGJ1ZmZlcnMgYXJl
bid0IG5vcm1hbCBtZW1vcnksIGV4cGVjdGluZyB0aGF0IHlvdSBjYW4gdXNlCj4gPiA+IHRoZW0g
bGlrZSB0aGF0IChsaWtlIGNhbGxpbmcgZ2V0X3VzZXJfcGFnZXMgd29ya3MsIG9yIHRoYXQgdGhl
eSdyZQo+ID4gPiBhY2NvdW50aW5nIGxpa2UgYW55IG90aGVyIG5vcm1hbCBtZW1vcnkpIGNhbm5v
dCBiZSBndWFyYW50ZWVkLgo+ID4gPgo+ID4gPiBTaW5jZSBzb21lIHVzZXJzcGFjZSBvbmx5IHJ1
bnMgb24gaW50ZWdyYXRlZCBkZXZpY2VzLCB3aGVyZSBhbGwKPiA+ID4gYnVmZmVycyBhcmUgYWN0
dWFsbHkgYWxsIHJlc2lkZW50IHN5c3RlbSBtZW1vcnksIHRoZXJlJ3MgYSBodWdlCj4gPiA+IHRl
bXB0YXRpb24gdG8gYXNzdW1lIHRoYXQgYSBzdHJ1Y3QgcGFnZSBpcyBhbHdheXMgcHJlc2VudCBh
bmQgdXNlYWJsZQo+ID4gPiBsaWtlIGZvciBhbnkgbW9yZSBwYWdlY2FjaGUgYmFja2VkIG1tYXAu
IFRoaXMgaGFzIHRoZSBwb3RlbnRpYWwgdG8KPiA+ID4gcmVzdWx0IGluIGEgdWFwaSBuaWdodG1h
cmUuCj4gPiA+Cj4gPiA+IFRvIHN0b3AgdGhpcyBnYXAgcmVxdWlyZSB0aGF0IERNQSBidWZmZXIg
bW1hcHMgYXJlIFZNX1NQRUNJQUwsIHdoaWNoCj4gPiA+IGJsb2NrcyBnZXRfdXNlcl9wYWdlcyBh
bmQgYWxsIHRoZSBvdGhlciBzdHJ1Y3QgcGFnZSBiYXNlZAo+ID4gPiBpbmZyYXN0cnVjdHVyZSBm
b3IgZXZlcnlvbmUuIEluIHNwaXJpdCB0aGlzIGlzIHRoZSB1YXBpIGNvdW50ZXJwYXJ0IHRvCj4g
PiA+IHRoZSBrZXJuZWwtaW50ZXJuYWwgQ09ORklHX0RNQUJVRl9ERUJVRy4KPiA+Cj4gPiBGYXN0
IGd1cCBuZWVkcyB0aGUgc3BlY2lhbCBmbGFnIHNldCBvbiB0aGUgUFRFIGFzIHdlbGwuLiBGZWVs
cyB3ZWlyZAo+ID4gdG8gaGF2ZSBhIHNwZWNpYWwgVk1BIHdpdGhvdXQgYWxzbyBoYXZpbmcgc3Bl
Y2lhbCBQVEVzPwo+IAo+IFRoZXJlJ3Mga2luZGEgbm8gY29udmVuaWVudCAmIGNoZWFwIHdheSB0
byBjaGVjayBmb3IgdGhlIHB0ZV9zcGVjaWFsCj4gZmxhZy4gVGhpcyBoZXJlIHNob3VsZCBhdCBs
ZWFzdCBjYXRjaCBhY2NpZGVudGFsIG1pc3VzZSwgcGVvcGxlCj4gYnVpbGRpbmcgdGhlaXIgb3du
IHB0ZXMgd2UgY2FuJ3Qgc3RvcC4gTWF5YmUgd2Ugc2hvdWxkIGV4Y2x1ZGUKPiBWTV9NSVhFRE1B
UCB0byBjYXRjaCB2bV9pbnNlcnRfcGFnZSBpbiBvbmUgb2YgdGhlc2UuCj4gCj4gSG0gbG9va2lu
ZyBhdCBjb2RlIEkgdGhpbmsgd2UgbmVlZCB0byByZXF1aXJlIFZNX1BGTk1BUCBoZXJlIHRvIHN0
b3AKPiB2bV9pbnNlcnRfcGFnZS4gQW5kIGxvb2tpbmcgYXQgdGhlIHZhcmlvdXMgZnVuY3Rpb25z
LCB0aGF0IHNlZW1zIHRvIGJlCj4gcmVxdWlyZWQgKGFuZCBJIGd1ZXNzIFZNX0lPIGlzIG1vcmUg
Zm9yIHJlYWxseSBmdW5reSBhcmNoaXRlY3R1cmVzCj4gd2hlcmUgaW8tc3BhY2UgaXMgc29tZXdo
ZXJlIGVsc2U/KS4gSSBndWVzcyBJIHNob3VsZCBjaGVjayBmb3IKPiBWTV9QRk5NQVAgaW5zdGVh
ZCBvZiBWTV9TUEVDSUFMPwoKV2VsbCwgeW91IHNhaWQgdGhlIGdvYWwgd2FzIHRvIGJsb2NrIEdV
UCB1c2FnZSwgdGhhdCB3b24ndCBoYXBwZW4Kd2l0aG91dCB0aGUgUFRFIHNwZWNpYWwgZmxhZywg
YXQgbGVhc3Qgb24geDg2CgpTbywgcmVhbGx5LCB3aGF0IHlvdSBhcmUgc2F5aW5nIGlzIGFsbCBk
bWFidWYgdXNlcnMgc2hvdWxkIGFsd2F5cyB1c2UKdm1mX2luc2VydF9wZm5fcHJvdCgpIG9yIHNv
bWV0aGluZyBzaW1pbGFyIC0gYW5kIG5ldmVyIGluc2VydF9wYWdlL2V0Yz8KCkl0IG1pZ2h0IG1h
a2Ugc2Vuc2UgdG8gY2hlY2sgdGhlIHZtYSBmbGFncyBpbiBhbGwgdGhlIGluc2VydCBwYXRocywg
ZWcKdm1faW5zZXJ0X3BhZ2UoKSBjYW4ndCB3b3JrIHdpdGggVk1BcyB0aGF0IHNob3VsZCBub3Qg
aGF2ZSBzdHJ1Y3QKcGFnZXMgaW4gdGhlbSAoZWcgVk1fU1BFQ0lBbCwgVk1fUEZOTUFQLCAhVk1f
TUlYRU1BUCBpZiBJIHVuZGVyc3RhbmQKaXQgcmlnaHQpCgpBdCBsZWFzdCBhcyBzb21lIFZNIGRl
YnVnIG9wdGlvbgoKSmFzb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
