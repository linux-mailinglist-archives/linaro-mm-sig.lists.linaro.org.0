Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1FC219F99
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:07:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54B5966034
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:07:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 42965664F9; Thu,  9 Jul 2020 12:07:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB6F166707;
	Thu,  9 Jul 2020 11:34:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7DFF0665BB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 19:55:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6D182665BF; Fri, 19 Jun 2020 19:55:40 +0000 (UTC)
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by lists.linaro.org (Postfix) with ESMTPS id 650C1665BB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 19:55:39 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id d27so8142427qtg.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 12:55:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iG/5poalED/7VvSow3wimfYmMiRP/QtWwEKtwUawqmQ=;
 b=Py/TmItkKbVlt6BxbpDovoPTieYdzoNRRaGlHJbFfyZTQFiWK032JlJdegv39m9RoK
 Qb0+8kGWB7aky4xXKmekVOOCHj2AgetIFMcBz6Rc/NU5UwNR+EG0O3xTNG4wInok75Di
 AT8oUzpsLczY90dd7o+WHcd9ou9aioJhjqhXn5mUqSpAh/ZdIpK9Q0jBY86FM7Ijl8O7
 jMscR5/8JBJmSiUyjQQHoYaLMzNZCGRRoY54VOuWQJimhEr5Oq97aTbaKHnBhMNWIUSn
 9czc4PlpKOjF/8WS2n7tSo7cncfkhP/72k4PPkSoUqTqxBFcCWP20cOUmVb6NJwz79/l
 c6Cg==
X-Gm-Message-State: AOAM533qBL4sulwyCUCBwO2WHuEQpnw90/Fc/lzLfCDMK1ykeBsXV3eI
 uVQ3T/Mz8qKW28xATx3oBudTTA==
X-Google-Smtp-Source: ABdhPJyHrX1Mu0x40IEM5APsAGFiOIM0Ueh1NwUrby9aTJ1iJ4sadbDDvULedBTEjFxxXMxRl6BLIg==
X-Received: by 2002:ac8:4143:: with SMTP id e3mr5021341qtm.28.1592596538972;
 Fri, 19 Jun 2020 12:55:38 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id l127sm620014qkc.117.2020.06.19.12.55.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 12:55:38 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jmN6w-00B0jt-2Q; Fri, 19 Jun 2020 16:55:38 -0300
Date: Fri, 19 Jun 2020 16:55:38 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Felix Kuehling <felix.kuehling@amd.com>
Message-ID: <20200619195538.GT6578@ziepe.ca>
References: <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
 <20200619181849.GR6578@ziepe.ca>
 <56008d64-772d-5757-6136-f20591ef71d2@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56008d64-772d-5757-6136-f20591ef71d2@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <jglisse@redhat.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDM6NDg6NDlQTSAtMDQwMCwgRmVsaXggS3VlaGxpbmcg
