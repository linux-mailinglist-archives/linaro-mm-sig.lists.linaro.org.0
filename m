Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F2226DCAF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 15:20:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB84D60DA3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 13:20:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C5E02666DC; Thu, 17 Sep 2020 13:20:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41905666D8;
	Thu, 17 Sep 2020 13:19:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 025B460DA3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 13:19:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DBD60666D8; Thu, 17 Sep 2020 13:19:48 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 4702060DA3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 13:19:46 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id z1so2058322wrt.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 06:19:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=OJz3dROXwZ4H9FjplYiHUh7ta1dm2pPiZx++Qm+gMOk=;
 b=dKbqoOnegm/BlT/7/d/6fVSiUyHEtTKucBIdG/M9id9F23WmxvimFY2667qdA5H969
 vII9Io1f53pIDtiDnZ7hCzH4baTXmj119A7SVKS7nIWmW0sHQhLd3pR9wXNPCfkQ7Rn7
 QIbYn7ta+rzUHJ/0MDcrbT/Gj18oizjKvWwdsF8kby+LxZojY0dGolWYLFuCPhq2PZpL
 Rkcbe+Y4ArRYn3L+IcKkKGrISWe/J177Viiqu4JCWl+Ty+PvnWwDRuhB55dwn10EFY+/
 Eli9Pyw7eWbjmF09/LfQ6sW1akNi/BQbX3MQXkHP+vTNvYC+OKLLQYBg+TUR1eQcC0db
 EPoQ==
X-Gm-Message-State: AOAM532L7cJnygG141pb3dzkbIStnYqxdwq3gHgC6aaPuLjOvhybKieN
 Lsm3bltMCfraRAgmKL0kk1s+Kg==
X-Google-Smtp-Source: ABdhPJwWrq6ZejmimL/ybiemi2sN/GPynbFDqZKwAC87Lkhqkhgx8buF3bHZlQuU+GRDRVJVnJpavA==
X-Received: by 2002:a5d:6b84:: with SMTP id n4mr34531077wrx.55.1600348785370; 
 Thu, 17 Sep 2020 06:19:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d2sm39644798wro.34.2020.09.17.06.19.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 06:19:44 -0700 (PDT)
Date: Thu, 17 Sep 2020 15:19:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <20200917131942.GX438822@phenom.ffwll.local>
Mail-Followup-To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?=
 <thomas_os@shipmail.org>, 
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Dave Chinner <david@fromorbit.com>, Qian Cai <cai@lca.pw>,
 linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Linux MM <linux-mm@kvack.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
References: <20200728135839.1035515-1-daniel.vetter@ffwll.ch>
 <38cbc4fb-3a88-47c4-2d6c-4d90f9be42e7@shipmail.org>
 <CAKMK7uFe-70DE5qOBJ6FwD8d_A0yZt+h5bCqA=e9QtYE1qwASQ@mail.gmail.com>
 <60f2b14f-8cef-f515-9cf5-bdbc02d9c63c@shipmail.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <60f2b14f-8cef-f515-9cf5-bdbc02d9c63c@shipmail.org>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-xfs@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Chinner <david@fromorbit.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Jason Gunthorpe <jgg@mellanox.com>,
 Qian Cai <cai@lca.pw>, linux-fsdevel@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-resv: lockdep-prime
 address_space->i_mmap_rwsem for dma-resv
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

