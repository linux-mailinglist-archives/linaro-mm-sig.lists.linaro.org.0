Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E59C1CF202
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:58:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6896561734
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:58:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5CCE9618C8; Tue, 12 May 2020 09:58:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B3CF65FB4;
	Tue, 12 May 2020 09:12:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AC0FD6601E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:12:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9D9076656E; Tue, 12 May 2020 09:12:46 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 3543E665A5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:08:51 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id m12so15963705wmc.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 02:08:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=jzP01IXQ5eGzmClfzRrzEt9a5pXaL37GUGmE/8HDFqg=;
 b=cVP2RBefDl+ZGUsMOdpfTPTcRKdnhNkqBxgNpZ11aCDWI2H/lY7T7VeEHMfxvfeaSU
 OFk+7+nAKawSPxwLh7Lkr8q7uhWtSOMHrzwIvUxdC+ulo1/lWv0Z9P+ISueiTPJaOZHh
 eaUVhtVguHBYJsChZiOwYXTBqfMPzriWhBbeRh/+MaIW5ahwpNIcCPcHwMhoKPQewXtz
 vePNVORwEjysKLCAXbXcEQb0jUlbE3m2oFGfOWsdQStHZVnGxqecFZf7EunBwhMahYsa
 YhlQkd/fWUyC8uqyCC6bpv6Qt6Lw/3UEg/3XKG41bB4iwESYBSUFlN4JNMWb7p/Ju+6Y
 IRVw==
X-Gm-Message-State: AGi0PuadaJF7ep5ywWUfVRK0Rgx+wZK9e5Hi1aOBQB+V132WRhu21euT
 ZNeUQG52LcB29vBMXUHxoFJHcw==
X-Google-Smtp-Source: APiQypIhpsRgAW4Qev4lJv2wjqsih/+HjYzRewf0be+k5nEHYH6mVDG9QApT/mcRCdYD95LJWrPJxQ==
X-Received: by 2002:a1c:b604:: with SMTP id g4mr12839616wmf.103.1589274530333; 
 Tue, 12 May 2020 02:08:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z1sm30605053wmf.15.2020.05.12.02.08.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:08:49 -0700 (PDT)
Date: Tue, 12 May 2020 11:08:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200512090847.GF206103@phenom.ffwll.local>
Mail-Followup-To: Chris Wilson <chris@chris-wilson.co.uk>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, linux-rdma@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
 <20200512085944.222637-3-daniel.vetter@ffwll.ch>
 <158927426244.15653.14406159524439944950@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158927426244.15653.14406159524439944950@build.alporthouse.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [RFC 02/17] dma-fence: basic lockdep annotations
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

