Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E55F71F63B6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2020 10:35:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E99A61810
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2020 08:35:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 82E19664EC; Thu, 11 Jun 2020 08:35:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 669A261963;
	Thu, 11 Jun 2020 08:34:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0CD2C61808
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 08:34:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E726361963; Thu, 11 Jun 2020 08:34:35 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 0762F61808
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 08:34:34 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id l10so5191681wrr.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 01:34:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=QepdUMREFHwlEXMSFJDNAoF8iHTQk6RVQGlxwgtSrqY=;
 b=OETm/qQaRiPRjYS8BYXoylPhD4nq6ly+2682gSuY4Xffaq4Gda5GNjsi0VpcYPA/ho
 RtXWvkTh2th8XMJKRcV+74nunmD7QN1rdhY3y1T5aLIGixSlit93kJYnLupu87KGufEa
 ZySXU+pBtbxnxjDCOwuCmfdjHBxtNiP7KZmZ/SNy0mpA9cKsa3SsLsLqf/8AGddSASAv
 QBtjAmS0gZjQYfppJtH3q+aYAZeG1Ypffa/XxnIo8dIodhsm7LZQKFpXebX43RGljPyE
 Ej7ugKY5SUjGbEsF8xta0L8PjkmwiFZJSdsL5nzOzwwyk9Yntzzj958XPY3EOmfZvHK7
 1ezw==
X-Gm-Message-State: AOAM531pUzYY1Qt5nhtm5nrYH1/OJdNs9vXPiDS4rSMv+4m78uWCKS8h
 Og9dT3Jxutj0K8OxRPcWh4xQzA==
X-Google-Smtp-Source: ABdhPJyPA+yFpnitoMF+MT8lLFomHpWx5gnHcG6eF5i3QAznWQkNqQBZVRnRMVL64cHRAoNHAdiHsw==
X-Received: by 2002:a5d:42cd:: with SMTP id t13mr8054435wrr.355.1591864473075; 
 Thu, 11 Jun 2020 01:34:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b14sm2955283wmj.47.2020.06.11.01.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 01:34:32 -0700 (PDT)
Date: Thu, 11 Jun 2020 10:34:30 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <20200611083430.GD20149@phenom.ffwll.local>
Mail-Followup-To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?=
 <thomas_os@shipmail.org>, 
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
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

