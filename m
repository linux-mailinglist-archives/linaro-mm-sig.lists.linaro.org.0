Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB0630F954
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 18:17:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08F0E6087D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 17:17:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ED53E60B63; Thu,  4 Feb 2021 17:17:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0619F609A8;
	Thu,  4 Feb 2021 17:16:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3F505607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 17:16:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2BD85609A8; Thu,  4 Feb 2021 17:16:41 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 by lists.linaro.org (Postfix) with ESMTPS id A57C4607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 17:16:39 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id d1so4081373otl.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 09:16:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xJnVO3IRTh6jLTnURSMqZt6jb+mhY21ToLMIpLkV9R4=;
 b=tgg59KMNJLc9mCq3uw0OrYw4NrHbFDHmAVF3ikvepJ/gJod4Yo9QqYpD2xb2Kxo6T7
 tbuG7N6vfUPVRv3gfZnZMveLLIMMImsOcVqS9IEsFDJoegC+6gvIh5VMy457rFqKT9Tg
 KR4HGHGxEhABXGJMQjretymT/QcqBQa/wQ+MGCTrSy9C6jImg4urFHRK9e4kjt3u1cF3
 A4Gvs1XNMluZD+dzw9g8Kgv+Hs6Ltr30RWOjCAy9pF9XRZORoNh+ub6WMkzyzKU5+QJz
 V66qRjK88GaooEh2KcD/q4YgG8Vk4yDD1ug8IrWCOTsvlXTNQeM/zC7KWV/FHqiYseWE
 vtBQ==
X-Gm-Message-State: AOAM532XpJCORCHZGubwvBEGq/YBCjPMaiBXHfEYe8Q4EmvUhb2P+BYk
 jo26pUjoDP3STcv6Gxlt1sf9NNJAiybI3UMSdzUcoA==
X-Google-Smtp-Source: ABdhPJwAkGg4N4y18wGDr+SCd9/HnouTpio3RzotUFP5dy6ZXX80lPrKik+UQ1LGNd1ps7C62WHTl9aITStWc16IyCk=
X-Received: by 2002:a9d:6c96:: with SMTP id c22mr236633otr.303.1612458998103; 
 Thu, 04 Feb 2021 09:16:38 -0800 (PST)
MIME-Version: 1.0
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
 <20210204161339.GX4718@ziepe.ca>
In-Reply-To: <20210204161339.GX4718@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 4 Feb 2021 18:16:27 +0100
Message-ID: <CAKMK7uEZvEEQXQeM=t-7uZEvga2GMhctp=WQgeSetG0GKTRsHA@mail.gmail.com>
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

