Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F6E30F622
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 16:23:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85B786186A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 15:23:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 777DE6188D; Thu,  4 Feb 2021 15:23:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E69760B63;
	Thu,  4 Feb 2021 15:23:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3B6C6607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 15:23:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1822E60B63; Thu,  4 Feb 2021 15:23:06 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by lists.linaro.org (Postfix) with ESMTPS id 4CB2F607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 15:23:04 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id o10so6143298wmc.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 07:23:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=FOhHJFN1Uk3imxDHDCmlGLnl9VnriOFj98ccGjxS3EU=;
 b=cRnPUnNNJ1G3HryaRMNKDqk1PKWjeH/gaIFKzisFiPTuaLqjtpDMhsMpC7di7s31sp
 9UQcHAFMdfIu5vFwz8kVBqN+Tt5RB3ZasduZ2HFDJnZOv5kz9EfuOHQUxlxq2MHo5pUn
 dyYEHQvgYgAAdQymZx93rv76828nzgpt+fT2p1c+TV/946uVlVPpsdwDs7X+JZ9QMFYN
 wpr9LyWlWzTXuvMFIcUNUXeGzlgN4n2yX8GIEX62eSaGqNk6Td6RBtQY1xOEigs/oKEM
 KlqgjBIkXQ2azT8uE+mU48BwS7SCkDDIFMeAM0jAY/xEUA5txAxzPTYvykTExqFzmpjZ
 hiIg==
X-Gm-Message-State: AOAM531UozX5wr0QyP1fIlPepcxhJvntjAEBLsut/j1LPOHErUG2pnLX
 RO7mEDt2ZoLw7Ff6QPTVf4pw3g==
X-Google-Smtp-Source: ABdhPJzWUE8+keCZMjDw4Qd96B14poTeso3FJmwHG+VBS+pVfTYio5MuASNi3L9GB8fNZbR908SB5g==
X-Received: by 2002:a7b:c5c1:: with SMTP id n1mr6103154wmk.163.1612452183199; 
 Thu, 04 Feb 2021 07:23:03 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v6sm8776760wrx.32.2021.02.04.07.23.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Feb 2021 07:23:02 -0800 (PST)
Date: Thu, 4 Feb 2021 16:22:59 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YBwRU1nrE3mfYbWK@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 Suren Baghdasaryan <surenb@google.com>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Sandeep Patil <sspatil@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 James Jones <jajones@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>,
 Christoph Hellwig <hch@infradead.org>,
 Minchan Kim <minchan@kernel.org>, Linux MM <linux-mm@kvack.org>,
 John Stultz <john.stultz@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
 <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
 <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
 <CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com>
 <CAKMK7uETu_m+=MHyPmqBbEP__qjMF_wmr4c2BiVTPcwE8c+5Mg@mail.gmail.com>
 <CAJuCfpHC6P5cJh-1hv=vjGHCCkM6mA_p19H6tCZmCDxhTuASkQ@mail.gmail.com>
 <ced1c1be-e731-946e-e9ce-919520fe935a@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ced1c1be-e731-946e-e9ce-919520fe935a@amd.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Christoph Hellwig <hch@infradead.org>,
 Android Kernel Team <kernel-team@android.com>,
 Sandeep Patil <sspatil@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Linux MM <linux-mm@kvack.org>,
 James Jones <jajones@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Minchan Kim <minchan@kernel.org>, John Stultz <john.stultz@linaro.org>,
 Liam Mark <lmark@codeaurora.org>, Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Brian Starkey <Brian.Starkey@arm.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

