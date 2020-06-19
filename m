Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF48219F76
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:59:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E3AB56180F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:59:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D62106183E; Thu,  9 Jul 2020 11:59:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 050FE666E8;
	Thu,  9 Jul 2020 11:34:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7E2346659B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 11:39:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 718EE665A1; Fri, 19 Jun 2020 11:39:37 +0000 (UTC)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by lists.linaro.org (Postfix) with ESMTPS id 7FCA06659B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 11:39:36 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id f18so8598423qkh.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 04:39:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5lQCYSoi4FC78xGjLBeogrhLOaSlungd8A2lT6c416A=;
 b=FknjB8gUV5dudQePfc/dPz+IlF8ZgzZjBaWqXVicvbZJ0Nh2XvMjL5rGIreqHRpi1Q
 s8Ng3zAxEwptEFmjuZ6D54Xnb/yAQQrup8xBGGu2JCnRwVqfT7n+k0wgHu4l6b9Tf0A+
 9KbHx1tycCDJdIrDx6ufs9omY/X+TB6SyLeNxyaYzwBs/MRPiHT3zlmE57f1s+ky/SIJ
 j5/cZk5ujSjh6/4nD9kw9cxl6mAG0ksq46m1RhUUb2wgAyPswWo0uaBsSsIO/kMd9NBA
 skjucnS5mktV+UwLO979mdeiWnhXMdo+Tpc3e9/VsNYUPNscp/jQQ8WukmXr0SZ2bu5G
 2RJw==
X-Gm-Message-State: AOAM5333iSiTQlIG/TYtTfwJsVhYhG21eN4oy8sikGEtGZVzNpCKfdqy
 XQ5k6gRBGZ9rr36NVE5IIJUIcA==
X-Google-Smtp-Source: ABdhPJyvT5Fp9eB5e8a01kFzBtsDczKSLoT1L7Q5mintxsSice/gNXkvAdcFjnB+DRsdXJvj32xdRg==
X-Received: by 2002:a37:6191:: with SMTP id v139mr2946071qkb.213.1592566776171; 
 Fri, 19 Jun 2020 04:39:36 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id o6sm6016053qtd.59.2020.06.19.04.39.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 04:39:35 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jmFMs-00AiVa-OZ; Fri, 19 Jun 2020 08:39:34 -0300
Date: Fri, 19 Jun 2020 08:39:34 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200619113934.GN6578@ziepe.ca>
References: <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
 <20200616120719.GL20149@phenom.ffwll.local>
 <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
 <20200617152835.GF6578@ziepe.ca>
 <20200618150051.GS20149@phenom.ffwll.local>
 <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDk6MjI6MDlBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiA+IEFzIEkndmUgdW5kZXJzdG9vZCBHUFUgdGhhdCBtZWFucyB5b3UgbmVlZCB0byBz