T24gVGh1LCBGZWIgNCwgMjAyMSBhdCA1OjEzIFBNIEphc29uIEd1bnRob3JwZSA8amdnQHppZXBl
LmNhPiB3cm90ZToKPiBPbiBXZWQsIEZlYiAwMywgMjAyMSBhdCAxMDoxOTo0OFBNICswMTAwLCBE
YW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gdGxkcjsgRE1BIGJ1ZmZlcnMgYXJlbid0IG5vcm1hbCBt
ZW1vcnksIGV4cGVjdGluZyB0aGF0IHlvdSBjYW4gdXNlCj4gPiB0aGVtIGxpa2UgdGhhdCAobGlr
ZSBjYWxsaW5nIGdldF91c2VyX3BhZ2VzIHdvcmtzLCBvciB0aGF0IHRoZXkncmUKPiA+IGFjY291
bnRpbmcgbGlrZSBhbnkgb3RoZXIgbm9ybWFsIG1lbW9yeSkgY2Fubm90IGJlIGd1YXJhbnRlZWQu
Cj4gPgo+ID4gU2luY2Ugc29tZSB1c2Vyc3BhY2Ugb25seSBydW5zIG9uIGludGVncmF0ZWQgZGV2
aWNlcywgd2hlcmUgYWxsCj4gPiBidWZmZXJzIGFyZSBhY3R1YWxseSBhbGwgcmVzaWRlbnQgc3lz
dGVtIG1lbW9yeSwgdGhlcmUncyBhIGh1Z2UKPiA+IHRlbXB0YXRpb24gdG8gYXNzdW1lIHRoYXQg
YSBzdHJ1Y3QgcGFnZSBpcyBhbHdheXMgcHJlc2VudCBhbmQgdXNlYWJsZQo+ID4gbGlrZSBmb3Ig
YW55IG1vcmUgcGFnZWNhY2hlIGJhY2tlZCBtbWFwLiBUaGlzIGhhcyB0aGUgcG90ZW50aWFsIHRv
Cj4gPiByZXN1bHQgaW4gYSB1YXBpIG5pZ2h0bWFyZS4KPiA+Cj4gPiBUbyBzdG9wIHRoaXMgZ2Fw
IHJlcXVpcmUgdGhhdCBETUEgYnVmZmVyIG1tYXBzIGFyZSBWTV9TUEVDSUFMLCB3aGljaAo+ID4g
YmxvY2tzIGdldF91c2VyX3BhZ2VzIGFuZCBhbGwgdGhlIG90aGVyIHN0cnVjdCBwYWdlIGJhc2Vk
Cj4gPiBpbmZyYXN0cnVjdHVyZSBmb3IgZXZlcnlvbmUuIEluIHNwaXJpdCB0aGlzIGlzIHRoZSB1
YXBpIGNvdW50ZXJwYXJ0IHRvCj4gPiB0aGUga2VybmVsLWludGVybmFsIENPTkZJR19ETUFCVUZf
REVCVUcuCj4KPiBGYXN0IGd1cCBuZWVkcyB0aGUgc3BlY2lhbCBmbGFnIHNldCBvbiB0aGUgUFRF
IGFzIHdlbGwuLiBGZWVscyB3ZWlyZAo+IHRvIGhhdmUgYSBzcGVjaWFsIFZNQSB3aXRob3V0IGFs
c28gaGF2aW5nIHNwZWNpYWwgUFRFcz8KClRoZXJlJ3Mga2luZGEgbm8gY29udmVuaWVudCAmIGNo
ZWFwIHdheSB0byBjaGVjayBmb3IgdGhlIHB0ZV9zcGVjaWFsCmZsYWcuIFRoaXMgaGVyZSBzaG91
bGQgYXQgbGVhc3QgY2F0Y2ggYWNjaWRlbnRhbCBtaXN1c2UsIHBlb3BsZQpidWlsZGluZyB0aGVp
ciBvd24gcHRlcyB3ZSBjYW4ndCBzdG9wLiBNYXliZSB3ZSBzaG91bGQgZXhjbHVkZQpWTV9NSVhF
RE1BUCB0byBjYXRjaCB2bV9pbnNlcnRfcGFnZSBpbiBvbmUgb2YgdGhlc2UuCgpIbSBsb29raW5n
IGF0IGNvZGUgSSB0aGluayB3ZSBuZWVkIHRvIHJlcXVpcmUgVk1fUEZOTUFQIGhlcmUgdG8gc3Rv
cAp2bV9pbnNlcnRfcGFnZS4gQW5kIGxvb2tpbmcgYXQgdGhlIHZhcmlvdXMgZnVuY3Rpb25zLCB0
aGF0IHNlZW1zIHRvIGJlCnJlcXVpcmVkIChhbmQgSSBndWVzcyBWTV9JTyBpcyBtb3JlIGZvciBy
ZWFsbHkgZnVua3kgYXJjaGl0ZWN0dXJlcwp3aGVyZSBpby1zcGFjZSBpcyBzb21ld2hlcmUgZWxz
ZT8pLiBJIGd1ZXNzIEkgc2hvdWxkIGNoZWNrIGZvcgpWTV9QRk5NQVAgaW5zdGVhZCBvZiBWTV9T
UEVDSUFMPwotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