d3JvdGU6Cj4gQW0gMjAyMC0wNi0xOSB1bSAyOjE4IHAubS4gc2NocmllYiBKYXNvbiBHdW50aG9y
cGU6Cj4gPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAwMjowOTozNVBNIC0wNDAwLCBKZXJvbWUg
R2xpc3NlIHdyb3RlOgo+ID4+IE9uIEZyaSwgSnVuIDE5LCAyMDIwIGF0IDAyOjIzOjA4UE0gLTAz
MDAsIEphc29uIEd1bnRob3JwZSB3cm90ZToKPiA+Pj4gT24gRnJpLCBKdW4gMTksIDIwMjAgYXQg
MDY6MTk6NDFQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+Pj4KPiA+Pj4+IFRoZSBt
YWRuZXNzIGlzIG9ubHkgdGhhdCBkZXZpY2UgQidzIG1tdSBub3RpZmllciBtaWdodCBuZWVkIHRv
IHdhaXQKPiA+Pj4+IGZvciBmZW5jZV9CIHNvIHRoYXQgdGhlIGRtYSBvcGVyYXRpb24gZmluaXNo
ZXMuIFdoaWNoIGluIHR1cm4gaGFzIHRvCj4gPj4+PiB3YWl0IGZvciBkZXZpY2UgQSB0byBmaW5p
c2ggZmlyc3QuCj4gPj4+IFNvLCBpdCBzb3VuZCwgZnVuZGFtZW50YWxseSB5b3UndmUgZ290IHRo
aXMgZ3JhcGggb2Ygb3BlcmF0aW9ucyBhY3Jvc3MKPiA+Pj4gYW4gdW5rbm93biBzZXQgb2YgZHJp
dmVycyBhbmQgdGhlIGtlcm5lbCBjYW5ub3QgaW5zZXJ0IGl0c2VsZiBpbgo+ID4+PiBkbWFfZmVu
Y2UgaGFuZCBvZmZzIHRvIHJlLXZhbGlkYXRlIGFueSBvZiB0aGUgYnVmZmVycyBpbnZvbHZlZD8K
PiA+Pj4gQnVmZmVycyB3aGljaCBieSBkZWZpbml0aW9uIGNhbm5vdCBiZSB0b3VjaGVkIGJ5IHRo
ZSBoYXJkd2FyZSB5ZXQuCj4gPj4+Cj4gPj4+IFRoYXQgcmVhbGx5IGlzIGEgcHJldHR5IGhvcnJp
YmxlIHBsYWNlIHRvIGVuZCB1cC4uCj4gPj4+Cj4gPj4+IFBpbm5pbmcgcmVhbGx5IGlzIHJpZ2h0
IGFuc3dlciBmb3IgdGhpcyBraW5kIG9mIHdvcmsgZmxvdy4gSSB0aGluawo+ID4+PiBjb252ZXJ0
aW5nIHBpbm5pbmcgdG8gbm90aWZlcnMgc2hvdWxkIG5vdCBiZSBkb25lIHVubGVzcyBub3RpZmll
cgo+ID4+PiBpbnZhbGlkYXRpb24gaXMgcmVsYXRpdmVseSBib3VuZGVkLiAKPiA+Pj4KPiA+Pj4g
SSBrbm93IHBlb3BsZSBsaWtlIG5vdGlmaWVycyBiZWNhdXNlIHRoZXkgZ2l2ZSBhIGJpdCBuaWNl
ciBwZXJmb3JtYW5jZQo+ID4+PiBpbiBzb21lIGhhcHB5IGNhc2VzLCBidXQgdGhpcyBjcmlwcGxl
cyBhbGwgdGhlIGJhZCBjYXNlcy4uCj4gPj4+Cj4gPj4+IElmIHBpbm5pbmcgZG9lc24ndCB3b3Jr
IGZvciBzb21lIHJlYXNvbiBtYXliZSB3ZSBzaG91bGQgYWRkcmVzcyB0aGF0Pwo+ID4+IE5vdGUg
dGhhdCB0aGUgZG1hIGZlbmNlIGlzIG9ubHkgdHJ1ZSBmb3IgdXNlciBwdHIgYnVmZmVyIHdoaWNo
IHByZWRhdGUKPiA+PiBhbnkgSE1NIHdvcmsgYW5kIHRodXMgd2VyZSB1c2luZyBtbXUgbm90aWZp
ZXIgYWxyZWFkeS4gWW91IG5lZWQgdGhlCj4gPj4gbW11IG5vdGlmaWVyIHRoZXJlIGJlY2F1c2Ug
b2YgZm9yayBhbmQgb3RoZXIgY29ybmVyIGNhc2VzLgo+ID4gSSB3b25kZXIgaWYgd2Ugc2hvdWxk
IHRyeSB0byBmaXggdGhlIGZvcmsgY2FzZSBtb3JlIGRpcmVjdGx5IC0gUkRNQQo+ID4gaGFzIHRo
aXMgc2FtZSBwcm9ibGVtIGFuZCBhZGRlZCBNQURWX0RPTlRGT1JLIGEgbG9uZyB0aW1lIGFnbyBh
cyBhCj4gPiBoYWNreSB3YXkgdG8gZGVhbCB3aXRoIGl0Lgo+ID4KPiA+IFNvbWUgY3JhenkgcGFn
ZSBwaW4gdGhhdCByZXNvbHZlZCBDT1cgaW4gYSB3YXkgdGhhdCBhbHdheXMga2VwdCB0aGUKPiA+
IHBoeXNpY2FsIG1lbW9yeSB3aXRoIHRoZSBtbSB0aGF0IGluaXRpYXRlZCB0aGUgcGluPwo+ID4K
PiA+IChpc24ndCB0aGlzIGJyb2tlbiBmb3IgT19ESVJFQ1QgYXMgd2VsbCBhbnlob3c/KQo+ID4K
PiA+IEhvdyBkb2VzIG1tdV9ub3RpZmllcnMgaGVscCB0aGUgZm9yayBjYXNlIGFueWhvdz8gQmxv
Y2sgZm9yayBmcm9tCj4gPiBwcm9ncmVzc2luZz8KPiAKPiBIb3cgbXVjaCB0aGUgbW11X25vdGlm
aWVyIGJsb2NrcyBmb3JrIHByb2dyZXNzIGRlcGVuZHMsIG9uIHF1aWNrbHkgd2UKPiBjYW4gcHJl
ZW1wdCBHUFUgam9icyBhY2Nlc3NpbmcgYWZmZWN0ZWQgbWVtb3J5LiBJZiB3ZSBkb24ndCBoYXZl
Cj4gZmluZS1ncmFpbmVkIHByZWVtcHRpb24gY2FwYWJpbGl0eSAoZ3JhcGhpY3MpLCB0aGUgYmVz
dCB3ZSBjYW4gZG8gaXMKPiB3YWl0IGZvciB0aGUgR1BVIGpvYnMgdG8gY29tcGxldGUuIFdlIGNh
biBhbHNvIGRlbGF5IHN1Ym1pc3Npb24gb2YgbmV3Cj4gR1BVIGpvYnMgdG8gdGhlIHNhbWUgbWVt
b3J5IHVudGlsIHRoZSBNTVUgbm90aWZpZXIgaXMgZG9uZS4gRnV0dXJlIGpvYnMKPiB3b3VsZCB1
c2UgdGhlIG5ldyBwYWdlIGFkZHJlc3Nlcy4KPiAKPiBXaXRoIGZpbmUtZ3JhaW5lZCBwcmVlbXB0
aW9uIChST0NtIGNvbXB1dGUpLCB3ZSBjYW4gcHJlZW1wdCBHUFUgd29yayBvbgo+IHRoZSBhZmZl
Y3RlZCBhZGRlcnMgc3BhY2UgdG8gbWluaW1pemUgdGhlIGRlbGF5IHNlZW4gYnkgZm9yay4KPiAK
PiBXaXRoIHJlY292ZXJhYmxlIGRldmljZSBwYWdlIGZhdWx0cywgd2UgY2FuIGludmFsaWRhdGUg
R1BVIHBhZ2UgdGFibGUKPiBlbnRyaWVzLCBzbyBkZXZpY2UgYWNjZXNzIHRvIHRoZSBhZmZlY3Rl
ZCBwYWdlcyBzdG9wcyBpbW1lZGlhdGVseS4KPiAKPiBJbiBhbGwgY2FzZXMsIHRoZSBlbmQgcmVz
dWx0IGlzLCB0aGF0IHRoZSBkZXZpY2UgcGFnZSB0YWJsZSBnZXRzIHVwZGF0ZWQKPiB3aXRoIHRo
ZSBhZGRyZXNzIG9mIHRoZSBjb3BpZWQgcGFnZXMgYmVmb3JlIHRoZSBHUFUgYWNjZXNzZXMgdGhl
IENPVwo+IG1lbW9yeSBhZ2Fpbi5XaXRob3V0IHRoZSBNTVUgbm90aWZpZXIsIHdlJ2QgZW5kIHVw
IHdpdGggdGhlIEdQVQo+IGNvcnJ1cHRpbmcgbWVtb3J5IG9mIHRoZSBvdGhlciBwcm9jZXNzLgoK
VGhlIG1vZGVsIGhlcmUgaW4gZm9yayBoYXMgYmVlbiB3cm9uZyBmb3IgYSBsb25nIHRpbWUsIGFu
ZCBJIGRvIHdvbmRlcgpob3cgT19ESVJFQ1QgbWFuYWdlcyB0byBub3QgYmUgYnJva2VuIHRvby4u
IEkgZ3Vlc3MgdGhlIHRpbWUgd2luZG93cwp0aGVyZSBhcmUgdG9vIHNtYWxsIHRvIGdldCB1bmx1
Y2t5LgoKSWYgeW91IGhhdmUgYSB3cml0ZSBwaW4gb24gYSBwYWdlIHRoZW4gaXQgc2hvdWxkIG5v
dCBiZSBDT1cnZCBpbnRvIHRoZQpmb3JrJ2QgcHJvY2VzcyBidXQgY29waWVkIHdpdGggdGhlIG9y
aWdpbmF0aW5nIHBhZ2UgcmVtYWluaW5nIHdpdGggdGhlCm9yaWdpbmFsIG1tLiAKCkkgd29uZGVy
IGlmIHRoZXJlIGlzIHNvbWUgZWFzeSB3YXkgdG8gYWNoaXZlIHRoYXQgLSBpZiB0aGF0IGlzIHRo
ZQptYWluIHJlYXNvbiB0byB1c2Ugbm90aWZpZXJzIHRoZW4gaXQgd291bGQgYmUgYSBiZXR0ZXIg
c29sdXRpb24uCgpKYXNvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
