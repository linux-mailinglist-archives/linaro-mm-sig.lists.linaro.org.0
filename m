Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A582219A6E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 10:05:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A98061697
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 08:05:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 53F1666027; Thu,  9 Jul 2020 08:05:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1EC2460C31;
	Thu,  9 Jul 2020 08:05:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 95A0460628
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 08:05:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 776DA61624; Thu,  9 Jul 2020 08:05:03 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 382C960628
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 08:05:02 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id k6so1331934wrn.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2020 01:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AanOntssHVq3a/hYYgiJ/Jv7xDYr/XO47TZ8dJKYOfg=;
 b=nbFgWuKiOxFhhqBEiOWntAf+6DRnDryx3Ms/SfnN4FEWV2zzxUQD1lW4VfLLeg24XX
 j0C+dqT64IjvMsxP5O9CPZkXtKQfvr4qIkiJkjlnIBfY9UV6BMS4AOHuI1H+9Azor+8v
 2j5LpqLglHtdzarCdZwwWA8DVM5/UHh5r7zgt73CTmzVCZVdmQh6VXDvHBgQD8rTFUgV
 Lk+1E2vi8H5Am/qtR1N68gkXt98o+ATR+2B6sFPLtmpuiaf9ESY0dvIpuoaTejVWCYlA
 JlxzkqMPCtLnqGckI7xqezyZli4dn8uZ0G5hHiw63PXgaEG5Tz4W77f9QQa8ZyTwYhht
 IR1A==
X-Gm-Message-State: AOAM532WXwdzqKMow4DanHyAe170RhtnFQKhQ7oosbBzRWtw7webzaNe
 3YqisZh6fE35sTxHu8KsqQgWzA==
X-Google-Smtp-Source: ABdhPJxO7RoS+ijbjhDgz9IHsX93bEVBPBQ5YAnvnMKF0T6MTWfNzI57IiCMoHlxMz1reth22NnRpA==
X-Received: by 2002:a5d:610a:: with SMTP id v10mr61603577wrt.108.1594281901314; 
 Thu, 09 Jul 2020 01:05:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v12sm4179709wrt.31.2020.07.09.01.05.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jul 2020 01:05:00 -0700 (PDT)
Date: Thu, 9 Jul 2020 10:04:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Daniel Stone <daniel@fooishbar.org>
Message-ID: <20200709080458.GO3278063@phenom.ffwll.local>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <CAPj87rO4mm-+sQbP07cgM8-=b6Q8Jbh5G0FsV8rwYx2hnEzPkA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPj87rO4mm-+sQbP07cgM8-=b6Q8Jbh5G0FsV8rwYx2hnEzPkA@mail.gmail.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Felix Kuehling <Felix.Kuehling@amd.com>, linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 03/25] dma-buf.rst: Document
 why idenfinite fences are a bad idea
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

T24gVGh1LCBKdWwgMDksIDIwMjAgYXQgMDg6MzY6NDNBTSArMDEwMCwgRGFuaWVsIFN0b25lIHdy
b3RlOgo+IEhpLAo+IAo+IE9uIFR1ZSwgNyBKdWwgMjAyMCBhdCAyMToxMywgRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JvdGU6Cj4gPiBDb21lcyB1cCBldmVyeSBmZXcg
eWVhcnMsIGdldHMgc29tZXdoYXQgdGVkaW91cyB0byBkaXNjdXNzLCBsZXQncwo+ID4gd3JpdGUg
dGhpcyBkb3duIG9uY2UgYW5kIGZvciBhbGwuCj4gCj4gVGhhbmtzIGZvciB3cml0aW5nIHRoaXMg
dXAhIEkgd29uZGVyIGlmIGFueSBvZiB0aGUgbm90ZXMgZnJvbSBteSByZXBseQo+IHRvIHRoZSBw
cmV2aW91cy12ZXJzaW9uIHRocmVhZCB3b3VsZCBiZSBoZWxwZnVsIHRvIG1vcmUgZXhwbGljaXRs
eQo+IGVuY29kZSB0aGUgY2Fycm90IG9mIGRtYS1mZW5jZSdzIHBvc2l0aXZlIGd1YXJhbnRlZXMs
IHJhdGhlciB0aGFuIGp1c3QKPiB0aGUgc3RpY2sgb2YgJ2Rvbid0IGRvIHRoaXMnLiA7KSBFaXRo
ZXIgd2F5LCB0aGlzIGlzOgoKSSB0aGluayB0aGUgY2Fycm90IHNob3VsZCBnbyBpbnRvIHRoZSBp
bnRybyBzZWN0aW9uIGZvciBkbWEtZmVuY2UsIHRoaXMKc2VjdGlvbiBoZXJlIGlzIHZlcnkgbXVj
aCBqdXN0IHRoZSAiZG9uJ3QgZG8gdGhpcyIgcGFydC4gVGhlIHByZXZpb3VzCnBhdGNoZXMgaGF2
ZSBhbiBhdHRlbXB0IGF0IGVuY29kaW5nIHRoaXMgYSBiaXQsIG1heWJlIHNlZSB3aGV0aGVyIHRo
ZXJlJ3MKYSBwbGFjZSBmb3IgeW91ciByZXBseSAob3IgcGFydHMgb2YgaXQpIHRvIGZpdD8KCj4g
QWNrZWQtYnk6IERhbmllbCBTdG9uZSA8ZGFuaWVsc0Bjb2xsYWJvcmEuY29tPgo+IAo+ID4gV2hh
dCBJJ20gbm90IHN1cmUgYWJvdXQgaXMgd2hldGhlciB0aGUgdGV4dCBzaG91bGQgYmUgbW9yZSBl
eHBsaWNpdCBpbgo+ID4gZmxhdCBvdXQgbWFuZGF0aW5nIHRoZSBhbWRrZmQgZXZpY3Rpb24gZmVu
Y2VzIGZvciBsb25nIHJ1bm5pbmcgY29tcHV0ZQo+ID4gd29ya2xvYWRzIG9yIHdvcmtsb2FkcyB3
aGVyZSB1c2Vyc3BhY2UgZmVuY2luZyBpcyBhbGxvd2VkLgo+IAo+IC4uLiBvciB3aGV0aGVyIHdl
IGp1c3Qgc2F5IHRoYXQgeW91IGNhbiBuZXZlciB1c2UgZG1hLWZlbmNlIGluCj4gY29uanVuY3Rp
b24gd2l0aCB1c2VycHRyLgoKVWggdXNlcnB0ciBpcyBlbnRpcmVseSBkaWZmZXJlbnQgdGhpbmcu
IFRoYXQgb25lIGlzIG9rLiBJdCdzIHVzZXJwc2FjZQpmZW5jZXMgb3IgZ3B1IGZ1dGV4ZXMgb3Ig
ZnV0dXJlIGZlbmNlcyBvciB3aGF0ZXZlciB3ZSB3YW50IHRvIGNhbGwgdGhlbS4KT3IgaXMgdGhl
cmUgc29tZSBvdGhlciBjb25mdXNpb24gaGVyZT8uCi1EYW5pZWwKCgo+IAo+IENoZWVycywKPiBE
YW5pZWwKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3Jh
dGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
