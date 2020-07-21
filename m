Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 970D32279A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 09:42:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37736665A5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 07:42:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2722C665C3; Tue, 21 Jul 2020 07:42:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4DF1E66597;
	Tue, 21 Jul 2020 07:42:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D6CD0618D4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 07:42:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BFEDE66597; Tue, 21 Jul 2020 07:42:02 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 7C87F618D4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 07:42:01 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id w3so1848264wmi.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 00:42:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=8I4d3yfRPKUddAXMH4OKFOkQh1gH0jweTktqrHFJPqI=;
 b=BhMLbSFtfXAxBmAmzo/QUiLw7XwdFoblFuKJRxzT9S/zO2OfO2V7+ZFgJJRm/vwdpq
 SYyoOc05Kcd2KIkXDhudPigYo3va5Am1gaDsaYfl7GRl2/47B98iSsO84koJ56NOKWOp
 /SThF+vKiMqf7Wboz6pTTogqEAdOPtBri2pzBv7pVCqNvSYZXz6f1S4lq3F/977IVKlC
 F+bWtMBpiF8PnYqpkoXuxuXh9D2j3Sz5Ltu1qX9V9Rkqq3FWLFCl7YHqqF+h5fwFZ0PT
 gu2pyXM0M8sOXFXyFbQiFMSX7il4MkmaJlrST2gekdVeV2QROLYAJ7SW2VHIAdvQjmV3
 o7gw==
X-Gm-Message-State: AOAM53329xyvqVNG/Yd1u5MMsDbpsAnUBglZkgJlQ0sEa7CcMhMjk7he
 xr7lDJfxwqYsTA/AlZdBcGjNCA==
X-Google-Smtp-Source: ABdhPJwELMZ3FDmnBcjPCFuUIAq0UQy6OzxYenXzQ86GtS8M6350pulmMr/zJSvRpUKbu1kZupVbTQ==
X-Received: by 2002:a1c:2349:: with SMTP id j70mr2752286wmj.22.1595317320339; 
 Tue, 21 Jul 2020 00:42:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w1sm5246860wra.73.2020.07.21.00.41.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jul 2020 00:41:59 -0700 (PDT)
Date: Tue, 21 Jul 2020 09:41:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <20200721074157.GB3278063@phenom.ffwll.local>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Stone <daniels@collabora.com>, linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx@lists.freedesktop.org, Jason Ekstrand <jason@jlekstrand.net>,
 Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document why
 indefinite fences are a bad idea
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

T24gTW9uLCBKdWwgMjAsIDIwMjAgYXQgMDE6MTU6MTdQTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gKEludGVsKSB3cm90ZToKPiBIaSwKPiAKPiBPbiA3LzkvMjAgMjozMyBQTSwgRGFuaWVsIFZl
dHRlciB3cm90ZToKPiA+IENvbWVzIHVwIGV2ZXJ5IGZldyB5ZWFycywgZ2V0cyBzb21ld2hhdCB0
ZWRpb3VzIHRvIGRpc2N1c3MsIGxldCdzCj4gPiB3cml0ZSB0aGlzIGRvd24gb25jZSBhbmQgZm9y
IGFsbC4KPiA+IAo+ID4gV2hhdCBJJ20gbm90IHN1cmUgYWJvdXQgaXMgd2hldGhlciB0aGUgdGV4
dCBzaG91bGQgYmUgbW9yZSBleHBsaWNpdCBpbgo+ID4gZmxhdCBvdXQgbWFuZGF0aW5nIHRoZSBh
bWRrZmQgZXZpY3Rpb24gZmVuY2VzIGZvciBsb25nIHJ1bm5pbmcgY29tcHV0ZQo+ID4gd29ya2xv
YWRzIG9yIHdvcmtsb2FkcyB3aGVyZSB1c2Vyc3BhY2UgZmVuY2luZyBpcyBhbGxvd2VkLgo+IAo+
IEFsdGhvdWdoIChpbiBteSBodW1ibGUgb3BpbmlvbikgaXQgbWlnaHQgYmUgcG9zc2libGUgdG8g
Y29tcGxldGVseSB1bnRhbmdsZQo+IGtlcm5lbC1pbnRyb2R1Y2VkIGZlbmNlcyBmb3IgcmVzb3Vy
Y2UgbWFuYWdlbWVudCBhbmQgZG1hLWZlbmNlcyB1c2VkIGZvcgo+IGNvbXBsZXRpb24tIGFuZCBk
ZXBlbmRlbmN5IHRyYWNraW5nIGFuZCBsaWZ0IGEgbG90IG9mIHJlc3RyaWN0aW9ucyBmb3IgdGhl
Cj4gZG1hLWZlbmNlcywgaW5jbHVkaW5nIHByb2hpYml0aW5nIGluZmluaXRlIG9uZXMsIEkgdGhp
bmsgdGhpcyBtYWtlcyBzZW5zZQo+IGRlc2NyaWJpbmcgdGhlIGN1cnJlbnQgc3RhdGUuCgpZZWFo
IEkgdGhpbmsgYSBmdXR1cmUgcGF0Y2ggbmVlZHMgdG8gdHlwZSB1cCBob3cgd2Ugd2FudCB0byBt
YWtlIHRoYXQKaGFwcGVuIChmb3Igc29tZSBjcm9zcyBkcml2ZXIgY29uc2lzdGVuY3kpIGFuZCB3
aGF0IG5lZWRzIHRvIGJlCmNvbnNpZGVyZWQuIFNvbWUgb2YgdGhlIG5lY2Vzc2FyeSBwYXJ0cyBh
cmUgYWxyZWFkeSB0aGVyZSAod2l0aCBsaWtlIHRoZQpwcmVlbXB0aW9uIGZlbmNlcyBhbWRrZmQg
aGFzIGFzIGFuIGV4YW1wbGUpLCBidXQgSSB0aGluayBzb21lIGNsZWFyIGRvY3MKb24gd2hhdCdz
IHJlcXVpcmVkIGZyb20gYm90aCBodywgZHJpdmVycyBhbmQgdXNlcnNwYWNlIHdvdWxkIGJlIHJl
YWxseQpnb29kLgo+Cj4gUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryb20gPHRob21hcy5oZWxs
c3Ryb21AaW50ZWwuY29tPgoKVGhhbmtzIGZvciB0YWtpbmcgYSBsb29rLCBmaXJzdCAzIHBhdGNo
ZXMgaGVyZSB3aXRoIGFubm90YXRpb25zIGFuZCBkb2NzCm1lcmdlZCB0byBkcm0tbWlzYy1uZXh0
LiBJJ2xsIGFzayBNYWFydGVuL0RhdmUgd2hldGhlciBhbm90aGVyIHB1bGwgaXMgb2sKZm9yIDUu
OSBzbyB0aGF0IGV2ZXJ5b25lIGNhbiB1c2UgdGhpcyBhc2FwLgotRGFuaWVsCi0tIApEYW5pZWwg
VmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5m
ZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
