Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C8E219FBE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:12:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B23766553
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:12:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1B0C2665AA; Thu,  9 Jul 2020 12:12:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 538BC6671B;
	Thu,  9 Jul 2020 11:34:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1388C664E2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 00:05:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 04DF36653E; Tue, 23 Jun 2020 00:05:28 +0000 (UTC)
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by lists.linaro.org (Postfix) with ESMTPS id F0BAD664E2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 00:05:26 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id v19so11672608qtq.10
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2020 17:05:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZARmJJ7xCkdZZ2t8wNh4/tQvVIlLfUoBxGbPVnLj1no=;
 b=jm1nivzC7gS7jYPdriS7AhSmdfazjyYPnojOb1OvdeydH9QoaiktHFcxmhYTp9DEJD
 x/lwdY715RaH7XhOaHFvaGRA748DCdBuxDbQLJZl11ZYqqWXGVPMHT5Zb6rsvVzRu1fw
 gnk1FC47Lq7D+3swfTjRguuBYVuVHHYKfwnmDzlX3EEadY49l9Yob6B6rZDe1mD8rpSB
 WgIxdjiKEFepOoepsqeMvrpH/ssEjYrETURet3eCrLTrSWvI5+au/Fi56520mnVwQbL/
 pkyScZSw4cZOJ3igXhO9tIOd3qke20ey1A5vy0am+BYZAcqe5ANCkFh1mjfQ2nsZsw0+
 Z27Q==
X-Gm-Message-State: AOAM530H3eGPWJ0GONMHNQjzghWUvSTkNhhrGNvU3qBaNl1PLJOrnTOa
 rPT2HF33puAVjY/Hcvsw8evO1w==
X-Google-Smtp-Source: ABdhPJybLGEC9Vkbo3afR1e0rkiE4Uqi81y09rG7Z316acKAzGcUboScxSHByPFqPGL4yR3GT9b3Ew==
X-Received: by 2002:ac8:279a:: with SMTP id w26mr18731669qtw.309.1592870726664; 
 Mon, 22 Jun 2020 17:05:26 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
 by smtp.gmail.com with ESMTPSA id n143sm1204192qkn.94.2020.06.22.17.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 17:05:26 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jnWRJ-00CHPu-Cd; Mon, 22 Jun 2020 21:05:25 -0300
Date: Mon, 22 Jun 2020 21:05:25 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jerome Glisse <jglisse@redhat.com>
Message-ID: <20200623000525.GX6578@ziepe.ca>
References: <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
 <20200619181849.GR6578@ziepe.ca>
 <20200619201011.GB13117@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619201011.GB13117@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDQ6MTA6MTFQTSAtMDQwMCwgSmVyb21lIEdsaXNzZSB3
cm90ZToKIAo+IE1heWJlIHdlIGNhbiBhdWRpdCBob3cgdXNlciBwdHIgYnVmZmVyIGFyZSB1c2Ug
dG9kYXkgYW5kIHNlZSBpZgo+IHdlIGNhbiBkZWZpbmUgYSB1c2FnZSBwYXR0ZXJuIHRoYXQgd291
bGQgYWxsb3cgdG8gY3V0IGNvcm5lciBpbgo+IGtlcm5lbC4gRm9yIGluc3RhbmNlIHdlIGNvdWxk
IHVzZSBtbXUgbm90aWZpZXIganVzdCB0byBibG9jayBDUFUKPiBwdGUgdXBkYXRlIHdoaWxlIHdl
IGRvIEdVUCBhbmQgdGh1cyBuZXZlciB3YWl0IG9uIGRtYSBmZW5jZS4KClRoZSBETUEgZmVuY2Ug
aXMgdGhlIG1haW4gcHJvYmxlbSwgaWYgeW91IGNhbiB0aGluayBvZiBhIHdheSB0byBhdm9pZApp
dCB0aGVuIGl0IHdvdWxkIGJlIGdyZWF0IQogCj4gVGhlbiBHUFUgZHJpdmVyIGp1c3Qga2VlcCB0
aGUgR1VQIHBpbiBhcm91bmQgdW50aWwgdGhleSBhcmUgZG9uZQo+IHdpdGggdGhlIHBhZ2UuIFRo
ZXkgY2FuIGFsc28gdXNlIHRoZSBtbXUgbm90aWZpZXIgdG8ga2VlcCBhIGZsYWcKPiBzbyB0aGF0
IHRoZSBkcml2ZXIga25vdyBpZiBpdCBuZWVkcyB0byByZWRvIGEgR1VQIGllOgo+IAo+IFRoZSBu
b3RpZmllciBwYXRoOgo+ICAgIEdQVV9tbXVfbm90aWZpZXJfc3RhcnRfY2FsbGJhY2socmFuZ2Up
Cj4gICAgICAgICBncHVfbG9ja19jcHVfcGFnZXRhYmxlKHJhbmdlKQo+ICAgICAgICAgZm9yX2Vh
Y2hfYm9faW4oYm8sIHJhbmdlKSB7Cj4gICAgICAgICAgICAgYm8tPm5lZWRfZ3VwID0gdHJ1ZTsK
PiAgICAgICAgIH0KPiAgICAgICAgIGdwdV91bmxvY2tfY3B1X3BhZ2V0YWJsZShyYW5nZSkKClNv
IHNvbWUga2luZCBvZiBpbnZhbGlkYXRpb24gdHJhY2tpbmc/IEJ1dCB0aGlzIGRvZXNuJ3Qgc29s
dmUgQ09XIGFuZApGb3JrIHByb2JsZW0/Cgo+ID4gSXQgaXMga2luZCBvZiB1bnJlbGF0ZWQgdG8g
SE1NLCBpdCBqdXN0IHNob3VsZG4ndCBiZSB1c2luZyBtbXUKPiA+IG5vdGlmaWVycyB0byByZXBs
YWNlIHBhZ2UgcGlubmluZy4uCj4gCj4gV2VsbCBteSBQT1YgaXMgdGhhdCBpZiB5b3UgYWJpZGUg
YnkgcnVsZXMgSE1NIGRlZmluZWQgdGhlbiB5b3UgZG8KPiBub3QgbmVlZCB0byBwaW4gcGFnZXMu
IFRoZSBydWxlIGlzIGFzeW5jaHJvbm91cyBkZXZpY2UgcGFnZSB0YWJsZQo+IHVwZGF0ZS4KCkkg
dGhpbmsgb25lIG9mIHRoZSBobW0gcnVsZXMgaXMgdG8gbm90IGJsb2NrIG5vdGlmaWVycyBmb3Ig
YSBsb25nCnRpbWUsIHdoaWNoIHRoZXNlIHNjaGVtZSBzZWVtIHRvIHZpb2xhdGUgYWxyZWFkeS4K
ClBpbm5pbmcgZm9yIGEgbG9uZyB0aW1lIGlzIGxlc3MgYmFkIHRoYW4gYmxvY2luZyBub3RpZmll
cnMgZm9yIGEgbG9uZwp0aW1lLCBJTUhPCgpKYXNvbgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