aG93IHRoYXQgdGhlIGNvbW1hbmRzCj4gPiBhc3NvY2lhdGVkIHdpdGggdGhlIGJ1ZmZlciBoYXZl
IGNvbXBsZXRlZC4gVGhpcyBpcyBhbGwgbG9jYWwgc3R1ZmYKPiA+IHdpdGhpbiB0aGUgZHJpdmVy
LCByaWdodD8gV2h5IHVzZSBmZW5jZSAob3RoZXIgdGhhbiBpdCBhbHJlYWR5IGV4aXN0cykKPiAK
PiBCZWNhdXNlIHRoYXQncyB0aGUgZW5kLW9mLWRtYSB0aGluZy4gQW5kIGl0J3MgY3Jvc3MtZHJp
dmVyIGZvciB0aGUKPiBhYm92ZSByZWFzb25zLCBlLmcuCj4gLSBkZXZpY2UgQSByZW5kZXJzIHNv
bWUgc3R1ZmYuIFVzZXJzcGFjZSBnZXRzIGRtYV9mZW5jZSBBIG91dCBvZiB0aGF0Cj4gKHdlbGwg
c3luY19maWxlIG9yIG9uZSBvZiB0aGUgb3RoZXIgdWFwaSBpbnRlcmZhY2VzLCBidXQgeW91IGdl
dCB0aGUKPiBpZGVhKQo+IC0gdXNlcnNwYWNlIChhY3Jvc3MgcHJvY2VzcyBvciBqdXN0IGRpZmZl
cmVudCBkcml2ZXIpIGlzc3VlcyBtb3JlCj4gcmVuZGVyaW5nIGZvciBkZXZpY2UgQiwgd2hpY2gg
ZGVwZW5kcyB1cG9uIHRoZSByZW5kZXJpbmcgZG9uZSBvbgo+IGRldmljZSBBLiBTbyBkbWFfZmVu
Y2UgQSBpcyBhbiBkZXBlbmRlbmN5IGFuZCB3aWxsIGJsb2NrIHRoaXMgZG1hCj4gb3BlcmF0aW9u
LiBVc2Vyc3BhY2UgKGFuZCB0aGUga2VybmVsKSBnZXRzIGRtYV9mZW5jZSBCIG91dCBvZiB0aGlz
Cj4gLSBiZWNhdXNlIHVuZm9ydHVuYXRlIHJlYXNvbnMsIHRoZSBzYW1lIHJlbmRlcmluZyBvbiBk
ZXZpY2UgQiBhbHNvCj4gbmVlZHMgYSB1c2VycHRyIGJ1ZmZlciwgd2hpY2ggbWVhbnMgdGhhdCBk
bWFfZmVuY2UgQiBpcyBhbHNvIHRoZSBvbmUKPiB0aGF0IHRoZSBtbXVfcmFuZ2Vfbm90aWZpZXIg
bmVlZHMgdG8gd2FpdCBvbiBiZWZvcmUgaXQgY2FuIHRlbGwgY29yZQo+IG1tIHRoYXQgaXQgY2Fu
IGdvIGFoZWFkIGFuZCByZWxlYXNlIHRob3NlIHBhZ2VzCgpJIHdhcyBhZnJhaWQgeW91J2Qgc2F5
IHRoaXMgLSB0aGlzIGlzIGNvbXBsZXRlIG1hZG5lc3MgZm9yIG90aGVyIERNQQpkZXZpY2VzIHRv
IGJvcnJvdyB0aGUgbm90aWZpZXIgaG9vayBvZiB0aGUgZmlyc3QgZGV2aWNlIQoKV2hhdCBpZiB0
aGUgZmlyc3QgZGV2aWNlIGlzIGEgcGFnZSBmYXVsdGluZyBkZXZpY2UgYW5kIGRvZXNuJ3QgY2Fs
bApkbWFfZmVuY2U/PwoKSXQgeW91IGFyZSBnb2luZyB0byB0cmVhdCB0aGluZ3MgdGhpcyB3YXkg
dGhlbiB0aGUgbW11IG5vdGlmaWVyIHJlYWxseQpuZWVkcyB0byBiZSBwYXJ0IG9mIHRoZSBzb21l
IGNvcmUgRE1BIGJ1ZiwgYW5kIG5vdCByYW5kb21seSBzcHJpbmtsZWQKaW4gZHJpdmVycwoKQnV0
IHJlYWxseSB0aGlzIGlzIHdoYXQgcGFnZSBwaW5uaW5nIGlzIHN1cHBvc2VkIHRvIGJlIHVzZWQg
Zm9yLCB0aGUKTU0gYmVoYXZpb3Igd2hlbiBpdCBibG9ja3Mgb24gYSBwaW5uZWQgcGFnZSBpcyBs
ZXNzIGludmFzaXZlIHRoYW4gaWYKaXQgc3RhbGxzIGluc2lkZSBhIG1tdSBub3RpZmllci4KCllv
dSBjYW4gbWl4IGl0LCB1c2UgbW11IG5vdGlmaWZlcnMgdG8ga2VlcCB0cmFjayBpZiB0aGUgYnVm
ZmVyIGlzCnN0aWxsIGxpdmUsIGJ1dCB3aGVuIHlvdSB3YW50IHRvIHRyaWdnZXIgRE1BIHRoZW4g
cGluIHRoZSBwYWdlcyBhbmQKa2VlcCB0aGVtIHBpbm5lZCB1bnRpbCBETUEgaXMgZG9uZS4gVGhl
IHBpbiBwcm90ZWN0cyB0aGluZ3MgKHdlbGwsCmZvcmsgaXMgc3RpbGwgYSBwcm9ibGVtKQoKRG8g
bm90IG5lZWQgdG8gd2FpdCBvbiBkbWFfZmVuY2UgaW4gbm90aWZpZXJzLgoKSmFzb24KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