T24gVGh1LCBGZWIgMDQsIDIwMjEgYXQgMDk6MTY6MzJBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAwMy4wMi4yMSB1bSAyMjo0MSBzY2hyaWViIFN1cmVuIEJhZ2hkYXNhcnlh
bjoKPiA+IFtTTklQXQo+ID4gPiA+IEhvdyBtYW55IHNlbWktdW5yZWxhdGVkIGJ1ZmZlciBhY2Nv
dW50aW5nIHNjaGVtZXMgZG9lcyBnb29nbGUgY29tZSB1cCB3aXRoPwo+ID4gPiA+IAo+ID4gPiA+
IFdlJ3JlIGF0IHRocmVlIHdpdGggdGhpcyBvbmUuCj4gPiA+ID4gCj4gPiA+ID4gQW5kIGFsc28g
d2UgX2Nhbm5vdF8gcmVxdWlyZWQgdGhhdCBhbGwgZG1hLWJ1ZnMgYXJlIGJhY2tlZCBieSBzdHJ1
Y3QKPiA+ID4gPiBwYWdlLCBzbyByZXF1aXJpbmcgc3RydWN0IHBhZ2UgdG8gbWFrZSB0aGlzIHdv
cmsgaXMgYSBuby1nby4KPiA+ID4gPiAKPiA+ID4gPiBTZWNvbmQsIHdlIGRvIG5vdCB3YW50IHRv
IGFsbCBnZXRfdXNlcl9wYWdlcyBhbmQgZnJpZW5kcyB0byB3b3JrIG9uCj4gPiA+ID4gZG1hLWJ1
ZiwgaXQgY2F1c2VzIGFsbCBraW5kcyBvZiBwYWluLiBZZXMgb24gU29DIHdoZXJlIGRtYS1idWYg
YXJlCj4gPiA+ID4gZXhjbHVzaXZlbHkgaW4gc3lzdGVtIG1lbW9yeSB5b3UgY2FuIG1heWJlIGdl
dCBhd2F5IHdpdGggdGhpcywgYnV0Cj4gPiA+ID4gZG1hLWJ1ZiBpcyBzdXBwb3NlZCB0byB3b3Jr
IGluIG1vcmUgcGxhY2VzIHRoYW4ganVzdCBBbmRyb2lkIFNvQ3MuCj4gPiA+IEkganVzdCByZWFs
aXplZCB0aGF0IHZtX2luc2VyX3BhZ2UgZG9lc24ndCBldmVuIHdvcmsgZm9yIENNQSwgaXQgd291
bGQKPiA+ID4gdXBzZXQgZ2V0X3VzZXJfcGFnZXMgcHJldHR5IGJhZGx5IC0geW91J3JlIHRyeWlu
ZyB0byBwaW4gYSBwYWdlIGluCj4gPiA+IFpPTkVfTU9WRUFCTEUgYnV0IHlvdSBjYW4ndCBtb3Zl
IGl0IGJlY2F1c2UgaXQncyByYXRoZXIgc3BlY2lhbC4KPiA+ID4gVk1fU1BFQ0lBTCBpcyBleGFj
dGx5IG1lYW50IHRvIGNhdGNoIHRoaXMgc3R1ZmYuCj4gPiBUaGFua3MgZm9yIHRoZSBpbnB1dCwg
RGFuaWVsISBMZXQgbWUgdGhpbmsgYWJvdXQgdGhlIGNhc2VzIHlvdSBwb2ludGVkIG91dC4KPiA+
IAo+ID4gSU1ITywgdGhlIGlzc3VlIHdpdGggUFNTIGlzIHRoZSBkaWZmaWN1bHR5IG9mIGNhbGN1
bGF0aW5nIHRoaXMgbWV0cmljCj4gPiB3aXRob3V0IHN0cnVjdCBwYWdlIHVzYWdlLiBJIGRvbid0
IHRoaW5rIHRoYXQgcHJvYmxlbSBiZWNvbWVzIGVhc2llcgo+ID4gaWYgd2UgdXNlIGNncm91cHMg
b3IgYW55IG90aGVyIEFQSS4gSSB3YW50ZWQgdG8gZW5hYmxlIGV4aXN0aW5nIFBTUwo+ID4gY2Fs
Y3VsYXRpb24gbWVjaGFuaXNtcyBmb3IgdGhlIGRtYWJ1ZnMga25vd24gdG8gYmUgYmFja2VkIGJ5
IHN0cnVjdAo+ID4gcGFnZXMgKHNpbmNlIHdlIGtub3cgaG93IHRoZSBoZWFwIGFsbG9jYXRlZCB0
aGF0IG1lbW9yeSksIGJ1dCBzb3VuZHMKPiA+IGxpa2UgdGhpcyB3b3VsZCBsZWFkIHRvIHByb2Js
ZW1zIHRoYXQgSSBkaWQgbm90IGNvbnNpZGVyLgo+IAo+IFllYWgsIHVzaW5nIHN0cnVjdCBwYWdl
IGluZGVlZCB3b24ndCB3b3JrLiBXZSBkaXNjdXNzZWQgdGhhdCBtdWx0aXBsZSB0aW1lcwo+IG5v
dyBhbmQgRGFuaWVsIGV2ZW4gaGFzIGEgcGF0Y2ggdG8gbWFuZ2xlIHRoZSBzdHJ1Y3QgcGFnZSBw
b2ludGVycyBpbnNpZGUKPiB0aGUgc2dfdGFibGUgb2JqZWN0IHRvIHByZXZlbnQgYWJ1c2UgaW4g
dGhhdCBkaXJlY3Rpb24uCj4gCj4gT24gdGhlIG90aGVyIGhhbmQgSSB0b3RhbGx5IGFncmVlIHRo
YXQgd2UgbmVlZCB0byBkbyBzb21ldGhpbmcgb24gdGhpcyBzaWRlCj4gd2hpY2ggZ29lcyBiZXlv
bmcgd2hhdCBjZ3JvdXBzIHByb3ZpZGUuCj4gCj4gQSBmZXcgeWVhcnMgYWdvIEkgY2FtZSB1cCB3
aXRoIHBhdGNoZXMgdG8gaW1wcm92ZSB0aGUgT09NIGtpbGxlciB0byBpbmNsdWRlCj4gcmVzb3Vy
Y2VzIGJvdW5kIHRvIHRoZSBwcm9jZXNzZXMgdGhyb3VnaCBmaWxlIGRlc2NyaXB0b3JzLiBJIHVu
Zm9ydHVuYXRlbHkKPiBjYW4ndCBmaW5kIHRoZW0gb2YgaGFuZCBhbnkgbW9yZSBhbmQgSSdtIGN1
cnJlbnRseSB0byBidXN5IHRvIGRpZyB0aGVtIHVwLgo+IAo+IEluIGdlbmVyYWwgSSB0aGluayB3
ZSBuZWVkIHRvIG1ha2UgaXQgcG9zc2libGUgdGhhdCBib3RoIHRoZSBpbiBrZXJuZWwgT09NCj4g
a2lsbGVyIGFzIHdlbGwgYXMgdXNlcnNwYWNlIHByb2Nlc3NlcyBhbmQgaGFuZGxlcnMgaGF2ZSBh
Y2Nlc3MgdG8gdGhhdCBraW5kCj4gb2YgZGF0YS4KPiAKPiBUaGUgZmRpbmZvIGFwcHJvYWNoIGFz
IHN1Z2dlc3RlZCBpbiB0aGUgb3RoZXIgdGhyZWFkIHNvdW5kcyBsaWtlIHRoZSBlYXNpZXN0Cj4g
c29sdXRpb24gdG8gbWUuCgpZZWFoIGZvciBPT00gaGFuZGxpbmcgY2dyb3VwcyBhbG9uZSBpc24n
dCBlbm91Z2ggYXMgdGhlIGludGVyZmFjZSAtIHdlCm5lZWQgdG8gbWFrZSBzdXJlIHRoYXQgb29t
IGtpbGxlciB0YWtlcyBpbnRvIGFjY291bnQgdGhlIHN5c3RlbSBtZW1vcnkKdXNhZ2UgKGlkZWFs
bHkgem9uZSBhd2FyZSwgZm9yIENNQSBwb29scykuCgpCdXQgdG8gdHJhY2sgdGhhdCB3ZSBzdGls
bCBuZWVkIHRoYXQgaW5mcmFzdHJ1Y3R1cmUgZmlyc3QgSSB0aGluay4KLURhbmllbAotLSAKRGFu
aWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Js
b2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
