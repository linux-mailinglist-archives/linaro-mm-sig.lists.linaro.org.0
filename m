Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EB63E55B1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Aug 2021 10:40:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08DBC65FD7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Aug 2021 08:40:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8F24B6198D; Tue, 10 Aug 2021 08:40:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B243612E7;
	Tue, 10 Aug 2021 08:40:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 20DD860A79
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 08:40:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1E554612E7; Tue, 10 Aug 2021 08:40:24 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 0E19460A79
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 08:40:22 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id b11so9011605wrx.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 01:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=cKbU9FcikmLQJ8ei5FqM01XsNg7Lhvb/CqBLRSs+e6Y=;
 b=dyIuT2n2VcPiM/RBZyvglfDmYnDB6Khh/nbdE68r8gYpY/a2NOrDaGfZLTs1W/+53t
 vXS/cZ/tC1I9/7dqHtnrmgMvWpGq9dGx95D1TIug5tn0JH7x68v/1Ix3ehVQ3mzJinRI
 GUr9/F01AqBZbk8e0i4kbq2w26FwQ6BX+66Fo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=cKbU9FcikmLQJ8ei5FqM01XsNg7Lhvb/CqBLRSs+e6Y=;
 b=rCJmZ7/ktcc9j80CHRj3tAC4rdenoZqzeWee7ei3JjA4hpnLhPHpRghLnAgML+Jqw6
 zF22FSD8aLQ9KIw3m5Jc9QlS8DnfX0RgKjdzlVoJ7yEi3UvVI8ETwYTdc3KQv3CXXAMT
 FM2n31yQh7DkEKJd6tzOWhWyb+S1qozUsJKBqV+nSJK/WLrOd/aaQVsd0xhJjEGO9Kno
 WFzAn3SelNAOz7hfBxRulJlCs93z0ywHQ8lCl1/KvF6R6lhjDWAiX0qgJRxRzBtA6J1I
 nkeknTVUh0qTNVa4iD98vz3n+zY/VNCIBOPGpIv87Wafd/nZQwSsSXbYK5tK1mB4vEai
 /3LQ==
X-Gm-Message-State: AOAM530UbaAUOLd/2PR57nbIGCi/Tf8f7cXJ6aDccXd7D3W6s/VKzkxa
 WSuKnwFmHrXWIQL8gV2EW3OWpg==
X-Google-Smtp-Source: ABdhPJza6SgqUQMLMWRHmcm7FQ9wXAO72W40L4Idi8UXF8r5IQoBj3uhgCeKhzBt6M/C31Jpx7GRDw==
X-Received: by 2002:adf:ee4e:: with SMTP id w14mr29754692wro.15.1628584821138; 
 Tue, 10 Aug 2021 01:40:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c15sm22801342wrw.93.2021.08.10.01.40.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 01:40:20 -0700 (PDT)
Date: Tue, 10 Aug 2021 10:40:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <YRI7cqWXM545iMzO@phenom.ffwll.local>
Mail-Followup-To: Sumit Semwal <sumit.semwal@linaro.org>,
 Hridya Valsaraju <hridya@google.com>,
 John Stultz <john.stultz@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
 Brian Starkey <Brian.Starkey@arm.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 lkml <linux-kernel@vger.kernel.org>,
 Android Kernel Team <kernel-team@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20210722190747.1986614-1-hridya@google.com>
 <CALAqxLVLMt7rbJBQtFBw-ikBAjKrVgfS8=Nu6NFQbp_gq1m22Q@mail.gmail.com>
 <CA+wgaPOQmY4H9n302YspKuLk9iq9vBzdWBTu19EUUsiQYTUOzQ@mail.gmail.com>
 <CAO_48GFS5SsdNCwOp6Jb+nmZJ+SdNkQkq628VhxXRGSLVeP0Yg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO_48GFS5SsdNCwOp6Jb+nmZJ+SdNkQkq628VhxXRGSLVeP0Yg@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Set allocation limit
 for system heap
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Hridya Valsaraju <hridya@google.com>, Laura Abbott <labbott@redhat.com>,
 Android Kernel Team <kernel-team@android.com>,
 Brian Starkey <Brian.Starkey@arm.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBBdWcgMTAsIDIwMjEgYXQgMDE6NTQ6NDFQTSArMDUzMCwgU3VtaXQgU2Vtd2FsIHdy
