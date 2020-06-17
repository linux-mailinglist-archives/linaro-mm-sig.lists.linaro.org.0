Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 768E9219F4F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:51:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 977F0664EB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:51:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8983966538; Thu,  9 Jul 2020 11:51:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A33066663B;
	Thu,  9 Jul 2020 11:34:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D47D6615AE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 15:28:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C67A7664E3; Wed, 17 Jun 2020 15:28:38 +0000 (UTC)
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by lists.linaro.org (Postfix) with ESMTPS id 6EBE7615AE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 15:28:37 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id g18so1784963qtu.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 08:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YWvFZzs3KP9lJjMgLteUxWcl0AN5fcCF6bv79uFgihI=;
 b=Ey9z+46woGIRWutuuBs+/ulGe5cyyr6SG+xfiSGXZ/A+/KlnKlP8rPgxcXmZb6t4Y/
 EK2rf0x7CfV1BSMTW8Rs1lNzXAa1E+VI6F2SStxM9ccE3Igj5Y4Z9GJIp4y5UvCNFhwt
 /Y7ioEhBPNvRPpXB1GE5AXpi4Z8dOhGnARykXBta5U5IFyxAiCtFQp/JlC70bh1/YfFZ
 XAlXPJ41DtoiarozbPb1xO6aV0+dOzAQzKkylOpJtgYk3Rc5ckoOObAVBhwYiBhdbXKP
 bNQTpZiPbKpamrBQSE7Y2urc7UrvLIU7p5MidJUHW1XPxZOQI9Pp3RjNeIM+Rel9fg21
 hsog==
X-Gm-Message-State: AOAM532+svORZ5UjdzZx6iox9itPTEXHBcv3UErnNstxu/NdWnAWYJ49
 psOlQs7uW1CqSsA/xOytJmhmBA==
X-Google-Smtp-Source: ABdhPJzZDttOnjxPbTFDeZHyWDfba0peOY2A/3G4231dt912/147Xnlp7RMkFB2VSf50LuX5ZTAibw==
X-Received: by 2002:ac8:468a:: with SMTP id g10mr27323795qto.6.1592407717080; 
 Wed, 17 Jun 2020 08:28:37 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id f127sm210137qkb.55.2020.06.17.08.28.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 08:28:35 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jlZzP-009d7z-9q; Wed, 17 Jun 2020 12:28:35 -0300
Date: Wed, 17 Jun 2020 12:28:35 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200617152835.GF6578@ziepe.ca>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
 <20200616120719.GL20149@phenom.ffwll.local>
 <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime lockdep
 annotations
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

T24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMDg6NDg6NTBBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKCj4gTm93IG15IHVuZGVyc3RhbmRpbmcgZm9yIHJkbWEgaXMgdGhhdCBpZiB5b3UgZG9u
J3QgaGF2ZSBodyBwYWdlIGZhdWx0Cj4gc3VwcG9ydCwKClRoZSBSRE1BIE9EUCBmZWF0dXJlIGlz
IHJlc3RhcnRhYmxlIEhXIHBhZ2UgZmF1bHRpbmcganVzdCBsaWtlIG5vdXZlYXUKaGFzLiBUaGUg
Y2xhc3NpY2FsIE1SIGZlYXR1cmUgZG9lc24ndCBoYXZlIHRoaXMuIE9ubHkgbWx4NSBIVyBzdXBw
b3J0cwpPRFAgdG9kYXkuCgo+IEl0J3Mgb25seSBncHVzIChJIHRoaW5rKSB3aGljaCBhcmUgaW4g
dGhpcyBhd2t3YXJkIGluLWJldHdlZW4gc3BvdAo+IHdoZXJlIGR5bmFtaWMgbWVtb3J5IG1hbmFn
ZW1lbnQgcmVhbGx5IGlzIG11Y2ggd2FudGVkLCBidXQgdGhlIGh3Cj4ga2luZGEgc3Vja3MuIEFz
aWRlLCBhYm91dCAxMCsgeWVhcnMgYWdvIHdlIGhhZCBhIHNpbWlsYXIgcHJvYmxlbSB3aXRoCj4g
Z3B1IGh3LCBidXQgZm9yIHNlY3VyaXR5OiBNYW55IGdwdSBkaWRuJ3QgaGF2ZSBhbnkga2luZHMg
b2YgcGFnZQo+IHRhYmxlcyB0byBpc29sYXRlIGRpZmZlcmVudCBjbGllbnRzIGZyb20gZWFjaCBh
bm90aGVyLiBkcml2ZXJzL2dwdQo+IGZpeGVkIHRoaXMgYnkgcGFyc2luZyZ2YWxpZGF0aW5nIHdo
YXQgdXNlcnNwYWNlIHN1Ym1pdHRlZCB0byBtYWtlIHN1cmUKPiBpdCdzIG9ubHkgZXZlcnkgYWNj
ZXNzaW5nIGl0cyBvd24gYnVmZmVycy4gTW9zdCBncHVzIGhhdmUgYmVjb21lCj4gcmVhc29uYWJs
ZSBub3dhZGF5cyBhbmQgZG8gaGF2ZSBwcm9wZXIgcGVyLXByb2Nlc3MgcGFnZXRhYmxlcyAoZ3B1
Cj4gcHJvY2Vzcywgbm90IHRoZSBwYXNpZCBzdHVmZiksIGJ1dCBldmVuIHRvZGF5IHRoZXJlJ3Mg
c3RpbGwgc29tZSBvZgo+IHRoZSBvbGQgbW9kZWwgbGVmdCBpbiBzb21lIG9mIHRoZSBzbWFsbGVz
dCBTb0MuCgpCdXQgSSBzdGlsbCBkb24ndCB1bmRlcnN0YW5kIHdoeSBhIGRtYSBmZW5jZSBpcyBu
ZWVkZWQgaW5zaWRlIHRoZSBHUFUKZHJpdmVyIGl0c2VsZiBpbiB0aGUgbm90aWZpZXIuCgpTdXJl
bHkgdGhlIEdQVSBkcml2ZXIgY2FuIGJsb2NrIGFuZCByZWxlYXNlIHRoZSBub3RpZmllciBkaXJl
Y3RseSBmcm9tCml0cyBvd24gY29tbWFuZCBwcm9jZXNzaW5nIGNoYW5uZWw/CgpXaHkgZG9lcyB0
aGlzIGZlbmNlIGFuZCBhbGwgaXQgZW50YWlscyBuZWVkIHRvIGxlYWsgb3V0IGFjcm9zcwpkcml2
ZXJzPwoKSmFzb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