T24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMTA6MDQ6MjJBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgRGFuaWVsIFZldHRlciAoMjAyMC0wNS0xMiAwOTo1OToyOSkKPiA+IERl
c2lnbiBpcyBzaW1pbGFyIHRvIHRoZSBsb2NrZGVwIGFubm90YXRpb25zIGZvciB3b3JrZXJzLCBi
dXQgd2l0aAo+ID4gc29tZSB0d2lzdHM6Cj4gPiAKPiA+IC0gV2UgdXNlIGEgcmVhZC1sb2NrIGZv
ciB0aGUgZXhlY3V0aW9uL3dvcmtlci9jb21wbGV0aW9uIHNpZGUsIHNvIHRoYXQKPiA+ICAgdGhp
cyBleHBsaWNpdCBhbm5vdGF0aW9uIGNhbiBiZSBtb3JlIGxpYmVyYWxseSBzcHJpbmtsZWQgYXJv
dW5kLgo+ID4gICBXaXRoIHJlYWQgbG9ja3MgbG9ja2RlcCBpc24ndCBnb2luZyB0byBjb21wbGFp
biBpZiB0aGUgcmVhZC1zaWRlCj4gPiAgIGlzbid0IG5lc3RlZCB0aGUgc2FtZSB3YXkgdW5kZXIg
YWxsIGNpcmN1bXN0YW5jZXMsIHNvIEFCQkEgZGVhZGxvY2tzCj4gPiAgIGFyZSBvay4gV2hpY2gg
dGhleSBhcmUsIHNpbmNlIHRoaXMgaXMgYW4gYW5ub3RhdGlvbiBvbmx5Lgo+ID4gCj4gPiAtIFdl
J3JlIHVzaW5nIG5vbi1yZWN1cnNpdmUgbG9ja2RlcCByZWFkIGxvY2sgbW9kZSwgc2luY2UgaW4g
cmVjdXJzaXZlCj4gPiAgIHJlYWQgbG9jayBtb2RlIGxvY2tkZXAgZG9lcyBub3QgY2F0Y2ggcmVh
ZCBzaWRlIGhhemFyZHMuIEFuZCB3ZQo+ID4gICBfdmVyeV8gbXVjaCB3YW50IHJlYWQgc2lkZSBo
YXphcmRzIHRvIGJlIGNhdWdodC4gRm9yIGZ1bGwgZGV0YWlscyBvZgo+ID4gICB0aGlzIGxpbWl0
YXRpb24gc2VlCj4gPiAKPiA+ICAgY29tbWl0IGU5MTQ5ODU4OTc0NjA2NWUzYWU5NWQ5YTAwYjA2
OGU1MjVlZWMzNGYKPiA+ICAgQXV0aG9yOiBQZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVh
ZC5vcmc+Cj4gPiAgIERhdGU6ICAgV2VkIEF1ZyAyMyAxMzoxMzoxMSAyMDE3ICswMjAwCj4gPiAK
PiA+ICAgICAgIGxvY2tpbmcvbG9ja2RlcC9zZWxmdGVzdHM6IEFkZCBtaXhlZCByZWFkLXdyaXRl
IEFCQkEgdGVzdHMKPiA+IAo+ID4gLSBUbyBhbGxvdyBuZXN0aW5nIG9mIHRoZSByZWFkLXNpZGUg
ZXhwbGljaXQgYW5ub3RhdGlvbnMgd2UgZXhwbGljaXRseQo+ID4gICBrZWVwIHRyYWNrIG9mIHRo
ZSBuZXN0aW5nLiBsb2NrX2lzX2hlbGQoKSBhbGxvd3MgdXMgdG8gZG8gdGhhdC4KPiA+IAo+ID4g
LSBUaGUgd2FpdC1zaWRlIGFubm90YXRpb24gaXMgYSB3cml0ZSBsb2NrLCBhbmQgZW50aXJlbHkg
ZG9uZSB3aXRoaW4KPiA+ICAgZG1hX2ZlbmNlX3dhaXQoKSBmb3IgZXZlcnlvbmUgYnkgZGVmYXVs
dC4KPiA+IAo+ID4gLSBUbyBiZSBhYmxlIHRvIGZyZWVseSBhbm5vdGF0ZSBoZWxwZXIgZnVuY3Rp
b25zIEkgd2FudCB0byBtYWtlIGl0IG9rCj4gPiAgIHRvIGNhbGwgZG1hX2ZlbmNlX2JlZ2luL2Vu
ZF9zaWduYWxsaW5nIGZyb20gc29mdC9oYXJkaXJxIGNvbnRleHQuCj4gPiAgIEZpcnN0IGF0dGVt
cHQgd2FzIHVzaW5nIHRoZSBoYXJkaXJxIGxvY2tpbmcgY29udGV4dCBmb3IgdGhlIHdyaXRlCj4g
PiAgIHNpZGUgaW4gbG9ja2RlcCwgYnV0IHRoaXMgZm9yY2VzIGFsbCBub3JtYWwgc3BpbmxvY2tz
IG5lc3RlZCB3aXRoaW4KPiA+ICAgZG1hX2ZlbmNlX2JlZ2luL2VuZF9zaWduYWxsaW5nIHRvIGJl
IHNwaW5sb2Nrcy4gVGhhdCBib2xsb2Nrcy4KPiA+IAo+ID4gICBUaGUgYXBwcm9hY2ggbm93IGlz
IHRvIHNpbXBsZSBjaGVjayBpbl9hdG9taWMoKSwgYW5kIGZvciB0aGVzZSBjYXNlcwo+ID4gICBl
bnRpcmVseSByZWx5IG9uIHRoZSBtaWdodF9zbGVlcCgpIGNoZWNrIGluIGRtYV9mZW5jZV93YWl0
KCkuIFRoYXQKPiA+ICAgd2lsbCBjYXRjaCBhbnkgd3JvbmcgbmVzdGluZyBhZ2FpbnN0IHNwaW5s
b2NrcyBmcm9tIHNvZnQvaGFyZGlycQo+ID4gICBjb250ZXh0cy4KPiA+IAo+ID4gVGhlIGlkZWEg
aGVyZSBpcyB0aGF0IGV2ZXJ5IGNvZGUgcGF0aCB0aGF0J3MgY3JpdGljYWwgZm9yIGV2ZW50dWFs
bHkKPiA+IHNpZ25hbGxpbmcgYSBkbWFfZmVuY2Ugc2hvdWxkIGJlIGFubm90YXRlZCB3aXRoCj4g
PiBkbWFfZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcuIFRoZSBhbm5vdGF0aW9uIGlkZWFsbHkg
c3RhcnRzIHJpZ2h0Cj4gPiBhZnRlciBhIGRtYV9mZW5jZSBpcyBwdWJsaXNoZWQgKGFkZGVkIHRv
IGEgZG1hX3Jlc3YsIGV4cG9zZWQgYXMgYQo+ID4gc3luY19maWxlIGZkLCBhdHRhY2hlZCB0byBh
IGRybV9zeW5jb2JqIGZkLCBvciBhbnl0aGluZyBlbHNlIHRoYXQKPiA+IG1ha2VzIHRoZSBkbWFf
ZmVuY2UgdmlzaWJsZSB0byBvdGhlciBrZXJuZWwgdGhyZWFkcyksIHVwIHRvIGFuZAo+ID4gaW5j
bHVkaW5nIHRoZSBkbWFfZmVuY2Vfd2FpdCgpLiBFeGFtcGxlcyBhcmUgaXJxIGhhbmRsZXJzLCB0
aGUKPiA+IHNjaGVkdWxlciBydCB0aHJlYWRzLCB0aGUgdGFpbCBvZiBleGVjYnVmIChhZnRlciB0
aGUgY29ycmVzcG9uZGluZwo+ID4gZmVuY2VzIGFyZSB2aXNpYmxlKSwgYW55IHdvcmtlcnMgdGhh
dCBlbmQgdXAgc2lnbmFsbGluZyBkbWFfZmVuY2VzIGFuZAo+ID4gcmVhbGx5IGFueXRoaW5nIGVs
c2UuIE5vdCBhbm5vdGF0ZWQgc2hvdWxkIGJlIGNvZGUgcGF0aHMgdGhhdCBvbmx5Cj4gPiBjb21w
bGV0ZSBmZW5jZXMgb3Bwb3J0dW5pc3RpY2FsbHkgYXMgdGhlIGdwdSBwcm9ncmVzc2VzLCBsaWtl
IGUuZy4KPiA+IHNocmlua2VyL2V2aWN0aW9uIGNvZGUuCj4gPiAKPiA+IFRoZSBtYWluIGNsYXNz
IG9mIGRlYWRsb2NrcyB0aGlzIGlzIHN1cHBvc2VkIHRvIGNhdGNoIGFyZToKPiA+IAo+ID4gVGhy
ZWFkIEE6Cj4gPiAKPiA+ICAgICAgICAgbXV0ZXhfbG9jayhBKTsKPiA+ICAgICAgICAgbXV0ZXhf
dW5sb2NrKEEpOwo+ID4gCj4gPiAgICAgICAgIGRtYV9mZW5jZV9zaWduYWwoKTsKPiA+IAo+ID4g
VGhyZWFkIEI6Cj4gPiAKPiA+ICAgICAgICAgbXV0ZXhfbG9jayhBKTsKPiA+ICAgICAgICAgZG1h
X2ZlbmNlX3dhaXQoKTsKPiA+ICAgICAgICAgbXV0ZXhfdW5sb2NrKEEpOwo+ID4gCj4gPiBUaHJl
YWQgQiBpcyBibG9ja2VkIG9uIEEgc2lnbmFsbGluZyB0aGUgZmVuY2UsIGJ1dCBBIG5ldmVyIGdl
dHMgYXJvdW5kCj4gPiB0byB0aGF0IGJlY2F1c2UgaXQgY2Fubm90IGFjcXVpcmUgdGhlIGxvY2sg
QS4KPiA+IAo+ID4gTm90ZSB0aGF0IGRtYV9mZW5jZV93YWl0KCkgaXMgYWxsb3dlZCB0byBiZSBu
ZXN0ZWQgd2l0aGluCj4gPiBkbWFfZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcgc2VjdGlvbnMu
IFRvIGFsbG93IHRoaXMgdG8gaGFwcGVuIHRoZQo+ID4gcmVhZCBsb2NrIG5lZWRzIHRvIGJlIHVw
Z3JhZGVkIHRvIGEgd3JpdGUgbG9jaywgd2hpY2ggbWVhbnMgdGhhdCBhbnkKPiA+IG90aGVyIGxv
Y2sgaXMgYWNxdWlyZWQgYmV0d2VlbiB0aGUgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKSBj
YWxsIGFuZAo+ID4gdGhlIGNhbGwgdG8gZG1hX2ZlbmNlX3dhaXQoKSwgYW5kIHN0aWxsIGhlbGQs
IHRoaXMgd2lsbCByZXN1bHQgaW4gYW4KPiA+IGltbWVkaWF0ZSBsb2NrZGVwIGNvbXBsYWludC4g
VGhlIG9ubHkgb3RoZXIgb3B0aW9uIHdvdWxkIGJlIHRvIG5vdAo+ID4gYW5ub3RhdGUgc3VjaCBj
YWxscywgZGVmZWF0aW5nIHRoZSBwb2ludC4gVGhlcmVmb3JlIHRoZXNlIGFubm90YXRpb25zCj4g
PiBjYW5ub3QgYmUgc3ByaW5rbGVkIG92ZXIgdGhlIGNvZGUgZW50aXJlbHkgbWluZGxlc3MgdG8g
YXZvaWQgZmFsc2UKPiA+IHBvc2l0aXZlcy4KPiA+IAo+ID4gdjI6IGhhbmRsZSBzb2Z0L2hhcmRp
cnEgY3R4IGJldHRlciBhZ2FpbnN0IHdyaXRlIHNpZGUgYW5kIGRvbnQgZm9yZ2V0Cj4gPiBFWFBP
UlRfU1lNQk9MLCBkcml2ZXJzIGNhbid0IHVzZSB0aGlzIG90aGVyd2lzZS4KPiA+IAo+ID4gQ2M6
IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+ID4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwo+ID4gQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCj4gPiBDYzogYW1k
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KPiA+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNv
bT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDUzICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS5oICAgfCAxMiArKysrKysrKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDY1IGluc2VydGlvbnMo
KykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+ID4gaW5kZXggNjgwMjEyNTM0OWZiLi5kNWMwZmQy
ZWZjNzAgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKPiA+ICsr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+ID4gQEAgLTExMCw2ICsxMTAsNTIgQEAg
dTY0IGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKHVuc2lnbmVkIG51bSkKPiA+ICB9Cj4gPiAgRVhQ
T1JUX1NZTUJPTChkbWFfZmVuY2VfY29udGV4dF9hbGxvYyk7Cj4gPiAgCj4gPiArI2lmZGVmIENP
TkZJR19MT0NLREVQCj4gPiArc3RydWN0IGxvY2tkZXBfbWFwICAgICBkbWFfZmVuY2VfbG9ja2Rl
cF9tYXAgPSB7Cj4gPiArICAgICAgIC5uYW1lID0gImRtYV9mZW5jZV9tYXAiCj4gPiArfTsKPiAK
PiBOb3QgYW5vdGhlciBmYWxzZSBnbG9iYWwgc2hhcmluZyBsb2NrbWFwLgoKSXQncyBhIGdsb2Jh
bCBjb250cmFjdCwgaXQgbmVlZHMgYSBnbG9iYWwgbG9ja2RlcCBtYXAuIEFuZCB5ZXMgYSBiaWcK
cmVhc29uIGZvciB0aGUgbW90aXZhdGlvbiBoZXJlIGlzIHRoYXQgaTkxNS1nZW0gaGFzIGEgdHJl
bWVuZG91cyB1cmdlIHRvCmp1c3QgcmVkZWZpbmUgYWxsIHRoZXNlIGdsb2JhbCBsb2NrcyB0byBm
aXQgdG8gc29tZSBsb2NhbCBpbnRlcnByZXRhdGlvbgpvZiB3aGF0J3MgZ29pbmcgb24uCgpUaGF0
IGRvZXNuJ3QgbWFrZSB0aGUgcmVzdWx0aW5nIHJlYWwmZXhpc3RpbmcgZGVhZGxvY2tzIGdvIGF3
YXkuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
