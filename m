Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 135871FF607
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:01:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2951D6652F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:01:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19EC566588; Thu, 18 Jun 2020 15:01:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8209966539;
	Thu, 18 Jun 2020 15:01:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 56F836652F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:01:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4815F664FE; Thu, 18 Jun 2020 15:01:07 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 9E8EE664FE
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:01:01 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p5so6379156wrw.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 08:01:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=6OXAj9s43JL1nA3AEpbYM/MO9Qwg5Ya14IpN0gZo/as=;
 b=cEcfcXGAqZoOPhvxtTQLD9kRli3ByAdPEbFERYDur6kz4KErWp3Zm/2lqmyX8e8093
 skl6EGvX5XbKw1kbG4qzViewTaAoCJESrPuO1qUrJVVExXohquvXCRn7kKIolLsPWfKI
 DhXBM/y679L0IVzGrAO1MQXnjfj3GaqLWaedRZ4JKXaxpQNZYL35fsOiTNo1dP7X4kxz
 vtObYC/KX0+Qsm0tjp/Yf6ranw04lpXySmlrNTWZdk7wPIvc1MlzU/mVJwYubdO5i7h4
 30Gi+WHH0SBCGcHbd88Zr2Mj3kxSwKiD1Zq8OmExF8CC7pKEBIKLLhnj4PxABrWOJEDb
 XHNQ==
X-Gm-Message-State: AOAM533rNivWOa40NNtvMh8zZb55M78//C8I1H3UInJTPmwAtH/W0iJz
 8ngckUXqoxZ6m3xLm2V7nPlxdw==
X-Google-Smtp-Source: ABdhPJyrsmwBwFtG4KAk31ycwBo00rNlOYG3lXCyUqre+ViPnXoXIqRRhRlofgF6zGCpK4dB5Hv+mw==
X-Received: by 2002:adf:d841:: with SMTP id k1mr4031245wrl.93.1592492454932;
 Thu, 18 Jun 2020 08:00:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p7sm3878240wro.26.2020.06.18.08.00.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 08:00:53 -0700 (PDT)
Date: Thu, 18 Jun 2020 17:00:51 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200618150051.GS20149@phenom.ffwll.local>
Mail-Followup-To: Jason Gunthorpe <jgg@ziepe.ca>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
 <20200616120719.GL20149@phenom.ffwll.local>
 <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
 <20200617152835.GF6578@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617152835.GF6578@ziepe.ca>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
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