T24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMDk6MzA6MTJBTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gKEludGVsKSB3cm90ZToKPiAKPiBPbiA2LzQvMjAgMTA6MTIgQU0sIERhbmllbCBWZXR0ZXIg
d3JvdGU6Cj4gPiBUd28gaW4gb25lIGdvOgo+ID4gLSBpdCBpcyBhbGxvd2VkIHRvIGNhbGwgZG1h
X2ZlbmNlX3dhaXQoKSB3aGlsZSBob2xkaW5nIGEKPiA+ICAgIGRtYV9yZXN2X2xvY2soKS4gVGhp
cyBpcyBmdW5kYW1lbnRhbCB0byBob3cgZXZpY3Rpb24gd29ya3Mgd2l0aCB0dG0sCj4gPiAgICBz
byByZXF1aXJlZC4KPiA+IAo+ID4gLSBpdCBpcyBhbGxvd2VkIHRvIGNhbGwgZG1hX2ZlbmNlX3dh
aXQoKSBmcm9tIG1lbW9yeSByZWNsYWltIGNvbnRleHRzLAo+ID4gICAgc3BlY2lmaWNhbGx5IGZy
b20gc2hyaW5rZXIgY2FsbGJhY2tzICh3aGljaCBpOTE1IGRvZXMpLCBhbmQgZnJvbSBtbXUKPiA+
ICAgIG5vdGlmaWVyIGNhbGxiYWNrcyAod2hpY2ggYW1kZ3B1IGRvZXMsIGFuZCB3aGljaCBpOTE1
IHNvbWV0aW1lcyBhbHNvCj4gPiAgICBkb2VzLCBhbmQgcHJvYmFibHkgYWx3YXlzIHNob3VsZCwg
YnV0IHRoYXQncyBraW5kYSBhIGRlYmF0ZSkuIEFsc28KPiA+ICAgIGZvciBzdHVmZiBsaWtlIEhN
TSB3ZSByZWFsbHkgbmVlZCB0byBiZSBhYmxlIHRvIGRvIHRoaXMsIG9yIHRoaW5ncwo+ID4gICAg
Z2V0IHJlYWwgZGljZXkuCj4gPiAKPiA+IENvbnNlcXVlbmNlIGlzIHRoYXQgYW55IGNyaXRpY2Fs
IHBhdGggbmVjZXNzYXJ5IHRvIGdldCB0byBhCj4gPiBkbWFfZmVuY2Vfc2lnbmFsIGZvciBhIGZl
bmNlIG11c3QgbmV2ZXIgYSkgY2FsbCBkbWFfcmVzdl9sb2NrIG5vciBiKQo+ID4gYWxsb2NhdGUg
bWVtb3J5IHdpdGggR0ZQX0tFUk5FTC4gQWxzbyBieSBpbXBsaWNhdGlvbiBvZgo+ID4gZG1hX3Jl
c3ZfbG9jaygpLCBubyB1c2Vyc3BhY2UgZmF1bHRpbmcgYWxsb3dlZC4gVGhhdCdzIHNvbWUgc3Vw
cmVtZWx5Cj4gPiBvYm5veGlvdXMgbGltaXRhdGlvbnMsIHdoaWNoIGlzIHdoeSB3ZSBuZWVkIHRv
IHNwcmlua2xlIHRoZSByaWdodAo+ID4gYW5ub3RhdGlvbnMgdG8gYWxsIHJlbGV2YW50IHBhdGhz
Lgo+ID4gCj4gPiBUaGUgb25lIGJpZyBsb2NraW5nIGNvbnRleHQgd2UncmUgbGVhdmluZyBvdXQg
aGVyZSBpcyBtbXUgbm90aWZpZXJzLAo+ID4gYWRkZWQgaW4KPiA+IAo+ID4gY29tbWl0IDIzYjY4
Mzk1YzdjNzhhNzY0ZTg5NjNmYzE1YTdjZmQzMThiZjE4N2YKPiA+IEF1dGhvcjogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiA+IERhdGU6ICAgTW9uIEF1ZyAyNiAyMjox
NDoyMSAyMDE5ICswMjAwCj4gPiAKPiA+ICAgICAgbW0vbW11X25vdGlmaWVyczogYWRkIGEgbG9j
a2RlcCBtYXAgZm9yIGludmFsaWRhdGVfcmFuZ2Vfc3RhcnQvZW5kCj4gPiAKPiA+IHRoYXQgb25l
IGNvdmVycyBhIGxvdCBvZiBvdGhlciBjYWxsc2l0ZXMsIGFuZCBpdCdzIGFsc28gYWxsb3dlZCB0
bwo+ID4gd2FpdCBvbiBkbWEtZmVuY2VzIGZyb20gbW11IG5vdGlmaWVycy4gQnV0IHRoZXJlJ3Mg
bm8gcmVhZHktbWFkZQo+ID4gZnVuY3Rpb25zIGV4cG9zZWQgdG8gcHJpbWUgdGhpcywgc28gSSd2
ZSBsZWZ0IGl0IG91dCBmb3Igbm93Lgo+ID4gCj4gPiB2MjogQWxzbyB0cmFjayBhZ2FpbnN0IG1t
dSBub3RpZmllciBjb250ZXh0Lgo+ID4gCj4gPiB2Mzoga2VybmVsZG9jIHRvIHNwZWMgdGhlIGNy
b3NzLWRyaXZlciBjb250cmFjdC4gTm90ZSB0aGF0IGN1cnJlbnRseQo+ID4gaTkxNSB0aHJvd3Mg
aW4gYSBoYXJkLWNvZGVkIDEwcyB0aW1lb3V0IG9uIGZvcmVpZ24gZmVuY2VzIChub3Qgc3VyZQo+
ID4gd2h5IHRoYXQgd2FzIGRvbmUsIGJ1dCBpdCdzIHRoZXJlKSwgd2hpY2ggaXMgd2h5IHRoYXQg
cnVsZSBpcyB3b3JkZWQKPiA+IHdpdGggU0hPVUxEIGluc3RlYWQgb2YgTVVTVC4KPiA+IAo+ID4g
QWxzbyBzb21lIG9mIHRoZSBtbXVfbm90aWZpZXIvc2hyaW5rZXIgcnVsZXMgbWlnaHQgc3VycHJp
c2UgU29DCj4gPiBkcml2ZXJzLCBJIGhhdmVuJ3QgZnVsbHkgYXVkaXRlZCB0aGVtIGFsbC4gV2hp
Y2ggaXMgaW5mZWFzaWJsZSBhbnl3YXksCj4gPiB3ZSdsbCBuZWVkIHRvIHJ1biB0aGVtIHdpdGgg
bG9ja2RlcCBhbmQgZG1hLWZlbmNlIGFubm90YXRpb25zIGFuZCBzZWUKPiA+IHdoYXQgZ29lcyBi
b29tLgo+ID4gCj4gPiB2NDogQSBzcGVsbGluZyBmaXggZnJvbSBNaWthCj4gPiAKPiA+IENjOiBN
aWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGludGVsLmNvbT4KPiA+IENjOiBUaG9tYXMgSGVs
bHN0cm9tIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KPiA+IENjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiA+
IENjOiBsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZwo+ID4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4g
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IE1hYXJ0
ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gU2lnbmVkLW9m
Zi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+
ICAgRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0IHwgIDYgKysrKwo+ID4gICBk
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgICAgICAgICAgfCA0MSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jICAgICAgICAgICB8
ICA0ICsrKwo+ID4gICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAgICAgICAgICAgfCAgMSAr
Cj4gPiAgIDQgZmlsZXMgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKQo+IAo+IEkgc3RpbGwgaGF2
ZSBteSBkb3VidHMgYWJvdXQgYWxsb3dpbmcgZmVuY2Ugd2FpdGluZyBmcm9tIHdpdGhpbiBzaHJp
bmtlcnMuCj4gSU1PIGlkZWFsbHkgdGhleSBzaG91bGQgdXNlIGEgdHJ5d2FpdCBhcHByb2FjaCwg
aW4gb3JkZXIgdG8gYWxsb3cgbWVtb3J5Cj4gYWxsb2NhdGlvbiBkdXJpbmcgY29tbWFuZCBzdWJt
aXNzaW9uIGZvciBkcml2ZXJzIHRoYXQKPiBwdWJsaXNoIGZlbmNlcyBiZWZvcmUgY29tbWFuZCBz
dWJtaXNzaW9uLiAoU2luY2UgZWFybHkgcmVzZXJ2YXRpb24gb2JqZWN0Cj4gcmVsZWFzZSByZXF1
aXJlcyB0aGF0KS4KClllYWggaXQgaXMgYSBiaXQgYW5ub3lpbmcsIGUuZy4gZm9yIGRybS9zY2hl
ZHVsZXIgSSB0aGluayB3ZSdsbCBlbmQgdXAKd2l0aCBhIG1lbXBvb2wgdG8gbWFrZSBzdXJlIGl0
IGNhbiBoYW5kbGUgaXQncyBhbGxvY2F0aW9ucy4KCj4gQnV0IHNpbmNlIGRyaXZlcnMgYXJlIGFs
cmVhZHkgd2FpdGluZyBmcm9tIHdpdGhpbiBzaHJpbmtlcnMgYW5kIEkgdGFrZSB5b3VyCj4gd29y
ZCBmb3IgSE1NIHJlcXVpcmluZyB0aGlzLAoKWWVhaCB0aGUgYmlnIHRyb3VibGUgaXMgSE1NIGFu
ZCBtbXUgbm90aWZpZXJzLiBUaGF0J3MgdGhlIHJlYWxseSBhd2t3YXJkCm9uZSwgdGhlIHNocmlu
a2VyIG9uZSBpcyBhIGxvdCBsZXNzIGVzdGFibGlzaGVkLgoKSSBkbyB3b25kZXIgd2hldGhlciB0
aGUgbW11IG5vdGlmaWVyIGNvbnN0cmFpbnQgc2hvdWxkIG9ubHkgYmUgc2V0IHdoZW4KbW11IG5v
dGlmaWVycyBhcmUgZW5hYmxlZCwgc2luY2Ugb24gYSBidW5jaCBvZiBhcm0tc29jIGdwdSBkcml2
ZXJzIHRoYXQKc3R1ZmYganVzdCBkb2Vzbid0IG1hdHRlci4gQnV0IEkgZXhwZWN0IHRoYXQgc29v
bmVyIG9yIGxhdGVyIHRoZXNlIGFybQpncHVzIHdpbGwgc2hvdyB1cCBpbiBiaWdnZXIgYXJtIGNv
cmVzLCB3aGVyZSB5b3UgbWlnaHQgd2FudCB0byBoYXZlIGt2bQphbmQgbWF5YmUgZGV2aWNlIHZp
cnR1YWxpemF0aW9uIGFuZCBzdHVmZiwgYW5kIHRoZW4geW91IG5lZWQgbW11Cm5vdGlmaWVycy4K
ClBsdXMgaGF2aW5nIGEgdmVyeSBjbGVhciBhbmQgY29uc2lzdGVudCBjcm9zcy1kcml2ZXIgYXBp
IGNvbnRyYWN0IGlzIGltbwpiZXR0ZXIgdGhhbiBsZWF2aW5nIHRoaXMgdXAgdG8gZHJpdmVycyBh
bmQgdGhlbiBoYXZpbmcgaW5jb21wYXRpYmxlCmFzc3VtcHRpb25zLgoKSSd2ZSBwaW5nZWQgYSBi
dW5jaCBvZiBhcm1zb2MgZ3B1IGRyaXZlciBwZW9wbGUgYW5kIGFzayB0aGVtIGhvdyBtdWNoIHRo
aXMKaHVydHMsIHNvIHRoYXQgd2UgaGF2ZSBhIGNsZWFyIGFuc3dlci4gT24geDg2IEkgZG9uJ3Qg
dGhpbmsgd2UgaGF2ZSBtdWNoCm9mIGEgY2hvaWNlIG9uIHRoaXMsIHdpdGggdXNlcnB0ciBpbiBh
bWQgYW5kIGk5MTUgYW5kIGhtbSB3b3JrIGluIG5vdXZlYXUKKGJ1dCBub3V2ZWF1IEkgdGhpbmsg
ZG9lc24ndCB1c2UgZG1hX2ZlbmNlIGluIHRoZXJlKS4gSSB0aGluayBpdCdsbCB0YWtlCnVzIGEg
d2hpbGUgdG8gcmVhbGx5IGJvdHRvbSBvdXQgb24gdGhpcyBzcGVjaWZpYyBxdWVzdGlvbiBoZXJl
LgotRGFuaWVsCgoKPiAKPiBSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5o
ZWxsc3Ryb21AaW50ZWwuY29tPgo+IAo+IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5n
aW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
