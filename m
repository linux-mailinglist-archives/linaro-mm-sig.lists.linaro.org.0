Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B79B5219F2A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:41:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DEC1066027
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:40:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CAABE6606D; Thu,  9 Jul 2020 11:40:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 943FA66538;
	Thu,  9 Jul 2020 11:34:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F165F664EC
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 14:15:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D8A196650A; Thu, 11 Jun 2020 14:15:18 +0000 (UTC)
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by lists.linaro.org (Postfix) with ESMTPS id 0AF97664EC
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 14:15:18 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id c12so5631327qkk.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 07:15:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KdY4CqOeXBwEiWOcFlqbqG5is4zfH8IsaBHV/GBHIHQ=;
 b=SN7rt4g0AYsH/t1+kLbxA8LtHl8nVm0oevN4laZFIpHb+pqOHHe8p5vIOKG6ccWWbP
 wWwej1qVzJ1PPbvPJiAOvaF3iiJZjNg0M8kF8SIVIssIMc9Vwd6XGewc0ZBF2yqgAeQK
 EW9hwRZTFA5sS+yfpEtwupi9EAIN3DaKA2rOWKa2EmFTAQO00hPADakn/HngXRX2Yxxh
 bjFA/7CwTGxE8ABbxwlNVFdLEI8TnPcQegCiwh8eJOo2TdpOPe9nSGq1St4VfiWKAhf2
 Aq1OuHWwO7lSVb1u0fkDtwTTFR9d1kdZMl3XQkZdXI4Cs6OHVfK3osMYGSs/b3Y5purW
 t+ug==
X-Gm-Message-State: AOAM5325BHR1oMrip5MvgMwa3Titzx9Npmq6NRuHMgMFXOgRBpQ9CIJG
 OPRFe2XyZ4J31EvAopvDUcZ53wcOhLw=
X-Google-Smtp-Source: ABdhPJwayNj1HFNzuKaP5QQLXWWEv6Z+gHXsBE1qPL3LYHDQquNuTclWXHUZlWr93wqBBawpSND6wg==
X-Received: by 2002:ae9:efc2:: with SMTP id d185mr8655279qkg.177.1591884917518; 
 Thu, 11 Jun 2020 07:15:17 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id d16sm2634050qte.49.2020.06.11.07.15.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 07:15:16 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jjNz9-005wvW-Ge; Thu, 11 Jun 2020 11:15:15 -0300
Date: Thu, 11 Jun 2020 11:15:15 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Thomas =?utf-8?B?SGVsbHN0csO2bSAoSW50ZWwp?= <thomas_os@shipmail.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Message-ID: <20200611141515.GW6578@ziepe.ca>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611083430.GD20149@phenom.ffwll.local>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
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