T24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMTI6Mjg6MzVQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIFdlZCwgSnVuIDE3LCAyMDIwIGF0IDA4OjQ4OjUwQU0gKzAyMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gCj4gPiBOb3cgbXkgdW5kZXJzdGFuZGluZyBmb3IgcmRtYSBpcyB0
aGF0IGlmIHlvdSBkb24ndCBoYXZlIGh3IHBhZ2UgZmF1bHQKPiA+IHN1cHBvcnQsCj4gCj4gVGhl
IFJETUEgT0RQIGZlYXR1cmUgaXMgcmVzdGFydGFibGUgSFcgcGFnZSBmYXVsdGluZyBqdXN0IGxp
a2Ugbm91dmVhdQo+IGhhcy4gVGhlIGNsYXNzaWNhbCBNUiBmZWF0dXJlIGRvZXNuJ3QgaGF2ZSB0
aGlzLiBPbmx5IG1seDUgSFcgc3VwcG9ydHMKPiBPRFAgdG9kYXkuCj4gCj4gPiBJdCdzIG9ubHkg
Z3B1cyAoSSB0aGluaykgd2hpY2ggYXJlIGluIHRoaXMgYXdrd2FyZCBpbi1iZXR3ZWVuIHNwb3QK
PiA+IHdoZXJlIGR5bmFtaWMgbWVtb3J5IG1hbmFnZW1lbnQgcmVhbGx5IGlzIG11Y2ggd2FudGVk
LCBidXQgdGhlIGh3Cj4gPiBraW5kYSBzdWNrcy4gQXNpZGUsIGFib3V0IDEwKyB5ZWFycyBhZ28g
d2UgaGFkIGEgc2ltaWxhciBwcm9ibGVtIHdpdGgKPiA+IGdwdSBodywgYnV0IGZvciBzZWN1cml0
eTogTWFueSBncHUgZGlkbid0IGhhdmUgYW55IGtpbmRzIG9mIHBhZ2UKPiA+IHRhYmxlcyB0byBp
c29sYXRlIGRpZmZlcmVudCBjbGllbnRzIGZyb20gZWFjaCBhbm90aGVyLiBkcml2ZXJzL2dwdQo+
ID4gZml4ZWQgdGhpcyBieSBwYXJzaW5nJnZhbGlkYXRpbmcgd2hhdCB1c2Vyc3BhY2Ugc3VibWl0
dGVkIHRvIG1ha2Ugc3VyZQo+ID4gaXQncyBvbmx5IGV2ZXJ5IGFjY2Vzc2luZyBpdHMgb3duIGJ1
ZmZlcnMuIE1vc3QgZ3B1cyBoYXZlIGJlY29tZQo+ID4gcmVhc29uYWJsZSBub3dhZGF5cyBhbmQg
ZG8gaGF2ZSBwcm9wZXIgcGVyLXByb2Nlc3MgcGFnZXRhYmxlcyAoZ3B1Cj4gPiBwcm9jZXNzLCBu
b3QgdGhlIHBhc2lkIHN0dWZmKSwgYnV0IGV2ZW4gdG9kYXkgdGhlcmUncyBzdGlsbCBzb21lIG9m
Cj4gPiB0aGUgb2xkIG1vZGVsIGxlZnQgaW4gc29tZSBvZiB0aGUgc21hbGxlc3QgU29DLgo+IAo+
IEJ1dCBJIHN0aWxsIGRvbid0IHVuZGVyc3RhbmQgd2h5IGEgZG1hIGZlbmNlIGlzIG5lZWRlZCBp
bnNpZGUgdGhlIEdQVQo+IGRyaXZlciBpdHNlbGYgaW4gdGhlIG5vdGlmaWVyLgo+IAo+IFN1cmVs
eSB0aGUgR1BVIGRyaXZlciBjYW4gYmxvY2sgYW5kIHJlbGVhc2UgdGhlIG5vdGlmaWVyIGRpcmVj
dGx5IGZyb20KPiBpdHMgb3duIGNvbW1hbmQgcHJvY2Vzc2luZyBjaGFubmVsPwo+IAo+IFdoeSBk
b2VzIHRoaXMgZmVuY2UgYW5kIGFsbCBpdCBlbnRhaWxzIG5lZWQgdG8gbGVhayBvdXQgYWNyb3Nz
Cj4gZHJpdmVycz8KClNvIDEwIHllYXJzIGFnbyB3ZSBoYWQgdGhpcyB3b3JsZCBvZiBldmVyeSBn
cHUgZHJpdmVyIGlzIGl0cyBvd24gYnVja2V0LApub3RoaW5nIGxlYWtzIG91dCB0byB0aGUgd29y
bGQuIEJ1dCB0aGUgd29ybGQgaGFkIGEgZGlmZmVyZW50IGlkZWEgaG93CmdwdXMgd2hlcmUgc3Vw
cG9zZWQgdG8gd29yaywgd2l0aCBzdHVmZiBsaWtlOgoKLSBsYXB0b3BzIHdpdGggYSBwb3dlci1l
ZmZpY2llbnQgYnV0IHNsb3cgZ3B1IGludGVncmF0ZWQgb24gdGhlIGNwdSBkaWUsCiAgYW5kIGEg
Mm5kLCBtdWNoIGZhc3RlciBidXQgYWxzbyBtb3JlIHdhc3RlZnVsIGdwdSBzZXBlcmF0ZWx5Cgot
IGFsc28gbXVsdGktZ3B1IHJlbmRlcmluZyAoYnV0IG9uIGxpbnV4IHdlIG5ldmVyIHJlYWxseSBn
b3QgYXJvdW5kIHRvCiAgZW5hYmxpbmcgdGhhdCwgYXQgbGVhc3Qgbm90IGZvciAzZCByZW5kZXJp
bmcpCgotIHNvYyBqdXN0IGJ1bmRsZSBJUCBibG9ja3MgdG9nZXRoZXIsIGFuZCB2ZXJ5IG9mdGVu
IHRoZXkgZmVlbCBsaWtlIHRoZXkKICBoYXZlIHRvIGRvIHRoZWlyIG93biBkaXNwbGF5IGJsb2Nr
IChpdCdzIGZhaXJseSBlYXN5IGFuZCBhbGxvd3MgeW91IHRvCiAga2VlcCB5b3VyIGh3IGVuZ2lu
ZWVycyBqdXN0aWZpZWQgb24gcGF5cm9sbCB3aXRoIHNvbWUgbW9yZSBwYXRlbnRzIHRoZXkKICBj
cmVhdGUpLCBidXQgYW55dGhpbmcgbW9yZSBmYW5jeSB0aGV5IGJ1eSBpbi4gU28gZnJvbSBhIGRy
aXZlcgogIGFyY2hpdGVjdHVyZSBwb3YgZXZlbiBhIHNpbmdsZSBjaGlwIHNvYyBsb29rcyBsaWtl
IGEgYnVuZGxlIG9mIGdwdXMKCkFuZCB5b3Ugd2FudCB0byBwaXBlbGluZSBhbGwgdGhpcyBiZWNh
dXNlIHBlcmZvcm1hbmNlLCBzbyB3YWl0aW5nIGluCnVzZXJzcGFjZSBmb3Igb25lIGJsb2NrIHRv
IGZpbmlzaCBiZWZvcmUgeW91IGhhbmQgaXQgZXZlciB0byB0aGUgb3RoZXIKaXNuJ3QgYSBnb29k
IGlkZWEuCgpIZW5jZSBkbWFfZmVuY2UgYXMgYSBjcm9zcyBkcml2ZXIgbGVhayB3YXMgY3JlYXRl
ZCBieSBwdWxsaW5nIHRoZSBncHUKY29tcGxldGlvbiB0cmFja2luZyBmcm9tIHRoZSBkcm0vdHRt
IGxpYnJhcnkgZm9yIG1hbmFnaW5nIHZyYW0uCgpOb3cgd2l0aCBnbG9yaW91cyBoaW5kc2lnaHQg
d2UgY291bGQgaGF2ZSBjb21lIHVwIHdpdGggYSBkaWZmZXJlbnQKYXBwcm9hY2gsIHdoZXJlIHN5
bmNocm9uaXphdGlvbiBpcyBtYW5hZ2VkIGJ5IHVzZXJzcGFjZSwga2VybmVsIGp1c3QKcHJvdmlk
ZXMgc29tZSBwcmltaXRpdmVzIChraW5kYSBsaWtlIGZ1dGV4ZXMsIGJ1dCBmb3IgZ3B1KS4gQW5k
IHRoZSBrZXJuZWwKbWFuYWdlcyByZXNpZGVuY3kgYW5kIGdwdSBwdGUgd3JhbmdsaW5nIGVudGly
ZWx5IHNlcGVyYXRlbHkuIEJ1dDoKCi0gMTAgeWVhcnMgYWdvIGRyaXZlcnMvZ3B1IHdhcyBhIGhh
bmRmdWwgb2YgcGVvcGxlIGF0IGJlc3QKCi0gd2UganVzdCBmaW5pc2hlZCB0aGUgbWFzc2l2ZSBy
ZXdyaXRlIHRvIGdldCB0byBhIGtlcm5lbCBtZW1vcnkgbWFuYWdlcgogIGFuZCBrZXJuZWwgbW9k
ZXNldHRpbmcgKG92ZXIgNSB5ZWFycyBhZnRlciB3aW5kb3dzL21hY29zKSwgc28gYXBwZXRpdGUK
ICBmb3IgbWFzc2l2ZSByZXdyaXRlcyB3YXMgbWluaW1hbC4KCkhlcmUgd2UgYXJlLCBub3cgd2l0
aCA1MCBtb3JlIGRyaXZlcnMgYnVpbHQgb24gdG9wIGFuZCBhbiBlbnRpcmUgdXNlcnNwYWNlCmVj
b3N5c3RlbSB0aGF0IHJlbGllcyBvbiBhbGwgdGhpcyAoYmVjYXVzZSB5ZXMgd2UgbWFkZSBkbWFf
ZmVuY2UgYWxzbyB0aGUKYnVpbGRpbmcgYmxvY2sgZm9yIGFsbCB0aGUgY3Jvc3MtcHJvY2VzcyB1
YXBpLCB3aHkgd291bGRuJ3Qgd2UpLgoKSSBob3BlIHRoYXQgZXhwbGFpbnMgYSBiaXQgdGhlIGhp
c3Rvcnkgb2YgaG93IGFuZCB3aHkgd2UgZW5kZWQgdXAgaGVyZS4KCk1heWJlIEkgc2hvdWxkIGRv
IGEgcGx1bWJlcnMgdGFsayBhYm91dCAiSG93IG5vdCB0byBtZW1vcnkgbWFuYWdlIC0KY2F1dGlv
dXMgdGFsZXMgZnJvbSBkcml2ZXJzL2dwdSIgSSB0aGluayB0aGVyZSdzIGEgbG90IG9mIGFyZWFz
IHdoZXJlIHRoZQpjb252ZXJzYXRpb24gdXN1YWxseSBnb2VzICJ3dGYiIC4uLiBsb25nIGV4cGxh
bmF0aW9uIG9mIGhpc3RvcnkgYW5kCnRlY2huaWNhbCByZWFzb25zIGxlYWRpbmcgdG8gYSAib2gg
ZGVhciIuIFdpdGggYSBsb3Qgb2Ygb3RoZXIgYWNjZWxlcmF0b3JzCmFuZCB0aGluZ3MgbGFuZGlu
ZyBtaWdodCBiZSBnb29kIHRvIGhhdmUgYSBsaXN0IG9mIHRoaW5ncyB0aGF0IGxvb2sKdGVtcHRp
bmcgKGJlY2F1c2UgaGV5IDIlIGZhc3RlcikgYnV0IGFyZW50IHdvcnRoIHRoZSBwYWluLgotRGFu
aWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlv
bgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
