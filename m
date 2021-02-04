Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F4330FF0D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 22:05:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B67D6087D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 21:05:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2C9346188D; Thu,  4 Feb 2021 21:05:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88F6661726;
	Thu,  4 Feb 2021 21:05:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0CC04607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 21:04:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 00D8E61726; Thu,  4 Feb 2021 21:04:53 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
 [209.85.219.47])
 by lists.linaro.org (Postfix) with ESMTPS id EA151607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 20:59:28 +0000 (UTC)
Received: by mail-qv1-f47.google.com with SMTP id ew18so2441936qvb.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 12:59:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n75WBNg1x50BJcg3mKAtGr4x+uvExRbP1rZgvduFmms=;
 b=G1yvda5XYkaJUM6esBtmBjt+yJW/a63iBHKps7YBWoQF8cJHTobsN6Nz1mctn7x3UR
 UEweAp7HieQjKvEZW9CSC/aqrvnZfOacLRgttlOvFjPDK/wAZb+PxjLGOBtFnjTOIXqd
 uIAE65IqVRp+MIhw1ZvvLcEfeWBrXVow+mjnJwXkkl1HUetK1i0w9AMDTMp/feMHOC2w
 GJiS/BkrPLIp6Pok2F9g61u4iei3/oU35irAhCwErl9Zg07uP0YhuLuJdwXPRBmtuYbB
 m2tsYy2ufBxXzW90Ue27toGeEcvUb2GKUDTLGBMTYReRw/bKZee3ZvUAUiEeSXBlVxPc
 PyTA==
X-Gm-Message-State: AOAM531tIBs/3CgwZwGD1i7kglP9vsE3x1wS1z04ooODW6NtB6y/dTSf
 H/3xkC/hbhAgnt0Hns9LzFK/Ww==
X-Google-Smtp-Source: ABdhPJwZFWZ6awvFHqdJL4UUnlowU47Qi5VzIFfgn2cHYsy3nLxwm+reeVZdpy6RJAskbYGuv2tdqw==
X-Received: by 2002:a05:6214:208:: with SMTP id
 i8mr1409808qvt.31.1612472368614; 
 Thu, 04 Feb 2021 12:59:28 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-162-115-133.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.115.133])
 by smtp.gmail.com with ESMTPSA id e7sm5507808qtj.48.2021.02.04.12.59.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Feb 2021 12:59:28 -0800 (PST)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1l7lip-003bwW-ME; Thu, 04 Feb 2021 16:59:27 -0400
Date: Thu, 4 Feb 2021 16:59:27 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20210204205927.GD4718@ziepe.ca>
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
 <20210204161339.GX4718@ziepe.ca>
 <CAKMK7uEZvEEQXQeM=t-7uZEvga2GMhctp=WQgeSetG0GKTRsHA@mail.gmail.com>
 <20210204183808.GY4718@ziepe.ca>
 <CAKMK7uFBzF00zTzAE5b7PJFUfmxp5ExbSQxfcOfd_P6dPm7k9A@mail.gmail.com>
 <20210204200918.GA4718@ziepe.ca>
 <CAKMK7uEU_TJEUF2go6WRuVn+=-DSD5kRw1beJhC_1Y4HTXbYVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uEU_TJEUF2go6WRuVn+=-DSD5kRw1beJhC_1Y4HTXbYVQ@mail.gmail.com>
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

T24gVGh1LCBGZWIgMDQsIDIwMjEgYXQgMDk6MTk6NTdQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUaHUsIEZlYiA0LCAyMDIxIGF0IDk6MDkgUE0gSmFzb24gR3VudGhvcnBlIDxq
Z2dAemllcGUuY2E+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgRmViIDA0LCAyMDIxIGF0IDA4OjU5
OjU5UE0gKzAxMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPgo+ID4gPiBTbyBJIHRoaW5rIGp1
c3QgY2hlY2tpbmcgZm9yIFZNX1BGTk1BUCBhZnRlciB0aGUgdm1hIGlzIHNldCB1cCBzaG91bGQK
PiA+ID4gYmUgZW5vdWdoIHRvIGd1YXJhbnRlZSB3ZSdsbCBvbmx5IGhhdmUgcHRlX3NwZWNpYWwg
cHRlcyBpbiB0aGVyZSwKPiA+ID4gZXZlci4gQnV0IEknbSBub3Qgc3VyZSwgdGhpcyBzdHVmZiBh
bGwgaXNuJ3QgcmVhbGx5IGRvY3VtZW50ZWQgbXVjaAo+ID4gPiBhbmQgdGhlIGNvZGUgaXMgc29t
ZXRpbWVzIGEgbWF6ZSAodG8gbWUgYXQgbGVhc3QpLgo+ID4KPiA+IFllcywgdGhhdCBtYWtlcyBz
ZW5zZS4gVk1fUEZOTUFQIGFuZCAhVk1fTUlYRURNQVAgc2VlbXMgbGlrZSB0aGUgcmlnaHQKPiA+
IGNoZWNrIGFmdGVyIHRoZSBWTUEgaXMgcG9wdWxhdGVkCj4gPgo+ID4gQnV0IGhvdyBkbyB5b3Ug
c3R1ZmYgc3BlY2lhbCBwZm5zIGludG8gYSBWTUEgb3V0c2lkZSB0aGUgZmF1bHQKPiA+IGhhbmRs
ZXI/Cj4gCj4gTWFueSBkcml2ZXJzIHdlIGhhdmUgZG9uJ3QgaGF2ZSBkeW5hbWljIGJ1ZmZlciBt
YW5hZ2VtZW50IChraW5kYQo+IG92ZXJraWxsIGZvciBhIGZldyBmcmFtZWJ1ZmZlcnMgb24gYSBk
aXNwbGF5LW9ubHkgSVAgYmxvY2spLCBzbyB0aGUKPiBqdXN0IHJlbWFwX3Bmbl9yYW5nZSBvbiAt
Pm1tYXAsIGFuZCBkb24ndCBoYXZlIGEgZmF1bHQgaGFuZGxlciBhdCBhbGwuCgpyZW1hcF9wZm5f
cmFuZ2UoKSBtYWtlcyBzZW5zZSwgZG8geW91IGV4cGVjdCBkcml2ZXJzIHVzaW5nIHN0cnVjdCBw
YWdlCmJhY2tlZCBtZW1vcnkgdG8gY2FsbCB0aGF0IGFzIHdlbGw/CgpKYXNvbgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