T24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMTA6MzQ6MzBBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiA+IEkgc3RpbGwgaGF2ZSBteSBkb3VidHMgYWJvdXQgYWxsb3dpbmcgZmVuY2Ugd2Fp
dGluZyBmcm9tIHdpdGhpbiBzaHJpbmtlcnMuCj4gPiBJTU8gaWRlYWxseSB0aGV5IHNob3VsZCB1
c2UgYSB0cnl3YWl0IGFwcHJvYWNoLCBpbiBvcmRlciB0byBhbGxvdyBtZW1vcnkKPiA+IGFsbG9j
YXRpb24gZHVyaW5nIGNvbW1hbmQgc3VibWlzc2lvbiBmb3IgZHJpdmVycyB0aGF0Cj4gPiBwdWJs
aXNoIGZlbmNlcyBiZWZvcmUgY29tbWFuZCBzdWJtaXNzaW9uLiAoU2luY2UgZWFybHkgcmVzZXJ2
YXRpb24gb2JqZWN0Cj4gPiByZWxlYXNlIHJlcXVpcmVzIHRoYXQpLgo+IAo+IFllYWggaXQgaXMg
YSBiaXQgYW5ub3lpbmcsIGUuZy4gZm9yIGRybS9zY2hlZHVsZXIgSSB0aGluayB3ZSdsbCBlbmQg
dXAKPiB3aXRoIGEgbWVtcG9vbCB0byBtYWtlIHN1cmUgaXQgY2FuIGhhbmRsZSBpdCdzIGFsbG9j
YXRpb25zLgo+IAo+ID4gQnV0IHNpbmNlIGRyaXZlcnMgYXJlIGFscmVhZHkgd2FpdGluZyBmcm9t
IHdpdGhpbiBzaHJpbmtlcnMgYW5kIEkgdGFrZSB5b3VyCj4gPiB3b3JkIGZvciBITU0gcmVxdWly
aW5nIHRoaXMsCj4gCj4gWWVhaCB0aGUgYmlnIHRyb3VibGUgaXMgSE1NIGFuZCBtbXUgbm90aWZp
ZXJzLiBUaGF0J3MgdGhlIHJlYWxseSBhd2t3YXJkCj4gb25lLCB0aGUgc2hyaW5rZXIgb25lIGlz
IGEgbG90IGxlc3MgZXN0YWJsaXNoZWQuCgpJIHJlYWxseSBxdWVzdGlvbiBpZiBIVyB0aGF0IG5l
ZWRzIHNvbWV0aGluZyBsaWtlIERNQSBmZW5jZSBzaG91bGQKZXZlbiBiZSB1c2luZyBtbXUgbm90
aWZpZXJzIC0gdGhlIGJlc3QgdXNlIGlzIEhXIHRoYXQgY2FuIGZlbmNlIHRoZQpETUEgZGlyZWN0
bHkgd2l0aG91dCBoYXZpbmcgdG8gZ2V0IGludm9sdmVkIHdpdGggc29tZSBjb21tYW5kIHN0cmVh
bQpwcm9jZXNzaW5nLgoKT3IgYXQgdGhlIHZlcnkgbGVhc3QgaXQgc2hvdWxkIG5vdCBiZSBhIGdl
bmVyaWMgRE1BIGZlbmNlIGJ1dCBhCm5hcnJvd2VkIGNvbXBsZXRpb24gdGllZCBvbmx5IGludG8g
dGhlIHNhbWUgR1BVIGRyaXZlcidzIGNvbW1hbmQKY29tcGxldGlvbiBwcm9jZXNzaW5nIHdoaWNo
IHNob3VsZCBiZSBhYmxlIHRvIHByb2dyZXNzIHdpdGhvdXQKYmxvY2tpbmcuCgpUaGUgaW50ZW50
IG9mIG5vdGlmaWVycyB3YXMgbmV2ZXIgdG8gZW5kbGVzc2x5IGJsb2NrIHdoaWxlIHZhc3QKYW1v
dW50cyBvZiBTVyBkb2VzIHdvcmsuCgpHb2luZyBhcm91bmQgYW5kIHN3aXRjaGluZyBldmVyeXRo
aW5nIGluIGEgR1BVIHRvIEdGUF9BVE9NSUMgc2VlbXMKbGlrZSBiYWQgaWRlYS4KCj4gSSd2ZSBw
aW5nZWQgYSBidW5jaCBvZiBhcm1zb2MgZ3B1IGRyaXZlciBwZW9wbGUgYW5kIGFzayB0aGVtIGhv
dyBtdWNoIHRoaXMKPiBodXJ0cywgc28gdGhhdCB3ZSBoYXZlIGEgY2xlYXIgYW5zd2VyLiBPbiB4
ODYgSSBkb24ndCB0aGluayB3ZSBoYXZlIG11Y2gKPiBvZiBhIGNob2ljZSBvbiB0aGlzLCB3aXRo
IHVzZXJwdHIgaW4gYW1kIGFuZCBpOTE1IGFuZCBobW0gd29yayBpbiBub3V2ZWF1Cj4gKGJ1dCBu
b3V2ZWF1IEkgdGhpbmsgZG9lc24ndCB1c2UgZG1hX2ZlbmNlIGluIHRoZXJlKS4gCgpSaWdodCwg
bm9yIHdpbGwgUkRNQSBPRFAuIAoKSmFzb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