T24gVGh1LCBKdWwgMzAsIDIwMjAgYXQgMDY6NDU6MTRQTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gKEludGVsKSB3cm90ZToKPiAKPiBPbiA3LzMwLzIwIDM6MTcgUE0sIERhbmllbCBWZXR0ZXIg
d3JvdGU6Cj4gPiBPbiBUaHUsIEp1bCAzMCwgMjAyMCBhdCAyOjE3IFBNIFRob21hcyBIZWxsc3Ry
w7ZtIChJbnRlbCkKPiA+IDx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPiA+ID4gCj4g
PiA+IE9uIDcvMjgvMjAgMzo1OCBQTSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4gPiBHUFUg
ZHJpdmVycyBuZWVkIHRoaXMgaW4gdGhlaXIgc2hyaW5rZXJzLCB0byBiZSBhYmxlIHRvIHRocm93
IG91dAo+ID4gPiA+IG1tYXAnZWQgYnVmZmVycy4gTm90ZSB0aGF0IHdlIGFsc28gbmVlZCBkbWFf
cmVzdl9sb2NrIGluIHNocmlua2VycywKPiA+ID4gPiBidXQgdGhhdCBsb29wIGlzIHJlc29sdmVk
IGJ5IHRyeWxvY2tpbmcgaW4gc2hyaW5rZXJzLgo+ID4gPiA+IAo+ID4gPiA+IFNvIGZ1bGwgaGll
cmFyY2h5IGlzIG5vdyAoaWdub3JlIHNvbWUgb2YgdGhlIG90aGVyIGJyYW5jaGVzIHdlIGFscmVh
ZHkKPiA+ID4gPiBoYXZlIHByaW1lZCk6Cj4gPiA+ID4gCj4gPiA+ID4gbW1hcF9yZWFkX2xvY2sg
LT4gZG1hX3Jlc3YgLT4gc2hyaW5rZXJzIC0+IGlfbW1hcF9sb2NrX3dyaXRlCj4gPiA+ID4gCj4g
PiA+ID4gSSBob3BlIHRoYXQncyBub3QgaW5jb25zaXN0ZW50IHdpdGggYW55dGhpbmcgbW0gb3Ig
ZnMgZG9lcywgYWRkaW5nCj4gPiA+ID4gcmVsZXZhbnQgcGVvcGxlLgo+ID4gPiA+IAo+ID4gPiBM
b29rcyBPSyB0byBtZS4gVGhlIG1hcHBpbmdfZGlydHlfaGVscGVycyBydW4gdW5kZXIgdGhlIGlf
bW1hcF9sb2NrLCBidXQKPiA+ID4gZG9uJ3QgYWxsb2NhdGUgYW55IG1lbW9yeSBBRkFJQ1QuCj4g
PiA+IAo+ID4gPiBTaW5jZSBodWdlIHBhZ2UtdGFibGUtZW50cnkgc3BsaXR0aW5nIG1heSBoYXBw
ZW4gdW5kZXIgdGhlIGlfbW1hcF9sb2NrCj4gPiA+IGZyb20gdW5tYXBfbWFwcGluZ19yYW5nZSgp
IGl0IG1pZ2h0IGJlIHdvcnRoIGZpZ3VyaW5nIG91dCBob3cgbmV3IHBhZ2UKPiA+ID4gZGlyZWN0
b3J5IHBhZ2VzIGFyZSBhbGxvY2F0ZWQsIHRob3VnaC4KPiA+IG9mYyBJJ20gbm90IGFuIG1tIGV4
cGVydCBhdCBhbGwsIGJ1dCBJIGRpZCB0cnkgdG8gc2Nyb2xsIHRocm91Z2ggYWxsCj4gPiBpX21t
YXBfbG9ja193cml0ZS9yZWFkIGNhbGxlcnMuIEZvdW5kIHRoZSBmb2xsb3dpbmc6Cj4gPiAKPiA+
IC0ga2VybmVsL2V2ZW50cy91cHJvYmVzLmMgaW4gYnVpbGRfbWFwX2luZm86Cj4gPiAKPiA+ICAg
ICAgICAgICAgICAvKgo+ID4gICAgICAgICAgICAgICAqIE5lZWRzIEdGUF9OT1dBSVQgdG8gYXZv
aWQgaV9tbWFwX3J3c2VtIHJlY3Vyc2lvbiB0aHJvdWdoCj4gPiAgICAgICAgICAgICAgICogcmVj
bGFpbS4gVGhpcyBpcyBvcHRpbWlzdGljLCBubyBoYXJtIGRvbmUgaWYgaXQgZmFpbHMuCj4gPiAg
ICAgICAgICAgICAgICovCj4gPiAKPiA+IC0gSSBnb3QgbG9zdCBpbiB0aGUgaHVnZXRsYi5jIGNv
ZGUgYW5kIGNvdWxkbid0IGNvbnZpbmNlIG15c2VsZiBpdCdzCj4gPiBub3QgYWxsb2NhdGluZyBw
YWdlIGRpcmVjdG9yaWVzIGF0IHZhcmlvdXMgbGV2ZWxzIHdpdGggc29tZXRoaW5nIGVsc2UKPiA+
IHRoYW4gR0ZQX0tFUk5FTC4KPiA+IAo+ID4gU28gbG9va3MgbGlrZSB0aGUgcmVjdXJzaW9uIGlz
IGNsZWFybHkgdGhlcmUgYW5kIGtub3duLCBidXQgdGhlCj4gPiBodWdlcGFnZSBjb2RlIGlzIHRv
byBjb21wbGV4IGFuZCBmbHlpbmcgb3ZlciBteSBoZWFkLgo+ID4gLURhbmllbAo+IAo+IE9LLCBz
byBJIGludmVydGVkIHlvdXIgYW5ub3RhdGlvbiBhbmQgcmFuIGEgbWVtb3J5IGhvZywgYW5kIGdv
dCB0aGUgYmVsb3cKPiBzcGxhdC4gU28gY2xlYXJseSB5b3VyIHByb3Bvc2VkIHJlY2xhaW0tPmlf
bW1hcF9sb2NrIGxvY2tpbmcgb3JkZXIgaXMgYW4KPiBhbHJlYWR5IGVzdGFibGlzaGVkIG9uZS4K
PiAKPiBTbwo+IAo+IFJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBpbnRlbC5jb20+CgpObyBvbmUgY29tcGxhaW5pbmcgdGhhdCB0aGlzIGlzIGEgdGVycmli
bGUgaWRlYSBhbmQgdHdvIHJldmlld3MgZnJvbQpwZW9wbGUgd2hvIGtub3cgc3R1ZmYsIHNvIEkg
d2VudCBhaGVhZCBhbmQgcHVzaGVkIHRoaXMgdG8gZHJtLW1pc2MtbmV4dC4KClRoYW5rcyBmb3Ig
dGFraW5nIGEgbG9vayBhdCB0aGlzLgotRGFuaWVsCgo+IAo+IDg8LS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gCj4gW8KgIDMwOC4zMjQ2NTRdIFdBUk5JTkc6IHBvc3NpYmxl
IGNpcmN1bGFyIGxvY2tpbmcgZGVwZW5kZW5jeSBkZXRlY3RlZAo+IFvCoCAzMDguMzI0NjU1XSA1
LjguMC1yYzIrICMxNiBOb3QgdGFpbnRlZAo+IFvCoCAzMDguMzI0NjU2XSAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBbwqAgMzA4LjMyNDY1
N10ga3N3YXBkMC85OCBpcyB0cnlpbmcgdG8gYWNxdWlyZSBsb2NrOgo+IFvCoCAzMDguMzI0NjU4
XSBmZmZmOTJhMTZmNzU4NDI4ICgmbWFwcGluZy0+aV9tbWFwX3J3c2VtKXsrKysrfS17MzozfSwg
YXQ6Cj4gcm1hcF93YWxrX2ZpbGUrMHgxYzAvMHgyZjAKPiBbwqAgMzA4LjMyNDY2M10KPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJ1dCB0YXNrIGlzIGFscmVhZHkgaG9sZGluZyBsb2Nr
Ogo+IFvCoCAzMDguMzI0NjY0XSBmZmZmZmZmZmIwOTYwMjQwIChmc19yZWNsYWltKXsrLisufS17
MDowfSwgYXQ6Cj4gX19mc19yZWNsYWltX2FjcXVpcmUrMHg1LzB4MzAKPiBbwqAgMzA4LjMyNDY2
Nl0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdoaWNoIGxvY2sgYWxyZWFkeSBkZXBl
bmRzIG9uIHRoZSBuZXcgbG9jay4KPiAKPiBbwqAgMzA4LjMyNDY2N10KPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHRoZSBleGlzdGluZyBkZXBlbmRlbmN5IGNoYWluIChpbiByZXZlcnNl
IG9yZGVyKSBpczoKPiBbwqAgMzA4LjMyNDY2N10KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0+ICMxIChmc19yZWNsYWltKXsrLisufS17MDowfToKPiBbwqAgMzA4LjMyNDY3MF3CoMKg
wqDCoMKgwqDCoCBmc19yZWNsYWltX2FjcXVpcmUrMHgzNC8weDQwCj4gW8KgIDMwOC4zMjQ2NzJd
wqDCoMKgwqDCoMKgwqAgZG1hX3Jlc3ZfbG9ja2RlcCsweDE4Ni8weDIyNAo+IFvCoCAzMDguMzI0
Njc1XcKgwqDCoMKgwqDCoMKgIGRvX29uZV9pbml0Y2FsbCsweDVkLzB4MmMwCj4gW8KgIDMwOC4z
MjQ2NzZdwqDCoMKgwqDCoMKgwqAga2VybmVsX2luaXRfZnJlZWFibGUrMHgyMjIvMHgyODgKPiBb
wqAgMzA4LjMyNDY3OF3CoMKgwqDCoMKgwqDCoCBrZXJuZWxfaW5pdCsweGEvMHgxMDcKPiBbwqAg
MzA4LjMyNDY3OV3CoMKgwqDCoMKgwqDCoCByZXRfZnJvbV9mb3JrKzB4MWYvMHgzMAo+IFvCoCAz
MDguMzI0NjgwXQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLT4gIzAgKCZtYXBwaW5n
LT5pX21tYXBfcndzZW0peysrKyt9LXszOjN9Ogo+IFvCoCAzMDguMzI0NjgyXcKgwqDCoMKgwqDC
oMKgIF9fbG9ja19hY3F1aXJlKzB4MTE5Zi8weDFmYzAKPiBbwqAgMzA4LjMyNDY4M13CoMKgwqDC
oMKgwqDCoCBsb2NrX2FjcXVpcmUrMHhhNC8weDNiMAo+IFvCoCAzMDguMzI0Njg1XcKgwqDCoMKg
wqDCoMKgIGRvd25fcmVhZCsweDJkLzB4MTEwCj4gW8KgIDMwOC4zMjQ2ODZdwqDCoMKgwqDCoMKg
wqAgcm1hcF93YWxrX2ZpbGUrMHgxYzAvMHgyZjAKPiBbwqAgMzA4LjMyNDY4N13CoMKgwqDCoMKg
wqDCoCBwYWdlX3JlZmVyZW5jZWQrMHgxMzMvMHgxNTAKPiBbwqAgMzA4LjMyNDY4OV3CoMKgwqDC
oMKgwqDCoCBzaHJpbmtfYWN0aXZlX2xpc3QrMHgxNDIvMHg2MTAKPiBbwqAgMzA4LjMyNDY5MF3C
oMKgwqDCoMKgwqDCoCBiYWxhbmNlX3BnZGF0KzB4MjI5LzB4NjIwCj4gW8KgIDMwOC4zMjQ2OTFd
wqDCoMKgwqDCoMKgwqAga3N3YXBkKzB4MjAwLzB4NDcwCj4gW8KgIDMwOC4zMjQ2OTNdwqDCoMKg
wqDCoMKgwqAga3RocmVhZCsweDExZi8weDE0MAo+IFvCoCAzMDguMzI0Njk0XcKgwqDCoMKgwqDC
oMKgIHJldF9mcm9tX2ZvcmsrMHgxZi8weDMwCj4gW8KgIDMwOC4zMjQ2OTRdCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBvdGhlciBpbmZvIHRoYXQgbWlnaHQgaGVscCB1cyBkZWJ1ZyB0
aGlzOgo+IAo+IFvCoCAzMDguMzI0Njk1XcKgIFBvc3NpYmxlIHVuc2FmZSBsb2NraW5nIHNjZW5h
cmlvOgo+IAo+IFvCoCAzMDguMzI0Njk1XcKgwqDCoMKgwqDCoMKgIENQVTDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBDUFUxCj4gW8KgIDMwOC4zMjQ2OTZdwqDCoMKgwqDC
oMKgwqAgLS0tLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0tLS0KPiBb
wqAgMzA4LjMyNDY5Nl3CoMKgIGxvY2soZnNfcmVjbGFpbSk7Cj4gW8KgIDMwOC4zMjQ2OTddIGxv
Y2soJm1hcHBpbmctPmlfbW1hcF9yd3NlbSk7Cj4gW8KgIDMwOC4zMjQ2OThdwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9jayhm
c19yZWNsYWltKTsKPiBbwqAgMzA4LjMyNDY5OV3CoMKgIGxvY2soJm1hcHBpbmctPmlfbW1hcF9y
d3NlbSk7Cj4gW8KgIDMwOC4zMjQ2OTldCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICoqKiBERUFETE9DSyAqKioKPiAKPiBbwqAgMzA4LjMyNDcwMF0gMSBsb2NrIGhlbGQgYnkga3N3
YXBkMC85ODoKPiBbwqAgMzA4LjMyNDcwMV3CoCAjMDogZmZmZmZmZmZiMDk2MDI0MCAoZnNfcmVj
bGFpbSl7Ky4rLn0tezA6MH0sIGF0Ogo+IF9fZnNfcmVjbGFpbV9hY3F1aXJlKzB4NS8weDMwCj4g
W8KgIDMwOC4zMjQ3MDJdCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGFjayBiYWNr
dHJhY2U6Cj4gW8KgIDMwOC4zMjQ3MDRdIENQVTogMSBQSUQ6IDk4IENvbW06IGtzd2FwZDAgTm90
IHRhaW50ZWQgNS44LjAtcmMyKyAjMTYKPiBbwqAgMzA4LjMyNDcwNV0gSGFyZHdhcmUgbmFtZTog
Vk13YXJlLCBJbmMuIFZNd2FyZSBWaXJ0dWFsIFBsYXRmb3JtLzQ0MEJYCj4gRGVza3RvcCBSZWZl
cmVuY2UgUGxhdGZvcm0sIEJJT1MgNi4wMCAwNy8yOS8yMDE5Cj4gW8KgIDMwOC4zMjQ3MDZdIENh
bGwgVHJhY2U6Cj4gW8KgIDMwOC4zMjQ3MTBdwqAgZHVtcF9zdGFjaysweDkyLzB4YzgKPiBbwqAg
MzA4LjMyNDcxMV3CoCBjaGVja19ub25jaXJjdWxhcisweDEyZC8weDE1MAo+IFvCoCAzMDguMzI0
NzEzXcKgIF9fbG9ja19hY3F1aXJlKzB4MTE5Zi8weDFmYzAKPiBbwqAgMzA4LjMyNDcxNV3CoCBs
b2NrX2FjcXVpcmUrMHhhNC8weDNiMAo+IFvCoCAzMDguMzI0NzE2XcKgID8gcm1hcF93YWxrX2Zp
bGUrMHgxYzAvMHgyZjAKPiBbwqAgMzA4LjMyNDcxN13CoCA/IF9fbG9ja19hY3F1aXJlKzB4Mzk0
LzB4MWZjMAo+IFvCoCAzMDguMzI0NzE5XcKgIGRvd25fcmVhZCsweDJkLzB4MTEwCj4gW8KgIDMw
OC4zMjQ3MjBdwqAgPyBybWFwX3dhbGtfZmlsZSsweDFjMC8weDJmMAo+IFvCoCAzMDguMzI0NzIx
XcKgIHJtYXBfd2Fsa19maWxlKzB4MWMwLzB4MmYwCj4gW8KgIDMwOC4zMjQ3MjJdwqAgcGFnZV9y
ZWZlcmVuY2VkKzB4MTMzLzB4MTUwCj4gW8KgIDMwOC4zMjQ3MjRdwqAgPyBfX3BhZ2Vfc2V0X2Fu
b25fcm1hcCsweDcwLzB4NzAKPiBbwqAgMzA4LjMyNDcyNV3CoCA/IHBhZ2VfZ2V0X2Fub25fdm1h
KzB4MTkwLzB4MTkwCj4gW8KgIDMwOC4zMjQ3MjZdwqAgc2hyaW5rX2FjdGl2ZV9saXN0KzB4MTQy
LzB4NjEwCj4gW8KgIDMwOC4zMjQ3MjhdwqAgYmFsYW5jZV9wZ2RhdCsweDIyOS8weDYyMAo+IFvC
oCAzMDguMzI0NzMwXcKgIGtzd2FwZCsweDIwMC8weDQ3MAo+IFvCoCAzMDguMzI0NzMxXcKgID8g
bG9ja2RlcF9oYXJkaXJxc19vbl9wcmVwYXJlKzB4ZjUvMHgxNzAKPiBbwqAgMzA4LjMyNDczM13C
oCA/IGZpbmlzaF93YWl0KzB4ODAvMHg4MAo+IFvCoCAzMDguMzI0NzM0XcKgID8gYmFsYW5jZV9w
Z2RhdCsweDYyMC8weDYyMAo+IFvCoCAzMDguMzI0NzM2XcKgIGt0aHJlYWQrMHgxMWYvMHgxNDAK
PiBbwqAgMzA4LjMyNDczN13CoCA/IGt0aHJlYWRfY3JlYXRlX3dvcmtlcl9vbl9jcHUrMHg0MC8w
eDQwCj4gW8KgIDMwOC4zMjQ3MzldwqAgcmV0X2Zyb21fZm9yaysweDFmLzB4MzAKPiAKPiAKPiAK
PiA+ID4gL1Rob21hcwo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gCgotLSAKRGFuaWVsIFZldHRl
cgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwu
Y2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