b3RlOgo+IEhpIEhyaWR5YSwKPiAKPiBBcG9sb2dpZXMgZm9yIHRoZSBkZWxheSBpbiByZXNwb25k
aW5nLgo+IAo+IE9uIFdlZCwgNCBBdWcgMjAyMSBhdCAwMzowOSwgSHJpZHlhIFZhbHNhcmFqdSA8
aHJpZHlhQGdvb2dsZS5jb20+IHdyb3RlOgo+IAo+ID4gT24gTW9uLCBBdWcgMiwgMjAyMSBhdCA3
OjE4IFBNIEpvaG4gU3R1bHR6IDxqb2huLnN0dWx0ekBsaW5hcm8ub3JnPiB3cm90ZToKPiA+ID4K
PiA+ID4gT24gVGh1LCBKdWwgMjIsIDIwMjEgYXQgMTI6MDcgUE0gSHJpZHlhIFZhbHNhcmFqdSA8
aHJpZHlhQGdvb2dsZS5jb20+Cj4gPiB3cm90ZToKPiA+ID4gPiBUaGlzIHBhdGNoIGxpbWl0cyB0
aGUgc2l6ZSBvZiB0b3RhbCBtZW1vcnkgdGhhdCBjYW4gYmUgcmVxdWVzdGVkIGluIGEKPiA+ID4g
PiBzaW5nbGUgYWxsb2NhdGlvbiBmcm9tIHRoZSBzeXN0ZW0gaGVhcC4gVGhpcyB3b3VsZCBwcmV2
ZW50IGEKPiA+ID4gPiBidWdneS9tYWxpY2lvdXMgY2xpZW50IGZyb20gZGVwbGV0aW5nIHN5c3Rl
bSBtZW1vcnkgYnkgcmVxdWVzdGluZyBmb3IKPiA+IGFuCj4gPiA+ID4gZXh0cmVtZWx5IGxhcmdl
IGFsbG9jYXRpb24gd2hpY2ggbWlnaHQgZGVzdGFiaWxpemUgdGhlIHN5c3RlbS4KPiA+ID4gPgo+
ID4gPiA+IFRoZSBsaW1pdCBpcyBzZXQgdG8gaGFsZiB0aGUgc2l6ZSBvZiB0aGUgZGV2aWNlJ3Mg
dG90YWwgUkFNIHdoaWNoIGlzCj4gPiB0aGUKPiA+ID4gPiBzYW1lIGFzIHdoYXQgd2FzIHNldCBi
eSB0aGUgZGVwcmVjYXRlZCBJT04gc3lzdGVtIGhlYXAuCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4KPiA+ID4KPiA+ID4g
U2VlbXMgc2FuZSB0byBtZSwgdW5sZXNzIGZvbGtzIGhhdmUgYmV0dGVyIHN1Z2dlc3Rpb25zIGZv
ciBhbGxvY2F0aW9uCj4gPiBsaW1pdHMuCj4gPiA+Cj4gPiA+IFJldmlld2VkLWJ5OiBKb2huIFN0
dWx0eiA8am9obi5zdHVsdHpAbGluYXJvLm9yZz4KPiA+Cj4gPiBUaGFuayB5b3UgZm9yIHRha2lu
ZyBhIGxvb2sgSm9obiEKPiA+Cj4gTG9va3MgZ29vZCB0byBtZTsgSSB3aWxsIGFwcGx5IGl0IHRv
IGRybS1taXNjIHRvZGF5LgoKUGxlYXNlIGRvbid0LCB0aGlzIGRvZXNuJ3QgcmVhbGx5IHNvbHZl
IGFueXRoaW5nOgotIGl0J3MgZWFzeSB0byBieXBhc3MsIGp1c3QgYWxsb2NhdGUgbW9yZSBidWZm
ZXJzIHRvIGdldCBvdmVyIHRoZSBsaW1pdAotIHJlc291cmNlIGxpbWl0IHBsYW4gaXMgY2dyb3Vw
cywgbm90IGhhbmQtcm9sbGVkIGxpbWl0cyBpbiBldmVyeQogIGFsbG9jYXRvcgotIHRoZSB0dG0g
Im1heCBoYWxmIG9mIHN5c3RlbSBtZW1vcnkiIGlzIGZvciBwaW5uZWQgbWVtb3J5LCB0byB3b3Jr
IGFyb3VuZAogIGxvY2tpbmcgaW52ZXJzaW9uIGlzc3VlcyBiZXR3ZWVuIGRtYV9yZXN2X2xvY2sg
YW5kIGNvcmUgbW0gc2hyaW5rZXJzLiBJdAogIGRvZXMgbm90IGFjdHVhbGx5IGltcG9zZSBhbiBv
dmVyYWxsIGFsbG9jYXRpb24gbGltaXQsIHlvdSBjYW4gYWxsb2NhdGUKICB0dG0gYm8gdW50aWwg
eW91ciBlbnRpcmUgbWVtb3J5IChhbmQgc3dhcCkgYXJlIGZ1bGwuIENocmlzdGlhbiBLw7ZuaWcg
aGFzCiAgbWVyZ2VkIGEgcGF0Y2ggc2V0IHRvIGxpZnQgdGhpcyBieSByZXdvcmtpbmcgdGhlIHNo
cmlua2VyIGludGVyYWN0aW9uLAogIGJ1dCBpdCBoYWQgdG8gYmUgcmV2ZXJ0ZWQgYWdhaW4gYmVj
YXVzZSBvZiBzb21lIGZhbGxvdXQgSSBjYW4ndCByZW1lbWJlcgogIG9mZmhhbmQuIGRtYV9yZXN2
X2xvY2sgdnMgc2hyaW5rZXJzIGlzIHZlcnkgdHJpY2t5LgoKU28gaWYgeW91IHdhbnQgcmVzb3Vy
Y2UgbGltaXRzIHRoZW4geW91IHJlYWxseSB3YW50IGNncm91cHMgaGVyZS4KCkNoZWVycywgRGFu
aWVsCgo+IAo+IAo+ID4KPiA+IFJlZ2FyZHMsCj4gPiBIcmlkeWEKPiA+Cj4gPiA+Cj4gPiA+IHRo
YW5rcwo+ID4gPiAtam9obgo+ID4KPiBCZXN0LAo+IFN1bWl0Lgo+IAo+IC0tIAo+IFRoYW5rcyBh
bmQgcmVnYXJkcywKPiAKPiBTdW1pdCBTZW13YWwgKGhlIC8gaGltKQo+IFRlY2ggTGVhZCAtIExD
RywgVmVydGljYWwgVGVjaG5vbG9naWVzCj4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29m
dHdhcmUgZm9yIEFSTSBTb0NzCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
